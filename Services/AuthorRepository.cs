using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Services
{
    class AuthorRepository : IAuthorsRepository
    {
        public ObservableCollection<Author> GetAuthorMessagesAsync()
        {
            ObservableCollection<Author> authors = new ObservableCollection<Author>();

            List<String> server = ConfigurationManager.AppSettings["url"].ToString().Split(',').ToList<String>();
            String apiKey = ConfigurationManager.AppSettings["api-key"].ToString();
            foreach (String val in server)
            {
                String url = val;

                HttpClient client = new HttpClient();
                client.DefaultRequestHeaders.Add("x-api-key", apiKey);
                var result = client.GetAsync(url).Result;
                if (result.IsSuccessStatusCode)
                {
                    var stopWatch = System.Diagnostics.Stopwatch.StartNew();
                    String json = client.GetStringAsync(url).Result;
                    stopWatch.Stop();
                    var elapsedTime = stopWatch.ElapsedMilliseconds;

                    Author author = JsonConvert.DeserializeObject<Author>(json);
                    author.Time = elapsedTime + " ms";
                    String statusCode = result.StatusCode.ToString() + " (" + (int)result.StatusCode + ")";
                    author.ResponseCode = statusCode;
                    authors.Add(author);
                }
                else
                {
                    Author author = new Author();
                    author.Message = null;
                    author.ResponseCode = result.StatusCode.ToString();
                    author.Time = "0 ms";
                    authors.Add(author);
                }

            }

            return authors;
        }
    }
}

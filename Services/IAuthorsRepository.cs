using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Services
{
    public interface IAuthorsRepository
    {
        ObservableCollection<Author> GetAuthorMessagesAsync();
    }
}

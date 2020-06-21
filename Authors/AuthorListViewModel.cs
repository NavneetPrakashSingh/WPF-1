using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApp1.Services;

namespace WpfApp1.Authors
{
	class AuthorListViewModel
	{
		private IAuthorsRepository authorRepository = new AuthorRepository();
		private ObservableCollection<Author> authorCollection;

		public AuthorListViewModel()
		{
			authorObj = new ObservableCollection<Author>(authorRepository.GetAuthorMessagesAsync());
		}

		public ObservableCollection<Author> authorObj
		{
			get
			{
				return authorCollection;
			}
			set
			{
				authorCollection = value;
			}
		}
	}
}

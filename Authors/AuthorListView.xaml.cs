using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using WpfApp1.Authors;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for AuthorListView.xaml
    /// </summary>
    public partial class AuthorListView : UserControl
    {
        DispatcherTimer dispatcherTimer;
        public AuthorListView()
        {
            InitializeComponent();

        }

        private void Refresh_Clicked(object sender, MouseButtonEventArgs e)
        {
            AuthorListViewModel refresh = new AuthorListViewModel();
            this.customerDataGrid.ItemsSource = null;
            this.customerDataGrid.ItemsSource = refresh.authorObj;
            this.MessageToast.Text = "Data Refreshed Successfully!";

            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 4);
            this.MessageToast.Visibility = Visibility.Visible;
            dispatcherTimer.Start();
        }

        private void Help_Clicked(object sender, MouseButtonEventArgs e)
        {
            this.MessageToast.Text = "Help Section: In case you missed it , click on refresh above to check the message, response status and time taken by the APIs. ";
            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 4);
            this.MessageToast.Visibility = Visibility.Visible;
            dispatcherTimer.Start();
        }

        private void About_Clicked(object sender, MouseButtonEventArgs e)
        {
            this.MessageToast.Text = "About Section: A WPF application that retrieves the data from the mentioned APIs and displays the message, response status and response time for the application. Developed by Navneet Singh";
            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 4);
            this.MessageToast.Visibility = Visibility.Visible;
            dispatcherTimer.Start();
        }

        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            this.MessageToast.Visibility = Visibility.Collapsed;
            dispatcherTimer.IsEnabled = false;
        }
    }
}

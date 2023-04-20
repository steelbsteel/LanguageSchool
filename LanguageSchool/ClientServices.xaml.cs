using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LanguageSchool
{
    /// <summary>
    /// Логика взаимодействия для ClientServices.xaml
    /// </summary>
    public partial class ClientServices : Window
    {
        public ClientServices()
        {
            InitializeComponent();

            ClientServicesList.ItemsSource = App.Connection.ClientService.ToList().Where(x => x.StartTime >= DateTime.Now && x.StartTime < DateTime.Now.AddDays(2));
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            var mainWinodow = new Main();
            this.Close();
            mainWinodow.Show();
        }
    }
}

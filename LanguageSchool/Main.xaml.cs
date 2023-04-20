using LanguageSchool.DB;
using System;
using System.Collections.Generic;
using System.ComponentModel;
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
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Window
    {
        public Main()
        {
            InitializeComponent();

            btnLV.ItemsSource = App.Connection.Service.ToList().Where(x => x.ID == 1);
        }

        private void ServicesBtn_Click(object sender, RoutedEventArgs e)
        {
            var ServicesWindow = new ServicesWindow();
            this.Close();
            ServicesWindow.Show();
        }

        private void ClientServiceBtn_Click(object sender, RoutedEventArgs e)
        {
            var clientServices = new ClientServices();
            this.Close();
            clientServices.Show();
        }
    }
}

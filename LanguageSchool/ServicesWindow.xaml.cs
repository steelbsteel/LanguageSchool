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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LanguageSchool
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class ServicesWindow : Window
    {
        public List<Service> ModifiedServices { get; set; }
        public List<Service> AllServices { get; set; }
        public ServicesWindow()
        {
            InitializeComponent();
            AllServices = App.Connection.Service.ToList();
            btnLB.ItemsSource = App.Connection.Service.ToList().Where(x => x.ID == 1);
            ModifiedServices = AllServices;
            ServicesListView.ItemsSource = AllServices;
        }

        private void cbSortPriceSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SortPrice();
        }

        private void SortPrice()
        {
            if (ServicesListView == null)
            {
                return;
            }

            ComboBoxItem item = (ComboBoxItem)cbSortPrice.SelectedItem;
            string selectedSortText = item.Content.ToString();

            switch (selectedSortText)
            {
                case "По возрастанию":
                    ServicesListView.ItemsSource = ModifiedServices.OrderBy(x => x.Cost);
                    break;

                case "По убыванию":
                    ServicesListView.ItemsSource = ModifiedServices.OrderByDescending(x => x.Cost);
                    break;

                default:
                    ServicesListView.ItemsSource = ModifiedServices;
                    break;
            }
        }
        private void CodeTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (CodeTB.Text == "0000")
            {
                App.isAdminMode = true;
                var main = new Main();
                this.Close();
                main.Show();
            }

            ModifiedServices = AllServices.Where(x => x.Title.ToLower().Contains(CodeTB.Text.ToLower())).ToList();

            ServicesListView.ItemsSource = ModifiedServices;
            SortPrice();
        }

        private void UpdateBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ServicesListView.SelectedItem != null)
            {
                Service selectedService = ServicesListView.SelectedItem as Service;
                UpdateService window = new UpdateService(selectedService);
                window.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Выберите услугу", "Ошибка", MessageBoxButton.OK);
            }
        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ServicesListView.SelectedItem != null)
            {
                var result = MessageBox.Show("Вы уверены что хотите удалить услугу?", "Внимание", MessageBoxButton.OKCancel);
                if (result == MessageBoxResult.OK)
                {
                    Service selectedService = ServicesListView.SelectedItem as Service;
                    App.Connection.Service.Remove(selectedService);
                    App.Connection.SaveChanges();
                }
            }

            
            else
            {
                MessageBox.Show("Выберите услугу", "Ошибка", MessageBoxButton.OK);
            }
            
        }

        private void DiscountCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            if (ServicesListView == null)
            {
                return;
            }

            ComboBoxItem item = (ComboBoxItem)DiscountCB.SelectedItem;
            string selectedSortText = item.Content.ToString();

            switch (selectedSortText)
            {
                case "от 0 до 5%":
                    ServicesListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.Discount < 5);
                    break;

                case "от 5 до 15%":
                    ServicesListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.Discount >= 5 && x.Discount < 15);
                    break;

                case "от 15 до 30%":
                    ServicesListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.Discount >= 15 && x.Discount < 30);
                    break;

                case "от 30 до 70%":
                    ServicesListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.Discount >= 30 && x.Discount < 70);
                    break;

                case "от 70 до 100%":
                    ServicesListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.Discount >= 70 && x.Discount < 100);
                    break;      
            }
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            var main = new Main();
            this.Close();
            main.Show();
        }

        private void ClientRecordCreateBtn_Click(object sender, RoutedEventArgs e)
        {

            if (ServicesListView.SelectedItem != null)
            {
                var window = new ClientServiceRecord(ServicesListView.SelectedItem as Service);
                this.Close();
                window.Show();
            }
            else
            {
                MessageBox.Show("Выберите услугу", "Ошибка", MessageBoxButton.OK);
            }
        }

        private void CreateServiceBtn_Click(object sender, RoutedEventArgs e)
        {
            var window = new AddService();
            this.Close();
            window.Show();
        }
    }
}

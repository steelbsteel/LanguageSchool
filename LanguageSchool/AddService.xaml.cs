using DocumentFormat.OpenXml.Office2013.Excel;
using LanguageSchool.DB;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.IO;
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
    /// Логика взаимодействия для AddService.xaml
    /// </summary>
    public partial class AddService : Window
    {
        public AddService()
        {
            InitializeComponent();
        }

        private void UpdateImgBtn_Click(object sender, RoutedEventArgs e)
        {
            var window = new OpenFileDialog();

            if (window.ShowDialog() != true)
            {
                MessageBox.Show("Изображение не выбрано");
                return;
            }

            else
            {
                ImageService.Source = new BitmapImage(new Uri(window.FileName, UriKind.Absolute));
                Path.Text = window.FileName;
                MessageBox.Show("Изображение успешно добавлено", "Успех", MessageBoxButton.OK);
            }
        }

        private void CreateSeviceBtn(object sender, RoutedEventArgs e)
        {
            Service _service = new Service();
            if (string.IsNullOrWhiteSpace(TitleTB.Text) ||
                string.IsNullOrWhiteSpace(CostTB.Text) ||
                string.IsNullOrWhiteSpace(Duration.Text) ||
                string.IsNullOrWhiteSpace(Path.Text) ||
                Convert.ToInt32(CostTB.Text) <= 0|| Convert.ToInt32(Duration.Text) <= 0)
            {
                MessageBox.Show("Заполните данные!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            else
            {
                _service.Title = TitleTB.Text;
                _service.Cost = Convert.ToInt32(CostTB.Text);
                _service.DurationInSeconds = Convert.ToInt32(Duration.Text);
                _service.MainImagePath = Path.Text;
                if (string.IsNullOrWhiteSpace(DiscountTB.Text))
                {
                    _service.Discount = 0;
                }
                else
                {
                    _service.Discount = Convert.ToInt32(DiscountTB.Text);
                }
                _service.Description = DescriptionTB.Text;
            }
            var res = App.Connection.Service.FirstOrDefault(x => x.Title== _service.Title);
            if (res != null)
            {
                MessageBox.Show("Услуга с таким названием уже существует!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            
            if (_service.DurationInSeconds * 1.0 / 3600 > 4)
            {
                MessageBox.Show("Услуга с протяженностью более 4 часов не может быть создана!!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            App.Connection.Service.Add(_service);
            App.Connection.SaveChanges();
            MessageBox.Show("Услуга успешно создана", "Успех", MessageBoxButton.OK);
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            var window = new ServicesWindow();
            this.Close();
            window.Show();
        }
    }
}

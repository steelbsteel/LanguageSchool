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
using static System.Net.Mime.MediaTypeNames;

namespace LanguageSchool
{
    /// <summary>
    /// Логика взаимодействия для UpdateService.xaml
    /// </summary>
    public partial class UpdateService : Window
    {
        public Service _service;
        public UpdateService(Service service)
        {
            InitializeComponent();
            _service = service;
            ServiceListView.ItemsSource = App.Connection.Service.ToList().Where(x => x.ID == service.ID);
            IdTB.Text = service.ID.ToString();
            AddictionalImagesLV.ItemsSource = App.Connection.ServicePhoto.ToList().Where(x => x.ServiceID == Convert.ToInt32(IdTB.Text));
        }

        private void UpdateBtn_Click(object sender, RoutedEventArgs e)
        {
            App.Connection.Service.AddOrUpdate(_service);
            App.Connection.SaveChanges();

            MessageBox.Show("Услуга успешно сохранена!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);

            ServicesWindow window = new ServicesWindow();
            window.Show();
            this.Close();
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            ServicesWindow window = new ServicesWindow();
            window.Show();
            this.Close();
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
                Service _service = App.Connection.Service.ToList().Find(x => x.ID == Convert.ToInt32(IdTB.Text)) as Service;
                _service.MainImagePath = window.FileName;
                App.Connection.Service.AddOrUpdate(_service);
                App.Connection.SaveChanges();
                MessageBox.Show("Изображение успешно обновлено","Успех", MessageBoxButton.OK);
                var updWindow = new UpdateService(_service);
                this.Close();
                updWindow.Show();
            }
        }

        private void AddAddictionalImgBtn_Click(object sender, RoutedEventArgs e)
        {
            var window = new OpenFileDialog();

            if (window.ShowDialog() != true)
            {
                MessageBox.Show("Изображение не выбрано");
                return;
            }

            else
            {
                ServicePhoto _servicePhoto = new ServicePhoto();

                _servicePhoto.PhotoPath = window.FileName;
                _servicePhoto.ServiceID = Convert.ToInt32(IdTB.Text);
                App.Connection.ServicePhoto.Add(_servicePhoto);
                App.Connection.SaveChanges();
                MessageBox.Show("Изображение успешно обновлено", "Успех", MessageBoxButton.OK);
                var updWindow = new UpdateService(_service);
                this.Close();
                updWindow.Show();
            }
        }
    }
}

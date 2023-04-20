﻿using LanguageSchool.DB;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LanguageSchool
{
    /// <summary>
    /// Логика взаимодействия для ClientServiceRecord.xaml
    /// </summary>
    public partial class ClientServiceRecord : Window
    {
        private Service _service;
        public ClientServiceRecord(Service service)
        {
            InitializeComponent();

            _service = service;
            cbClients.ItemsSource = App.Connection.Client.ToList();
            this.DataContext = _service;
        }

        private void BtnAddRecordClick(object sender, RoutedEventArgs e)
        {
            if (cbClients.SelectedItem == null)
            {
                MessageBox.Show(messageBoxText: "Укажите клиента!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            DateTime parsedTime;
            DateTime.TryParse(tbTime.Text, out parsedTime);

            if (parsedTime == DateTime.MinValue || startDatePicker.SelectedDate == null)
            {
                MessageBox.Show(messageBoxText: "Данные даты или времени не корректны!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var hours = parsedTime.Hour;
            var minutes = parsedTime.Minute;

            ClientService clientService = new ClientService()
            {
                Client = cbClients.SelectedItem as Client,
                Service = _service,
                Comment = tbComment.Text,
                StartTime = (startDatePicker.SelectedDate).Value.AddHours(hours).AddMinutes(minutes)
            };

            App.Connection.ClientService.Add(clientService);
            App.Connection.SaveChanges();

            MessageBox.Show(messageBoxText: "Клиент записан", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
            var main = new Main();
            this.Close();
            main.Show();
        }

        private void GoBackBtn_Click(object sender, RoutedEventArgs e)
        {
            var window = new ServicesWindow();
            this.Close();
            window.Show();
        }
    }
}

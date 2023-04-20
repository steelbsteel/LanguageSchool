using LanguageSchool.DB;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace LanguageSchool
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static SessionDBEntities1 Connection = new SessionDBEntities1();

        public static bool isAdminMode = false;

        public static Visibility IsAdminModeVisible = isAdminMode ? Visibility.Visible : Visibility.Hidden;
    }
}

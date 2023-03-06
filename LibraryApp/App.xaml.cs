using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using LibraryApp.Model;

namespace LibraryApp
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static ValiullinLibraryEntities libraryEntities = new ValiullinLibraryEntities();
        public static Reader loggedReader = new Reader();
        public static Employee LoggedEmployee = new Employee();
    }
}

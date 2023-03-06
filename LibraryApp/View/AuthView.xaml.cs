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
using LibraryApp.Model;

namespace LibraryApp.View
{
    /// <summary>
    /// Логика взаимодействия для AuthView.xaml
    /// </summary>
    public partial class AuthView : Page
    {
        public AuthView()
        {
            InitializeComponent();
        }

        private void LoginBtn_Click(object sender, RoutedEventArgs e)
        {
            var reader = App.libraryEntities.Reader.FirstOrDefault(r => r.PnoneNumber == LoginTb.Text);
            var staff = App.libraryEntities.Employee.FirstOrDefault(s => s.PhoneNumber == LoginTb.Text);

            if (reader != null)
            {
                App.loggedReader = reader;
                MessageBox.Show("Succsesfull authorisation,\u5350" + reader.Name);
                NavigationService.Navigate(new ReaderPage());
            }

           else

            if (staff != null)
            {
                App.LoggedEmployee = staff;
                switch (staff.PositionId)
                {
                    case (1):
                        MessageBox.Show("Succsesfull authorisation,\u5350" + reader.Name);
                        break;
                    case (2):
                        MessageBox.Show("Succsesfull authorisation,\u5350" + reader.Name);
                        break;
                }
            }
            else
                MessageBox.Show("No matching user");
        }
    }
}

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
    /// Логика взаимодействия для ReaderPage.xaml
    /// </summary>
    public partial class ReaderPage : Page
    {
        List<Book> booksBuscket = new List<Book>();
        public ReaderPage()
        {
            InitializeComponent();
        }
        private void Refresh()
        {
            var filterd = App.libraryEntities.Book.ToList();

            BookLV.ItemsSource = filterd.ToList();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void BookLV_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            booksBuscket.Add(BookLV.SelectedItem as Book);
        }

        private void DropFilterBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void IssueBooksBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void DeleteFromBuscketBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}

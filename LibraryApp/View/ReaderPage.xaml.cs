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
        BookIssue contextBookIssue = new BookIssue() { ReaderID = App.loggedReader.ID, IssueDate = DateTime.Now };
        List<BookIssue> booksBuscket = new List<BookIssue>();
        public ReaderPage()
        {
            InitializeComponent();
        }
        private void Refresh()
        {
            var filterd = App.libraryEntities.Book.ToList();
            var genre = GenreCb.SelectedItem as Genre;

            if (string.IsNullOrWhiteSpace(SearchTb.Text) != true)
                filterd = filterd.Where(f => f.Name.ToLower() == SearchTb.Text.ToLower()).ToList();
            if (GenreCb.SelectedItem != null)
                filterd = filterd.Where(f => f.GenreId == genre.ID).ToList();

            BookLV.ItemsSource = filterd.ToList();
            BuscketDg.ItemsSource = booksBuscket.ToList();
            EmployeeCb.ItemsSource = App.libraryEntities.Employee.ToList();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            Refresh();
        }

        private void BookLV_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (EmployeeCb.SelectedItem == null)
            {
                MessageBox.Show("Не выбран сотрудник выдающий книгу");
                return;
            }
            if (ReturnDateDp.SelectedDate == null)
            {
                MessageBox.Show("No date picked");
                return;
            }

            if (ReturnDateDp.SelectedDate >= DateTime.Now)
            {
                MessageBox.Show("Wrong date picked");
                return;
            }
            var contexEmployee = EmployeeCb.SelectedItem as Employee;
            booksBuscket.Add(new BookIssue
            {
                Book = BookLV.SelectedItem as Book,
                ReaderID = App.loggedReader.ID,
                EmployeeId = contexEmployee.ID,
                IssueDate = DateTime.Now,
                ReturnDate = ReturnDateDp.SelectedDate,
                StatusId = 1

            }
            ) ; 
            Refresh();
        }

        private void DropFilterBtn_Click(object sender, RoutedEventArgs e)
        {
            if (EmployeeCb.SelectedItem == null)
            {
                MessageBox.Show("Не выбран сотрудник выдающий книгу");
                return;
            }
            SearchTb.Text = null;
            GenreCb.SelectedItem = null;
        }

        private void IssueBooksBtn_Click(object sender, RoutedEventArgs e)
        {
            

            App.libraryEntities.BookIssue.AddRange(booksBuscket);
            App.libraryEntities.SaveChanges();
        }

        private void DeleteFromBuscketBtn_Click(object sender, RoutedEventArgs e)
        {
            booksBuscket.Remove(BuscketDg.SelectedItem as BookIssue);
        }

        private void HistoryBtn_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("\u5350");
            NavigationService.Navigate(new IssueHistoryView());
        }
    }
}

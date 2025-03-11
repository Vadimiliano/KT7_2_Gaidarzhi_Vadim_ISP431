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

namespace MasterPolApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddOrEditPage.xaml
    /// </summary>
    public partial class AddOrEditPage : Page
    {
        public AddOrEditPage()
        {
            InitializeComponent();
            TypeComboBox.ItemsSource = Data.PartnerBDEntities.GetContext().PartnerType.ToList();
        }

        private void GoBackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.ListPage());

        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();
                if (string.IsNullOrEmpty(NameTextBox.Text))
                {
                    errors.AppendLine("Введите наименование");
                } 
                if (string.IsNullOrEmpty(TypeComboBox.Text))
                {
                    errors.AppendLine("Ввыберите тип партнера");
                } 
                if (string.IsNullOrEmpty(RatingTextBox.Text))
                {
                    errors.AppendLine("Введите рейтинг");
                } 
                if (string.IsNullOrEmpty(DirectorNameTextBox.Text))
                {
                    errors.AppendLine("Введите ФИО директора");
                } 
                if (string.IsNullOrEmpty(PhoneNumberTextBox.Text))
                {
                    errors.AppendLine("Введите номер телефона");
                } 
                if (string.IsNullOrEmpty(EmailTextBox.Text))
                {
                    errors.AppendLine("Введите email");
                }
                if (string.IsNullOrEmpty(IndexTextBox.Text))
                {
                    errors.AppendLine("Введите индекс");
                }
                if (string.IsNullOrEmpty(AreaTextBox.Text))
                {
                    errors.AppendLine("Введите область");
                }
                if (string.IsNullOrEmpty(CityTextBox.Text))
                {
                    errors.AppendLine("Введите город");
                }
                if (string.IsNullOrEmpty(StreetTextBox.Text))
                {
                    errors.AppendLine("Введите улицу");
                }
                if (string.IsNullOrEmpty(HousNumTextBox.Text))
                {
                    errors.AppendLine("Введите номер дома");
                }

                if(errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    MessageBox.Show("Заявка в рассмотрении. Данные будут добавленны в течении 10 рабочих дней", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
                    Classes.Manager.MainFrame.Navigate(new Pages.ListPage());
                }


            }
            catch
            {
                MessageBox.Show("Ошибка!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }
    }
}

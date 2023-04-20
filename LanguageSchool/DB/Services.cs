using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;
using System.Windows;

namespace LanguageSchool.DB
{
    public partial class Service
    {
        public Brush ServiceBackground => Discount > 0 ? Brushes.LightGreen : Brushes.Transparent;
        public Visibility IsHaveDiscount => Discount > 0 ? Visibility.Visible : Visibility.Collapsed;
        public decimal CostWithDiscount => Discount > 0 ? Cost - Cost * (decimal)Discount / 100 : Cost;
        public string DurationInMinutes => DurationInSeconds == 0 ? "" : $"{DurationInSeconds / 60} минут";
        public string DiscountDisplay => Discount == null || Discount == 0 ? "" : $"* скидка {Discount}%";
        public Visibility AdminVisibility => App.isAdminMode ? Visibility.Visible : Visibility.Collapsed;
    }
}

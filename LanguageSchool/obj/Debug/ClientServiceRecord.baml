   M S B A M L   `   `   `  ����I  ELanguageSchool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LanguageSchoolLanguageSchool  5   	   (    "LanguageSchool.ClientServiceRecord   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LanguageSchool     5   	     � Title$  ClientServiceRecord��5   	   $	��720��6%   $
��1280��62   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $��3* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $��3* �6   .+�5   
   �� -   5         ��Name$ 	GoBackBtn��5      $��
Назад��6$   $
��Left=�64   $	��Top=�6O   $��15q�6g   6�   �� 5   
   $��1��6   $��0��6"   .+�5      �� $��Название��6   $��40��6(   66   �� 5      $4��.Длительность (в секундах)��6   $��40��69   6G   �� 5      $��Клиент��6   $��0 7 0 0q�6&   $��40��67   6E   �� 5      $��Дата��6   $��0 7 0 0q�6$   $��40��65   6C   �� 5      $��
Время��6   $��0 3 0 0q�6%   $��40��66   6D   �� 5      $��Комментарий��6   $��0 0 0 0q�6+   $��40��6<   6J   5      �� 5   
   $��1��6   $��1��6"   .+�5      �� -   5         ��Name$ tbName��5       �� 
IsReadOnly . $��40��6O   ��6&   �� *Title+6]   �� 5       -   5        $ 
tbDuration��5       $��40��6M    . ��6*   �� *DurationInSeconds+6m   �� 5!      -   5         ��Name$ 	cbClients��5!      $��40��6*   ��5"      �� 5#      .R�5$      ��  �� Orientation$ 
Horizontal=�6%   .+�5%      �� ��6(   �� *
LastName+�� 5&      ��6(   �� *	FirstName+�� 5'      ��6(   �� *
Patronymic+5(      5)      5+      (  "System.Windows.Controls.DatePicker  5,      -   5          Name$ startDatePicker��5,   %   $��40��6   6@   �� 5-      -   5        $��tbTime��5-   "   $��40��6   62   �� 5.      -   5        $ 	tbComment��5.   "   $��40��6   67   5/      �� 51   
   $��2��6   $��1��6"   $��Center=�62   .+�52      �� -   5        $��btnAddRecord��52   /   $#��Добавить запись��6   6_   53      54      55      
   M S B A M L   `   `   `  ����I  ELanguageSchool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LanguageSchoolLanguageSchool  5   	   #    LanguageSchool.ClientServices   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LanguageSchool     5   	     � Title$  ClientServices��5   	   $	��720��6    $
��1280��6-   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $	��10* �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��10* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 	GoBackBtn��5      $��
Назад��6(   $
��Left=�68   $	��Top=�6S   $��15q�6k   6�   �� 5      $��Center=�6   $��Center=�63   $��	400 0 0 0q�6P   $#��Записи клиентов��6c   $��30(�6z   6�   5      �� 5   
   -   5         ��Name$ ClientServicesList��5   <   $��10q�6   $��1��6   $��1��6,   ��5      �� 5      .R�5      �� .+�5      �� $ 
Horizontal=�6%   .+�5      �� $��Услуга:��6(   69   �� 5      ��6(   ��  �� Path$ Service.Title�6N   5      �� 5      $ 
Horizontal=�6%   .+�5       �� $��ФИО клиента:��6(   6>   �� 5!      ��5"   "   `� 5#   &    �� StringFormat$ {0} {1} {2}��63   .1�5$   *   �� $ Client.FirstName�62   6L   �� 5%   *   $ Client.LastName�62   6K   �� 5&   *   $ Client.Patronymic�62   6M   5'   '   5)      5*      �� 5,      $ 
Horizontal=�6%   .+�5-      �� $"��Номер телефона:��6(   6A   �� 5.      ��6(   �� $ Client.Phone�6M   5/      �� 52      $ 
Horizontal=�6%   .+�53      �� $��Почта:��6(   68   �� 54      ��6(   �� $ Client.Email�6M   55      �� 58      $ 
Horizontal=�6%   .+�59      �� $��Дата записи:��6(   6>   �� 5:      ��6(   �� $ 	StartTime�$ dd.MM.yyyy hh:mm��6k   5;      �� 5<      5=      5>      5@      5A      5B      
   M S B A M L   `   `   `  ����I  ELanguageSchool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LanguageSchoolLanguageSchool  5   	       LanguageSchool.AddService   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LanguageSchool     5   	     � Title$  
AddService��5   	   $	��720��6   $
��1280��6)    � WindowState$ 	Maximized=�5	   	   .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5      $��8* �6   �� 5       � RowDefinitions 5   
   �� 5      $	��95* �6   �� 5      $
��306* �6   �� 5      $
��303* �6   .+�5   
   �� $��Center=�6   $��51��60   .+�5      �� -   5         ��Name$ 	GoBackBtn��5      $��
Назад��6(   $��10q�68   6^   5      �� 5   
   $��0��6   $��1��6"   $��3��62   .+�5      �� $#��Создание услуги��6   $��Center=�6/   $��30(�6L   $��35q�6Z   6h   5      �� 5   
   -   5         ��Name$
 IdTB��5       �� 
IsReadOnly . $y�Hidden=�62   6H   �� 5   
   $��1��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��Center=�6K   .+�5      �� $ Vertical=�6   $
��Left=�60   .+�5       �� $��Название��6   6.   �� 5!      -   5        $ TitleTB��5!      ��6+   ��  �� Path$ Title�6I   �� 5"      $��Цена��6   6*   �� 5#      -   5        $ CostTB��5#      ��6*   �� $
 Cost�6G   �� 5$      $��Скидка (%)��6   60   �� 5%      -   5        $ 
DiscountTB��5%      ��6.   �� $ Discount�6O   �� 5&      $/��)Длительность (секунды)��6   6<   �� 5'      -   5        $ Duration��5'      ��6,   �� $ DurationInSeconds�6V   �� 5(      $��Описание��6   6.   �� 5)      -   5        $ DescriptionTB��5)      ��61   �� $ DurationInSeconds�6[   �� 5*      -   5        $ CreateServiceBtn��5*   >   $	��150��6   $!��Создать услугу��6%   $��10q�6X   $��Center=�6d   6�   �� 5+      -	   5        $
 Path��5+      $y�Hidden=�6(    . 6P   5,      �� 5-      $��Right=�6   $��30q�65   $ 
Horizontal=�6A   $��1��6Z   $��1��6j   .+�5.      �� -
   5        	 ��Name$	 ImageService��5.      $	��300��6U   $	��250��6a   ��6.   �� $ MainImagePath�6p   �� 5/      -   5        $ UpdateImgBtn��5/   M   $	��190��6   $��30��6%   $'��!Обновить картинку��61   $��10q�6c   $��Center=�6o   6�   50      51      52      53      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5      1clr-namespace:WpfApp1.AuthorsWpfApp1.Authors  5          WpfApp1.AuthorListView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      .custclr-namespace:WpfApp1.Authors     5        � DataContext  5
      )  #WpfApp1.Authors.AuthorListViewModel  5   
   .��5      �� .+�5   
   �    	MenuColor#���   6    � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   �� 5      $��* �6#    � RowDefinitions 5      �� 5      $��2* �6    �� 5      $��2* �6    .+�5      �� ���#2f5cb66   �� 5      $��1��6   $��2��6"   #���   66   �� 5      -   5        
�������#���   5   +   $��14(�6T   $��Refresh ��6b   $��0��6r   $��0��6    �� Padding$ 5q�6�   6�   �� 5      -   5        
�������$��14(�5   +   $�� Help��69   $��0��6F   $��1��6S   $ 5q�6c   6�   �� 5      -   5        
�������$��14(�5   +   $�� About��69   $��0��6G   $��2��6T   $ 5q�6d   6�   �� 5      -   5         ��Name$ MessageToast��5   9   $
��Auto��6   $
��Wrap=�6%   
�������  SubMenuColor#���  6b   $��3��6�   $��Stretch=�6�   $��14(�6�   $��Loading Please Wait...��6�   $��1��6�   $ 5q�6�   $y�	Collapsed=�6  6  5      � 5    
   .+�5"      &   System.Windows.Controls.DataGrid  -   5          Name$ customerDataGrid��5"         AutoGenerateColumns .     CanUserAddRows .     EnableRowVirtualization . 	   RowDetailsVisibilityMode$	 VisibleWhenSelected=�5'      ��5&      �� 
 �� Path$
 	authorObj� � 	Resources 5)       �� MergedDictionaries �� Source�� 5*       5+      �� 5,      $ /Theme.xaml?�61   6H   %    5.         Columns 51      0  *System.Windows.Controls.DataGridTextColumn  52      -   5        Message��,  &System.Windows.Controls.DataGridColumn   Header$ Message��54   %      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 55   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 53   %   �� $
 Message�55   %     56      -   5        Response_Code��$ Response Code��58   %   $ * 59   %    57   %   �� $
 ResponseCode�59   %     5:      -   5        Time��$
 Time��5<   %   $ * 5=   %    5;   %   �� $

 Time�5=   %   5?      5@      5A      5D      
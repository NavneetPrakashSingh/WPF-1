   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApp1.AuthorsWpfApp1.Authors  5   K   !clr-namespace:WpfApp1WpfApp1  6�       WpfApp1.MainWindow   6	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    /authorsclr-namespace:WpfApp1.Authors    6K   >d2http://schemas.microsoft.com/expression/blend/2008    6y   %localclr-namespace:WpfApp1    6�   Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    6�   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6!    � WindowStyle$
  None=�6u   � Title$ 
MainWindow��6�  '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      CaptionHeight$ 32Q�6   %  System.Windows.SystemParameters"   WindowResizeBorderThickness   ResizeBorderThickness# Z 6*    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5	      $ 
Theme.xaml?�6%   6;   %    5      .��5      �� .+�5   
   �    
TitleColor#���   6   	 � ColumnDefinitions	 5      �� 5      $
��Auto �6#   �� 5      $��* �6#   �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   �� 5      $
��Auto �6#   .+�5      �� $��0��6   $��22��6$   $��22��6/   $��4q�6;   $��home.png��6F   �� 5      $��1��6   $��4 0 0 0q�6(   $��Center=�69   $��14(�6T   $��RedBricks Project��6b   
���������5      �� 5      
 �� 
TargetType"
 ��6    �� Triggers 5      �� 5       �� Binding 6*   �� *
IsActive+ �� RelativeSource ��  �� AncestorType$ WindowL� �� Value	 False6|   .a�5   "   ��  �� Property � ��  WindowTitleBarInactiveText �� Value# �  6?   5      5      5!      �� 5"      -   5        $��2��5"       �� EdgeMode$ Aliased=�6C     TitleBarButtonStyle#��[ 6d   
�������.��5#      F� $��46��6   $��32��6"   ���Ѐ���� � ?���� 	$��1��6�   ��6B   ��  �� Path$ 
Foreground� �� " ��6�   5$      �� 5%      -   5        $��maximizeButton��5%      $��3��6+   #��[ 6`   
�������.��5&      F� $��46��6   $��32��6"   +����I�7� �����7� ������)ѠI��)	$��1��6�   ��6X   �� $ 
Foreground� �� " ��6�   5'      �� 5(      -   5        $��restoreButton��5(      $��3��6*   #��[ 6_   
�������.��5)      F� $��46��6   $��32��6"   X����I �� �`� �� �`���)ѠI��)� �8 �� � �8�7� �����7� ����`�`�`	$��1��6�   ��6�   �� $ 
Foreground� �� " ��6�   5*      �� 5+      -   5        $��4��5+        TitleBarCloseButtonStyle#��[ 6@   
�������.��5,      F� $��46��6   $��32��6"   +���Ѐ��ا ���� -1Ѐ� -1�����ا 	$��1��6�   ��6Q   �� $ 
Foreground� �� " ��6�   5-      5.         WpfApp1.AuthorListView  5/   
   50      51      
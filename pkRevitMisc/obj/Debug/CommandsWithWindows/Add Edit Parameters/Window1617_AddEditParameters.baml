   M S B A M L   `   `   `  ����M  IpkRevitMisc, Version=1.0.7829.27796, Culture=neutral, PublicKeyToken=nullyAclr-namespace:pkRevitMisc.CommandsWithWindows.Add_Edit_Parameters3pkRevitMisc.CommandsWithWindows.Add_Edit_Parameters  5   	   V    PpkRevitMisc.CommandsWithWindows.Add_Edit_Parameters.Window1617_AddEditParameters   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   SlocalAclr-namespace:pkRevitMisc.CommandsWithWindows.Add_Edit_Parameters     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   -   5          � Title$  Adding shared parameters��5	      $��507.785��6'   $��649.412��68    � 
ResizeMode$ NoResize=�6I   .��5
      � .+�5   
   �� -   5         ��Name$ myListBoxTypeParameters��5      $��-845,191,0,0q�63   $��11(�6I    �� DisplayMemberPath$ theParameterName��6W    �� SelectionMode$ Single=�6�   $
��Left=�6�   $	��200��6�   $	��122��6�   $	��Top=�6  �� 5   
   -   5        $! myListBoxInstanceParameters��5      $��-838,-18,0,0q�67   $��11(�6M   $ theParameterName��6�   $ Single=�6�   $
��Left=�6�   $	��193��6�   $	��142��6�   $	��Top=�6  �� 5   
   $&�� String based Instance Parameters��6   $
��Left=�6;   $	��Top=�6V   $	��160��6n   $��10(�6z   $��-838,-50,0,0q�6�   �� 5   
   $"��String based Type Parameters��6   $
��Left=�67   $	��Top=�6R   $	��141��6j   $��10(�6v   $��-838,140,0,0q�6�   �� 5   
   -   5         ��Name$ myTextBoxPrevious��5      $��-578,-18,0,0q�6-    �� TextWrapping$
 Wrap=�6C   $��1q�6W   $��14(�6k   {�.  $	��142��6�   $	��Top=�6�   $
��Left=�6�   $	��372��6�   �� 5   
   -   5         ��Name$ myButtonSave��5      $
��Save��6'   $
��Left=�66   $��-838,329,0,0q�6Q   $	��Top=�6g   $��76��6   $��20��6�   6�   �� 5   
   -   5        $ myButtonCancel��5      $��Cancel��6)   $
��Left=�6:   $��-744,329,0,0q�6U   $	��Top=�6k   $��76��6�   $��20��6�   6�   �� 5   
   -   5        $ myTextBoxNew��5      $��-578,129,0,0q�6(   $
 Wrap=�6>   $��1q�6R   $��14(�6f   $	��181��6t   $	��Top=�6�    �� AcceptsReturn . 	 �� IsUndoEnabled	 .  {�.  $
��Left=�6�   $	��372��6�   �� 5   
   $��
Element ID��6   $
��Left=�6%   $��
434,13,0,0q�6@   $	��Top=�6T   $��68��6l   �� 5   
   -   5        
 ��Name$
 myLabel_Family��5      $�� ��6(   $
��Left=�63   $��
216,48,0,0q�6N   $	��Top=�6b   $	��312��6z   $��28��6�   �� 5   
   -	   5        $
 myLabel_Type��5      $�� ��6&   $
��Left=�61   $��
216,70,0,0q�6L   $	��Top=�6`   $	��312��6x   $��26��6�   %  Xceed.Wpf.Toolkit.IntegerUpDown  5   
   -
   5          Name$ myIntegerUpDown��5      $
��Left=�66   $��
362,16,0,0q�6Q   $	��Top=�6e   $��72��6}   {�.  �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$ -1X�6�   �� 5   
   -   5        $ myButtonAcquireSelected��5      $��🔄 Acquire Element →��62   $
��Left=�6Q   $��
162,10,0,0q�6l   $	��Top=�6�   $	��178��6�   $��29��6�   $��16(�6�   6�   �� 5   
   $��Instance Parameters��6   $
��Left=�60   $	��265��6K   $��
22,144,0,0q�6X   $	��Top=�6l   $	��290��6�   .��5      � .+�5      �� -   5        $" btn_CategoryInstanceSpecific��5      $
��Left=�6@   $��	22,26,0,0q�6\   $	��Top=�6o   $	��166��6�   $��32��6�   .��5      �� .+�5       �� -   5         ��Name$, &btn_CategoryInstanceSpecific_textBlock��5    $   $��Center=�6T   �� 6r   $
�Add ��6v   �� 6�   $�to Specific Category��6�   6�   5!      5"      �� 5#      -   5        $ btn_CategoryInstanceALL��5#      $
��Left=�6;   $��	22,72,0,0q�6W   $	��Top=�6j   $	��166��6�   $��32��6�   .��5$      �� .+�5%      �� $��Center=�6$   $	��120��6A   �� 6N   $
�Add ��6R   �� 6`   $	�to ��6d   �� 6q   $�A��6u   �� 6�   $�LL��6�   �� 6�   $� Categories��6�   6�   5&      5'      �� 5(      -   5        $&  butView_CategoryInstanceSpecific��5(      $��	👁 View��6C   $
��Left=�6U   $��
198,38,0,0q�6p   $	��Top=�6�   $��54��6�   6�   �� 5)      -   5        $! butView_CategoryInstanceALL��5)      $��	👁 View��6>   $
��Left=�6P   $��
198,84,0,0q�6k   $	��Top=�6   $��54��6�   6�   5*      5+      �� 5,   
   $��Type Parameters��6   $
��Left=�6,   $	��265��6G   $��330,144,0,0q�6T   $	��Top=�6i   $	��290��6�   .��5-      � .+�5.      �� -   5        $ btn_CategoryTypeSpecific��5.      $
��Left=�6<   $��	23,25,0,0q�6W   $	��Top=�6j   $	��166��6�   $��32��6�   .��5/      �� .+�50      �� -   5        $( "btn_CategoryTypeSpecific_textBlock��50   $   $��Center=�6P   �� 6n   $
�Add ��6r   �� 6�   $�to Specific Category��6�   6�   51      52      �� 53      -   5        $ btn_CategoryTypeALL��53      $
��Left=�67   $��	23,71,0,0q�6R   $	��Top=�6e   $	��166��6}   $��32��6�   .��54      �� .+�55      �� $��Center=�6$   �� 6B   $
�Add ��6F   �� 6T   $
�to A��6X   �� 6f   $�LL��6j   �� 6v   $� Categoreis��6z   6�   56      57      �� 58      $Z��T⮤ Excellent option
(because values will travel with
the family between projects)��6   $
��Left=�6�   $��
46,174,0,0q�6�   $	��Top=�6�   $	��176��6�   $��62��6�   �� 59      -   5        $ btn_CategoryTypeFamily��59      $
��Left=�6:   $��
23,148,0,0q�6U   $	��Top=�6i   $	��166��6�   $��32��6�   .��5:      �� .+�5;      �� -   5        $&  btn_CategoryTypeFamily_textBlock��5;   $   $��Center=�6N   �� 6l   $
�Add ��6p   �� 6~   $�	to FAMILY��6�   6�   5<      5=      �� 5>      -   5        $" butView_CategoryTypeSpecific��5>      $��	👁 View��6?   $
��Left=�6Q   $��
199,37,0,0q�6l   $	��Top=�6�   $��54��6�   6�   �� 5?      -   5        $ butView_CategoryTypeALL��5?      $��	👁 View��6:   $
��Left=�6L   $��
199,83,0,0q�6g   $	��Top=�6{   $��54��6�   6�   �� 5@      -   5        $  butView_CategoryTypeFamily��5@      $��	👁 View��6=   $
��Left=�6O   $��199,159,0,0q�6j   $	��Top=�6   $��54��6�   6�   5C      5D      �� 5E   
   -   5        $ btn_Open_pkRevitFolder��5E      $&�� Open folder with parameter files��61   $
��Left=�6\   $��224,424,0,0q�6w   $	��Top=�6�   $	��192��6�   6�   5G      5H      
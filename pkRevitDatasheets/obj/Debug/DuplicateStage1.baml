   M S B A M L   `   `   `  ����S  OpkRevitDatasheets, Version=1.0.7829.27796, Culture=neutral, PublicKeyToken=null5clr-namespace:pkRevitDatasheetspkRevitDatasheets  5   	   K*clr-namespace:pkRevitDatasheets.ConverterspkRevitDatasheets.Converters  5   	   '    !pkRevitDatasheets.DuplicateStage1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:pkRevitDatasheets     5   	   A
Converters*clr-namespace:pkRevitDatasheets.Converters     5   	     � Title$  DuplicateStage1��5	   	   $��249.603��6!   $��924.004��62    � Topmost .  � 
ResizeMode$ CanResizeWithGrip=�6Q    � 	Resources 5
      4   .pkRevitDatasheets.Converters.PutExtensionFirst   PutExtensionFirst6   0pkRevitDatasheets.Converters.BitMapToBitmapImage  ImageSourceFromBitmap��%:   &	        &	        5   
   6'     5   
   6)   5      .��5      � .+�5   
   �� -   5         ��Name$ listbox_objectmodel��5       �� SelectionMode$ Single=�6/   $��	-3,0,3,39q�6u   ��6F   �� *model2.ImageDictionary+��5      �� 5       �� Triggers 5      P� 5      &    pkRevitDatasheets.DragDropHelper P� Property �@ 
IsDragOver P� Value . 	 N� ExitActions	 5      �� 5   "   .��5   &   �� 
 �� TargetProperty$
 Background.Color�61   .��5   *   ��  g� Duration$ 0:0:0.2D�69    �� From$ 
LightGreenX�6L   	 �� To$ TransparentX�6^   5   '   5   #   �� 5   "   .��5   &   �� $
 Background.Opacity�61   .��5   *   W� $ 0:0:0.2D�6:    W� From$ 1X�6M   	 W� To$	 .01X�6V   5   '   5   #    N� EnterActions 5!      �� 5"   "   .��5#   &   �� $
 Background.Color�61   .��5$   *   �� $ 0:0:0.2D�69   $ TransparentX�6L   $ 
LightGreenX�6_   5%   '   5&   #   �� 5'   "   .��5(   &   �� $
 Background.Opacity�61   .��5)   *   W� $ 0:0:0.2D�6:   $
 0.01X�6M   $ 1X�6Y   5*   '   5+   #   5-      5/      ��51      �� 52       �� 
TargetType" ��6    �� 	Resources 53      ��%F   (��       54   *   * SystemColors.HighlightBrushKey+)�� 6   6*   55       57      P� 58       �@��
IsSelected . . �59      ��  �� Property � �� �� Value$
 Bold"�6;   �� 5:       � ��
 ��ح�6;   �� 5;       �@J�Effect 5<   "   3  -System.Windows.Media.Effects.DropShadowEffect  5=   &      ShadowDepth$ 1Q�67   5?      5@      5B      ��5D      �� 5E      .R�5F      ]� .+�5G      �� $��CharacterEllipsis=�6P    �� TextAlignment$ Center=�6�   $��Bottom=�6�   ��6$   �� *Value+ �� ElementName$ slider����6q   �� *Key+ �� 	Converter# [  6�   �� 5H       ��Name$	 img��6    $��UniformToFill=�6Y   ��6-   �� *Value+$ slider����6q   �� *Value+# [ ��6�   �� *Value+$ slider��5I      5J      5K      ��5M      �� 5N      .R�5O      �  K� IsItemsHost . ��63   �� *ActualWidth+ �� RelativeSource ��  �� AncestorType" ��5P      ��5R      �� 5S       �� Color$ White��6"    �� Opacity$
 0.01Q�60   5U      �� 5V   
   -   5         ��Name$ but_CopyIntoCurrent��5V      $��Copy Into Current��6.   $��Right=�6J   $��	0,0,62,10q�6f   $��Bottom=�6y   $	��114��6�   
���  ��6�   �� 5W   
   -   5          ��Name$  slider��5W      ! � Value$	! 120Q�6!   " � Maximum$	" 150Q�6-   # � Minimum$# 16Q�6;   $��
-3,0,365,5q�6v   $��22��6�   $��Bottom=�6�   $ � ToolTip$ 6H   �� *Value+$ slider��6�   �� 5X   
   -   5        % ��Name$% myLabel_Directory��5X      $��yyyyMMdd HHmm ss��6+   $��Right=�6F   $��	0,0,192,7q�6b   $��Bottom=�6u   $	��130��6�   5Y      5Z      
   M S B A M L   `   `   `  ����`  \pkRevitUnderstandingTransforms, Version=1.0.7829.20303, Culture=neutral, PublicKeyToken=nullO,clr-namespace:pkRevitUnderstandingTransformspkRevitUnderstandingTransforms  5   	   :    4pkRevitUnderstandingTransforms.Window_RotatePlatform   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   >local,clr-namespace:pkRevitUnderstandingTransforms     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      -   5          �Name$  myWindow��5   9    � Title$ Window_RotatePlatform��5	   	   $	��590��6'   $	��800��64    � 
ResizeMode$ NoResize=�6A    � Topmost . .��5
      �  � ColumnDefinitions 5   
   �� 5      .+�5   
   �� $��MOVING��6   $
��Left=�6#   $	��275��6>   $��
10,161,0,0q�6K   $	��Top=�6_   $	��284��6w   �� 5   
   $��ROTATING��6   $
��Left=�6%   $	��275��6@   $��310,161,0,0q�6M   $	��Top=�6b   $	��284��6z   �� 5   
   -   5         ��Name$ mySlider_Move_X��5      $	��Top=�6+   $��26��6C   
����  � � Minimum$ -6Q�5       � Maximum$ 6Q�6    � Value$ 0Q�6&   	 �� IsSelectionRangeEnabled	 . 
 �� SelectionStart$
 -3Q�5       �� SelectionEnd$ 3Q�6!    �� TickPlacement$ BottomRight=�5       �� TickFrequency$ .5Q�5      $��
11,211,0,0q�6!   $
��Left=�65   $	��140��6P    � LayoutTransform 5      �� 5       �� CenterX$ 0Q�6"    �� CenterY$ 0Q�6.    �� ScaleX$ 2Q�6:    �� ScaleY$ 2Q�6E   5      �� 5   
   -   5        $ mySlider_Move_Y��5      $	��Top=�6+   $��26��6C   
����  �$	 -12Q�5      $ 12Q�6   $ 0Q�6(   	 . $
 -6Q�5      $ 6Q�6!    �� IsSnapToTickEnabled . $ BottomRight=�5      $ 1Q�5       $��
11,294,0,0q�6    $
��Left=�64   $	��140��6O    5!      �� 5"      $ 0Q�6"   $ 0Q�6.   $ 2Q�6:   $ 2Q�6E   5$      �� 5%   
   -   5        $ mySlider_Move_Z��5%      $	��Top=�6+   $��26��6C   
����  �$	 -12Q�5&      $ 12Q�6   $ 0Q�6(   	 . $
 -6Q�5(      $ 6Q�6!    . $ BottomRight=�5)      $ 1Q�5*      $��
11,375,0,0q�6    $
��Left=�64   $	��140��6O    5+      �� 5,      $ 0Q�6"   $ 0Q�6.   $ 2Q�6:   $ 2Q�6E   5.      �� 5/   
   $��X��6   $
��Left=�6   $��142,184,0,0q�67   $	��Top=�6L   �� 50   
   $��Y��6   $
��Left=�6   $��142,266,0,0q�67   $	��Top=�6L   �� 51   
   $��Z��6   $
��Left=�6   $��142,348,0,0q�67   $	��Top=�6L   �� 52   
   -   5        $ mySlider_Rotate_BasisX��52      $	��Top=�62   $��26��6J   
����  �$ 0Q�53      $ 24Q�6   $ 12Q�6&   	 . $
 6Q�55      $ 18Q�6    $ BottomRight=�56      $ 1Q�57      $��309,211,0,0q�6    $
��Left=�65   $	��140��6P    58      �� 59      $ 0Q�6"   $ 0Q�6.   $ 2Q�6:   $ 2Q�6E   5;      �� 5<   
   -   5        $ mySlider_Rotate_BasisY��5<      $	��Top=�62   $��26��6J   
����  �$ 0Q�5=      $ 24Q�6   $ 12Q�6&   	 . $
 6Q�5?      $ 18Q�6    $ BottomRight=�5@      $ 1Q�5A      $��309,294,0,0q�6    $
��Left=�65   $	��140��6P    5B      �� 5C      $ 0Q�6"   $ 0Q�6.   $ 2Q�6:   $ 2Q�6E   5E      �� 5F   
   -   5        $ mySlider_Rotate_BasisZ��5F      $	��Top=�62   $��26��6J   
����  �$ 0Q�5G      $ 24Q�6   $ 12Q�6&   	 . $
 6Q�5I      $ 18Q�6    $ BottomRight=�5J      $ 1Q�5K      $��309,375,0,0q�6    $
��Left=�65   $	��140��6P    5L      �� 5M      $ 0Q�6"   $ 0Q�6.   $ 2Q�6:   $ 2Q�6E   5O      �� 5P   
   $��BasisX normal��6   $
��Left=�6(   $��411,184,0,0q�6C   $	��Top=�6X   $��87��6p   �� 5Q   
   $��BasisY normal��6   $
��Left=�6(   $��411,266,0,0q�6C   $	��Top=�6X   $��87��6p   �� 5R   
   $��BasisZ normal��6   $
��Left=�6(   $��411,348,0,0q�6C   $	��Top=�6X   $��87��6p   �� 5S   
   -   5         ��Name$ myLabel_TransformXBasis��5S      $	��...��61   $
��Left=�6?   $��169,441,0,0q�6Z   $	��Top=�6o   $	��411��6�   �� 5T   
   $��BasisX��6   $
��Left=�6"   $��121,441,0,0q�6=   $	��Top=�6R   $��48��6j   �� 5U   
   -	   5        $ myLabel_TransformYBasis��5U      $	��...��61   $
��Left=�6?   $��169,457,0,0q�6Z   $	��Top=�6o   $	��404��6�   �� 5V   
   $��BasisY��6   $
��Left=�6"   $��121,457,0,0q�6=   $	��Top=�6R   $��48��6j   �� 5W   
   -
   5        $ myLabel_TransformZBasis��5W      $	��...��61   $
��Left=�6?   $��169,473,0,0q�6Z   $	��Top=�6o   $	��404��6�   �� 5X   
   $��BasisZ��6   $
��Left=�6"   $��121,473,0,0q�6=   $	��Top=�6R   $��48��6j   �� 5Y   
   -   5        $ myLabel_TransformOrigin��5Y      $	��...��61   $
��Left=�6?   $��169,494,0,0q�6Z   $	��Top=�6o   $	��399��6�   �� 5Z   
   $��Origin��6   $
��Left=�6"   $��121,494,0,0q�6=   $	��Top=�6R   $��48��6j   �� 5[   
   -   5         ��Name$ myButton_NinetyX��5[      $	��⟲��6+   $
��Left=�67   $��708,381,0,0q�6R   $	��Top=�6g   $��32��6   $��25��6�   $��16(�6�   6�   �� 5\   
   -   5        $ myButton_HomeY��5\      $��	🏠 Wall��6)   $
��Left=�6;   $��614,218,0,0q�6V   $	��Top=�6k   $��70��6�   $��25��6�   $��12(�6�   6�   �� 5]   
   -   5        $ myButton_HomeZ��5]      $��	🏠 Side��6)   $
��Left=�6;   $��614,302,0,0q�6V   $	��Top=�6k   $��70��6�   $��25��6�   $��12(�6�   6�   �� 5^   
   -   5        $ myButton_HomeX��5^      $��	🏠 Plan��6)   $
��Left=�6;   $��614,381,0,0q�6V   $	��Top=�6k   $��70��6�   $��25��6�   $��12(�6�   6�   �� 5_   
   -   5        $ myButton_NinetyY��5_      $	��⟳��6+   $
��Left=�67   $��746,302,0,0q�6R   $	��Top=�6g   $��32��6   $��25��6�   $��16(�6�   6�   �� 5`   
   -   5        $ myButton_NinetyZ��5`      $	��⟲��6+   $
��Left=�67   $��708,218,0,0q�6R   $	��Top=�6g   $��32��6   $��25��6�   $��16(�6�   6�   �� 5a   
   -   5        $ myButton_NinetyZ_Reverse��5a      $	��⟳��63   $
��Left=�6?   $��746,218,0,0q�6Z   $	��Top=�6o   $��32��6�   $��25��6�   $��16(�6�   6�   �� 5b   
   -   5        $ myButton_NinetyY_Reverse��5b      $	��⟲��63   $
��Left=�6?   $��708,302,0,0q�6Z   $	��Top=�6o   $��32��6�   $��25��6�   $��16(�6�   6�   �� 5c   
   -   5        $ myButton_NinetyX_Reverse��5c      $	��⟳��63   $
��Left=�6?   $��746,381,0,0q�6Z   $	��Top=�6o   $��32��6�   $��25��6�   $��16(�6�   6�   �� 5d   
   -   5        $ myLabel_Progress��5d      $��Not in Progress��6*   $
��Left=�6D   $��535,483,0,0q�6_   $	��Top=�6t   $��96��6�   �� 5e   
   -   5        $ myLabel_Setting��5e      $��value��6)   $
��Left=�69   $��645,483,0,0q�6T   $	��Top=�6i   $��44��6�   �� 5f   
   -   5        $ myLabel_ChangeCount��5f      $��change count��6-   $
��Left=�6D   $��699,483,0,0q�6_   $	��Top=�6t   $��88��6�   %  Xceed.Wpf.Toolkit.IntegerUpDown  5g   
   -   5          Name$ myIntUpDown_Middle2��5g      $
��Left=�6:   $��612,164,0,0q�6U   $	��Top=�6j   $��78��6�   {�.  $��38��6�   �� 5h   
   -   5        $ button_RepickfromModel��5h      $��← Re-pick
from model��61   $
��Left=�6Y   $��692,164,0,0q�6t   $	��Top=�6�   $��88��6�   $��38��6�   6�   �� 5i   
   -   5        $ button_NewOnFace��5i      $
��Left=�6,   $��Center=�6H   $��41��6o   $��
120,46,0,0q�6{   $	��Top=�6�   $	��208��6�   .��5j      �� .+�5k      �� $��New Platform��6   $��Center=�60   �� 5l      $��HOSTED on Face/Workplane��6   $��Center=�6<   5m      5n      �� 5o   
   -   5        $
��Left=�5o      $��39��6-   $��
381,48,0,0q�69   $	��Top=�6M   $	��206��6e    J� RenderTransformOrigin$ 1.489,1.902&�6q   .��5p      �� .+�5q      �� $��New Platform��6   $��Center=�60   �� 5r      $"��CENTRE of Screen/Section Box��6   $��Center=�6@   5s      5t      �� 5u   
   -   5        $ button_Unhost��5u      $��Unhost��6(   $
��Left=�69   $��21��6T   $��393,130,0,0q�6`   $	��Top=�6u   $��97��6�   6�   5v      5w      
   M S B A M L   `   `   `  ���� G  CBowlingScore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:BowlingScoreBowlingScore      BowlingScore.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:BowlingScore       � Title$  
MainWindow��$��221.17��$��1155.747�� � DataContext ��  �� RelativeSource �� *Self+.��� $
��Left=�$	��716�� � ColumnDefinitions �� $	��46* ��� $
��133* �.+��� ���	#FFF4F4F5$
��Left=�$��74��$��	24,72,0,0q�
���   �$	��Top=�$	��110���� -    ��Name$ button��$��New Game��$
��Left=�$��	24,30,0,0q�$	��Top=�$	��160��$��32��$
��Bold"�$��16(�$��Segoe UI Black)����	#FFBEF0B3�� ���	#FFACCCEC$
��Left=�$��18��$��	24,72,0,0q�
���   �$	��Top=�$	��110���� 
���   �$��1q�$
��Left=�$��27��$��	79,89,0,0q�$	��Top=�$��55���� ���	#FFF4F4F5$
��Left=�$��74��$��
133,72,0,0q�
���   �$	��Top=�$	��110��$��2���� ���	#FFACCCEC$
��Left=�$��18��$��
133,72,0,0q�
���   �$	��Top=�$	��110��$��2���� 
���   �$��1q�$
��Left=�$��27��$��4,89,0,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��	58,72,0,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��	58,72,0,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��
113,89,0,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��
167,72,0,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��
167,72,0,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��
222,89,0,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��
276,72,0,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��
276,72,0,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��
331,89,0,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��
385,72,0,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��
385,72,0,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��
440,89,0,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��494,72,-72,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��494,72,-72,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��549,89,-72,0q�$	��Top=�$��55��$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��603,72,-181,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��603,72,-181,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��658,89,-181,0q�$	��Top=�$��55��$��1���� -    ��Name$ frame1��$��1��$
��Left=�$��	71,67,0,0q�$	��Top=��� -   $ frame2��$��2��$
��Left=�$��
180,67,0,0q�$	��Top=�$��2���� -   $ frame3��$	��3
��$
��Left=�$��
107,67,0,0q�$	��Top=�$��1���� -   $ frame4��$
��4

��$
��Left=�$��
216,67,0,0q�$	��Top=�$��1���� -   $ frame5��$��5
��$
��Left=�$��
324,67,0,0q�$	��Top=�$��1���� -   $ frame6��$��6
��$
��Left=�$��
434,67,0,0q�$	��Top=�$��1���� -   $ frame7��$��7
��$
��Left=�$��543,67,-27,0q�$	��Top=�$��1���� -	   $ frame8��$��8
��$
��Left=�$��652,67,-136,0q�$	��Top=�$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��712,72,-290,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��712,72,-290,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��767,89,-290,0q�$	��Top=�$��55��$��1���� -
   $ frame9��$��9
��$
��Left=�$��761,67,-245,0q�$	��Top=�$��1���� ���	#FFF4F4F5$
��Left=�$��74��$��821,72,-399,0q�
���   �$	��Top=�$	��110��$��1���� ���	#FFACCCEC$
��Left=�$��18��$��821,72,-399,0q�
���   �$	��Top=�$	��110��$��1���� 
���   �$��1q�$
��Left=�$��27��$��860,89,-364,0q�$	��Top=�$��36��$��1���� -   $ frame10��$	��10
��$
��Left=�$��864,67,-357,0q�$	��Top=�$��1��$��25���� 
���   �$��1q�$
��Left=�$��27��$��895,89,-399,0q�$	��Top=�$��36��$��1���� -   $ ball1��$��-��$
��Left=�$��	38,89,0,0q�$	��Top=�$��30���� -   $ ball2��$��-��$
��Left=�$��	92,89,0,0q�$	��Top=�$��30���� -   $ ball3��$��-��$
��Left=�$��
147,89,0,0q�$	��Top=�$��30���� -   $ ball4��$��-��$
��Left=�$��	16,91,0,0q�$	��Top=�$��30��$��1���� -   $ ball5��$��-��$
��Left=�$��	72,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball6��$��-��$
��Left=�$��
126,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball7��$��-��$
��Left=�$��
181,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball8��$��-��$
��Left=�$��
236,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball9��$��-��$
��Left=�$��
291,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball10��$��-��$
��Left=�$��
344,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball11��$��-��$
��Left=�$��
399,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball12��$��-��$
��Left=�$��
453,89,0,0q�$	��Top=�$��30��$��1���� -   $ ball13��$��-��$
��Left=�$��509,89,-7,0q�$	��Top=�$��30��$��1���� -   $ ball14��$��-��$
��Left=�$��562,89,-60,0q�$	��Top=�$��30��$��1���� -   $ ball15��$��-��$
��Left=�$��618,89,-116,0q�$	��Top=�$��30��$��1���� -   $ ball16��$��-��$
��Left=�$��671,89,-169,0q�$	��Top=�$��30��$��1���� -   $ ball17��$��-��$
��Left=�$��727,89,-225,0q�$	��Top=�$��30��$��1���� -   $ ball18��$��-��$
��Left=�$��781,89,-279,0q�$	��Top=�$��30��$��1���� -   $ ball19��$��-��$
��Left=�$��826,89,-324,0q�$	��Top=�$��30��$��1���� -   $ ball20��$��-��$
��Left=�$��863,89,-361,0q�$	��Top=�$��30��$��1���� -    $ ball21��$��-��$
��Left=�$��898,89,-396,0q�$	��Top=�$��30��$��1���� -!   $ frameScore1��$��-��$
��Left=�$��27��$��
56,119,0,0q�$	��Top=�$��50���� -"   $ frameScore2��$��-��$
��Left=�$��27��$��168,119,0,0q�$	��Top=�$��50��$��2���� -#   $ frameScore3��$��-��$
��Left=�$��27��$��
89,119,0,0q�$	��Top=�$��1��$��50���� -$   $ frameScore4��$��-��$
��Left=�$��27��$��202,119,0,0q�$	��Top=�$��1��$��50���� -%   $ frameScore5��$��-��$
��Left=�$��27��$��311,119,0,0q�$	��Top=�$��1��$��50���� -&   $ frameScore6��$��-��$
��Left=�$��27��$��421,119,0,0q�$	��Top=�$��1��$��50���� -'   $ frameScore7��$��-��$
��Left=�$��27��$��530,119,-48,0q�$	��Top=�$��1��$��50���� -(   $ frameScore8��$��-��$
��Left=�$��27��$��638,119,-156,0q�$	��Top=�$��1��$��50���� -)   $ frameScore9��$��-��$
��Left=�$��27��$��746,119,-264,0q�$	��Top=�$��1��$��50���� -*   $ frameScore10��$��-��$
��Left=�$��27��$��855,119,-373,0q�$	��Top=�$��1��$��50���� -+    ��Name$ check��$��1��$
��Left=�$��35��$��890,20,-396,0q�$	��Top=�$��38��$��	check.png��
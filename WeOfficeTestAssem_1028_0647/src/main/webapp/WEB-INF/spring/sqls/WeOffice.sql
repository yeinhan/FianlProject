C R E A T E   U S E R   F I N A L   I D E N T I F I E D   B Y   1 2 3 4 ;  
 G R A N T   C O N N E C T , R E S O U R C E , D B A   T O   F I N A L ;  
  
  
 C R E A T E   S E Q U E N C E   U S E R N O S E Q   N O C A C H E ;  
 / * A U T H K E Y   ��1�  �� �t�|�h�* /  
 C R E A T E   T A B L E   " U s e r "   (  
 	 U S E R _ N U M 	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L ,  
 	 U _ I D 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 N A M E 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 P A S S W O R D 	 V A R C H A R ( 2 5 5 ) 	 N U L L ,  
 	 E M A I L 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 P H O N E 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 A D D R E S S 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 D E P A R T M E N T 	 V A R C H A R ( 2 5 5 ) 	 N U L L ,  
 	 C O M P A N Y 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 P A Y _ U S E R   V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 E X P I R E   	 D A T E   	 	 	 	 N U L L ,  
 	 A U T H K E Y   V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 F O R E I G N   K E Y ( P A Y _ U S E R )   R E F E R E N C E S   P A Y M E N T ( U S E R _ N U M )   O N   D E L E T E   S E T   N U L L ,  
 	 F O R E I G N   K E Y ( E X P I R E )   R E F E R E N C E S   P A Y M E N T ( P _ E N D D A T E )   O N   D E L E T E   S E T   N U L L  
 ) ;  
 S E L E C T   *   F R O M   " U s e r " ;  
 d e l e t e   f r o m   " U s e r "  
  
 S E L E C T   C O U N T ( * )  
 	 	 F R O M   " U s e r "  
 	 	 W H E R E   E M A I L   =   ' g o r e g o r e 8 6 3 7 @ n a v e r . c o m '  
 	 	 A N D   A U T H K E Y   =   1    
  
 D R O P   T A B L E   " U s e r " ;  
  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 ' ,   ' D�t��' ,   ' $�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 2 ' ,   ' D�t��' ,   ' i�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 3 ' ,   ' D�t��' ,   ' \�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 4 ' ,   ' D�t��' ,   ' ��G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 5 ' ,   ' D�t��' ,   ' t�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 6 ' ,   ' D�t��' ,   ' �G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 7 ' ,   ' D�t��' ,   ' ��G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 8 ' ,   ' D�t��' ,   ' \�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 9 ' ,   ' D�t��' ,   ' �G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 0 ' ,   ' D�t��' ,   ' M�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 1 ' ,   ' D�t��' ,   ' @�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 2 ' ,   ' D�t��' ,   ' $�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 3 ' ,   ' D�t��' ,   ' �G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 4 ' ,   ' D�t��' ,   ' @�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 5 ' ,   ' D�t��' ,   ' t�G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 6 ' ,   ' D�t��' ,   ' ��G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 7 ' ,   ' D�t��' ,   '  �G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 8 ' ,   ' D�t��' ,   ' ��G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 1 9 ' ,   ' D�t��' ,   ' �G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
 I N S E R T   I N T O   " U s e r "   V A L U E S ( ' 2 0 ' ,   ' D�t��' ,   ' ��G1G1' ,   ' D� ���8�' ,   ' t�T�|�' ,   ' ��' ,   ' �Ȍ�' ,   ' ���' ,   ' �֬�' ,   ' ' ,   ' ' ) ;  
  
  
 D R O P   S E Q U E N C E   P _ I D _ S E Q ;  
 D R O P   T A B L E   P R O J E C T ;  
 D R O P   S E Q U E N C E   W _ I D _ S E Q ;  
 D R O P   T A B L E   W O R K S P A C E ;  
 D R O P   S E Q U E N C E   T _ I D _ S E Q ;  
 D R O P   T A B L E   T A S K L I S T ;  
  
 - -   P R O J E C T  
 C R E A T E   S E Q U E N C E   P _ I D _ S E Q   S T A R T   W I T H   1 0 0 0 1 ;  
 C R E A T E   T A B L E   P R O J E C T   (  
 	 P _ I D 	 V A R C H A R ( 2 5 5 ) 	 	 P R I M A R Y   K E Y ,  
 	 P _ T I T L E 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 P _ I N F O 	 V A R C H A R ( 1 0 0 0 ) ,  
 	 P _ P U B 	 V A R C H A R ( 2 5 5 )   	 	 N O T   N U L L ,  
 	 U S E R _ N U M 	 V A R C H A R ( 2 5 5 ) ,  
 	 P _ S T A R T D A T E 	 	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L ,  
 	 P _ E N D D A T E 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
 S E L E C T   *   F R O M   P R O J E C T ;  
  
  
 - -   W O R K S P A C E  
 C R E A T E   S E Q U E N C E   W _ I D _ S E Q   S T A R T   W I T H   1 0 0 1 ;  
 C R E A T E   T A B L E   W O R K S P A C E   (  
 	 W _ I D 	 V A R C H A R ( 2 5 5 ) 	 	 P R I M A R Y   K E Y ,  
 	 W _ T I T L E 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 P _ I D 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,    
 	 F O R E I G N   K E Y ( P _ I D )   R E F E R E N C E S   P R O J E C T ( P _ I D )   O N   D E L E T E   C A S C A D E  
 ) ;  
 S E L E C T   *   F R O M   W O R K S P A C E ;  
  
  
 - -   T A S K L I S T  
 C R E A T E   S E Q U E N C E   T _ I D _ S E Q   S T A R T   W I T H   1 0 1 ;  
 C R E A T E   T A B L E   T A S K L I S T   (  
 	 T _ I D   V A R C H A R ( 2 5 5 )   	 	 	 P R I M A R Y   K E Y ,  
 	 W _ I D   V A R C H A R ( 2 5 5 )   	 	 	 N O T   N U L L ,  
 	 W _ C O N T E N T   V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 C H K _ Y N   N U M B E R 	 	 	 	 N O T   N U L L ,  
 	 F O R E I G N   K E Y ( W _ I D )   R E F E R E N C E S   W O R K S P A C E ( W _ I D )   O N   D E L E T E   C A S C A D E  
 ) ;  
 S E L E C T   *   F R O M   T A S K L I S T ;  
  
  
 - -   F I L E  
 C R E A T E   T A B L E   U P L O A D F I L E   (  
 	 P _ I D   V A R C H A R ( 2 5 5 ) 	 N O T   N U L L ,  
 	 N A M E   V A R C H A R ( 2 5 5 ) 	 N O T   N U L L  
 ) ;  
 S E L E C T   *   F R O M   U P L O A D F I L E ;  
  
  
 - -   P A Y M E N T  
 C R E A T E   T A B L E   P A Y M E N T   (  
 	 U S E R _ N U M 	 V A R C H A R ( 2 5 5 ) 	 P R I M A R Y   K E Y ,  
 	 N A M E 	 	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L ,  
 	 P _ M O N T H S   	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L , 	 - -   ������ 
 	 P _ N U M B E R 	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L , 	 - -   ���x��� 
 	 P _ A M O U N T 	 V A R C H A R ( 2 5 5 ) 	 N O T   N U L L , 	 - -   ����a� 
 	 P _ S T A R T D A T E 	 	 D A T E 	 N O T   N U L L , 	 - -   ��|ǐ�( S Y S D A T E )  
 	 P _ E N D D A T E 	 	 D A T E 	 U N I Q U E 	 - -   ̸̹|ǐ�( A D D _ M O N T H )  
 ) ;  
 S E L E C T   *   F R O M   P A Y M E N T ;  
 D E L E T E   F R O M   P A Y M E N T ;  
 D R O P   T A B L E   P A Y M E N T ;  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 D R O P   S E Q U E N C E   R E S E R _ N O S E Q ;  
 D R O P   T A B L E   R E S E R V A T I O N ;  
  
 C R E A T E   S E Q U E N C E   R E S E R _ N O S E Q   N O C A C H E ;  
 C R E A T E   T A B L E   R E S E R V A T I O N   (  
 	 R E S E R _ N O   N U M B E R   P R I M A R Y   K E Y ,  
 	 U _ N O   V A R C H A R 2 ( 3 0 0 )   N O T   N U L L ,  
 	 R E S E R   V A R C H A R 2 ( 3 0 0 )   N O T   N U L L ,  
 	 D A Y   V A R C H A R 2 ( 3 0 0 )   N O T   N U L L  
  
 ) ;  
  
 D E L E T E   F R O M   R E S E R V A T I O N ;  
 S E L E C T   * F R O M   R E S E R V A T I O N ;  
  
  
  
 S E L E C T   S U B   F R O M (  
 S E L E C T   D A Y ,   S U B S T R   ( s t r ,  
 I N S T R   ( s t r ,   d l m ,   1 ,   L E V E L )   +   1 ,  
 I N S T R   ( s t r ,   d l m ,   1 ,   L E V E L   +   1 )   -   I N S T R   ( s t r ,   d l m ,   1 ,   L E V E L )  
 -   1  
 )   s u b  
 F R O M   ( S E L E C T   D A Y ,   ' , '   | |   R E S E R   | |   ' , '   s t r ,   ' , '   d l m  
 F R O M   R E S E R V A T I O N   )  
 C O N N E C T   B Y   L E V E L   < =   L E N G T H   ( s t r )   -   L E N G T H   ( R E P L A C E   ( s t r ,   ' , ' ) )   -   1   )  
 W H E R E   D A Y   =   ' 1 0 / 1 4 / 2 0 2 0 '  
 G R O U P   B Y   S U B ;  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 C R E A T E   T A B L E   " C H A N N E L "   (  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C _ N A M E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " C h a n n e l M e s s a g e "   (  
 	 " C M _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C M _ M S G " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " C M _ D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " C h a n n e l J o i n "   (  
 	 " C J _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " D a t a "   (  
 	 " D _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " D _ N A M E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " D M "   (  
 	 " D M _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " D M e s s a g e "   (  
 	 " D M _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " D M _ M S G " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " T U _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " R U _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " D M _ D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " D M _ I D 2 " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " U s e r D M "   (  
 	 " U S E R D M _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " D M _ I D 2 " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 A L T E R   T A B L E   " U s e r "   A D D   C O N S T R A I N T   " P K _ U S E R "   P R I M A R Y   K E Y   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " P r o j e c t "   A D D   C O N S T R A I N T   " P K _ P R O J E C T "   P R I M A R Y   K E Y   (  
 	 " P _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " W o r k S p a c e "   A D D   C O N S T R A I N T   " P K _ W O R K S P A C E "   P R I M A R Y   K E Y   (  
 	 " W _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " C H A N N E L "   A D D   C O N S T R A I N T   " P K _ C H A N N E L "   P R I M A R Y   K E Y   (  
 	 " C _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l M e s s a g e "   A D D   C O N S T R A I N T   " P K _ C H A N N E L M E S S A G E "   P R I M A R Y   K E Y   (  
 	 " C M _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l J o i n "   A D D   C O N S T R A I N T   " P K _ C H A N N E L J O I N "   P R I M A R Y   K E Y   (  
 	 " C J _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " D a t a "   A D D   C O N S T R A I N T   " P K _ D A T A "   P R I M A R Y   K E Y   (  
 	 " D _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " D M "   A D D   C O N S T R A I N T   " P K _ D M "   P R I M A R Y   K E Y   (  
 	 " D M _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " D M e s s a g e "   A D D   C O N S T R A I N T   " P K _ D M E S S A G E "   P R I M A R Y   K E Y   (  
 	 " D M _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " U s e r D M "   A D D   C O N S T R A I N T   " P K _ U S E R D M "   P R I M A R Y   K E Y   (  
 	 " U S E R D M _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " P r o j e c t "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ P r o j e c t _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " W o r k S p a c e "   A D D   C O N S T R A I N T   " F K _ P r o j e c t _ T O _ W o r k S p a c e _ 1 "   F O R E I G N   K E Y   (  
 	 " P _ I D "  
 )  
 R E F E R E N C E S   " P r o j e c t "   (  
 	 " P _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " W o r k S p a c e "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ W o r k S p a c e _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l M e s s a g e "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ C h a n n e l M e s s a g e _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l M e s s a g e "   A D D   C O N S T R A I N T   " F K _ C H A N N E L _ T O _ C h a n n e l M e s s a g e _ 1 "   F O R E I G N   K E Y   (  
 	 " C _ I D "  
 )  
 R E F E R E N C E S   " C H A N N E L "   (  
 	 " C _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l J o i n "   A D D   C O N S T R A I N T   " F K _ C H A N N E L _ T O _ C h a n n e l J o i n _ 1 "   F O R E I G N   K E Y   (  
 	 " C _ I D "  
 )  
 R E F E R E N C E S   " C H A N N E L "   (  
 	 " C _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " C h a n n e l J o i n "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ C h a n n e l J o i n _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " D a t a "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ D a t a _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " D a t a "   A D D   C O N S T R A I N T   " F K _ C H A N N E L _ T O _ D a t a _ 1 "   F O R E I G N   K E Y   (  
 	 " C _ I D "  
 )  
 R E F E R E N C E S   " C H A N N E L "   (  
 	 " C _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " D M e s s a g e "   A D D   C O N S T R A I N T   " F K _ D M _ T O _ D M e s s a g e _ 1 "   F O R E I G N   K E Y   (  
 	 " D M _ I D 2 "  
 )  
 R E F E R E N C E S   " D M "   (  
 	 " D M _ I D "  
 ) ;  
  
 A L T E R   T A B L E   " D M e s s a g e "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ D M e s s a g e _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " U s e r D M "   A D D   C O N S T R A I N T   " F K _ U s e r _ T O _ U s e r D M _ 1 "   F O R E I G N   K E Y   (  
 	 " U S E R _ N U M "  
 )  
 R E F E R E N C E S   " U s e r "   (  
 	 " U S E R _ N U M "  
 ) ;  
  
 A L T E R   T A B L E   " U s e r D M "   A D D   C O N S T R A I N T   " F K _ D M _ T O _ U s e r D M _ 1 "   F O R E I G N   K E Y   (  
 	 " D M _ I D 2 "  
 )  
 R E F E R E N C E S   " D M "   (  
 	 " D M _ I D "  
 ) ;  
  
 - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 D R O P   S E Q E U N C E   C h a n n e l M e s s a g e S E Q ;  
 D R O P   S E Q E U N C E   C H A N N E L S E Q ;  
 D R O P   S E Q E U N C E   C h a n n e l J o i n S E Q ;  
 D R O P   T A B L E   " C h a n n e l M e s s a g e " ;  
 D R O P   T A B L E   " C H A N N E L " ;  
 D R O P   T A B L E   " C h a n n e l J o i n " ;  
  
 C R E A T E   S E Q U E N C E   C h a n n e l M e s s a g e S E Q   N O C A C H E ;  
 C R E A T E   S E Q U E N C E   C H A N N E L S E Q   N O C A C H E ;  
 C R E A T E   S E Q U E N C E   C h a n n e l J o i n S E Q   N O C A C H E ;  
  
 C R E A T E   T A B L E   " C H A N N E L "   (  
 	 " C _ I D " 	 N U M B E R 	 	 P R I M A R Y   K E Y ,  
 	 " C _ N A M E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " C h a n n e l M e s s a g e "   (  
 	 " C M _ I D " 	 N U M B E R 	 	 P R I M A R Y   K E Y ,  
 	 " C M _ M S G " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " C M _ D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " C h a n n e l J o i n "   (  
 	 " C J _ I D " 	 N U M B E R 	 	 P R I M A R Y   K E Y ,  
 	 " C _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 I N S E R T   I N T O   " U s e r "    
 V A L U E S ( U S E R N O S E Q . N E X T V A L ,   '  � �1 ' , ' 1 2 3 4 ' , ' G O R E @ 1 2 3 4 ' , ' 0 1 0 - 2 2 2 2 - 2 2 2 2 ' ,   ' ��H���' , ' ���' , ' �֬�' , ' U S E R 1 ' ) ;  
 I N S E R T   I N T O   " U s e r "    
 V A L U E S ( U S E R N O S E Q . N E X T V A L ,   '  � �2 ' , ' 1 2 3 4 ' , ' G O R E @ 1 2 3 4 ' , ' 0 1 0 - 2 2 2 2 - 2 2 2 2 ' ,   ' ��H���' , ' ���' , ' �֬�' , ' U S E R 2 ' ) ;  
 I N S E R T   I N T O   " U s e r "    
 V A L U E S ( U S E R N O S E Q . N E X T V A L ,   '  � �3 ' , ' 1 2 3 4 ' , ' G O R E @ 1 2 3 4 ' , ' 0 1 0 - 2 2 2 2 - 2 2 2 2 ' ,   ' ��H���' , ' ���' , ' �֬�' , ' U S E R 3 ' ) ;  
  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' a a a ' ,   S Y S D A T E ,   ' 1 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' b b b ' ,   S Y S D A T E ,   ' 2 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' b b b 2 ' ,   S Y S D A T E ,   ' 2 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' a a a 2 ' ,   S Y S D A T E ,   ' 1 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' b b b 3 ' ,   S Y S D A T E ,   ' 2 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' a a a 3 ' ,   S Y S D A T E ,   ' 1 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' a a a 4 ' ,   S Y S D A T E ,   ' 1 ' ,   ' 1 ' ) ;  
 I N S E R T   I N T O   " C h a n n e l M e s s a g e "  
 V A L U E S ( C h a n n e l M e s s a g e S E Q . N E X T V A L ,   ' c c c ' ,   S Y S D A T E ,   ' 3 ' ,   ' 1 ' ) ;  
  
 S E L E C T   *   F R O M   " C h a n n e l M e s s a g e " ;  
 S E L E C T  
 C M . C M _ M S G ,   U . N A M E  
 F R O M   " C h a n n e l M e s s a g e "   C M  
 L E F T   O U T E R   J O I N   " U s e r "   U   O N   C M . U S E R _ N U M   =   U . U S E R _ N U M   O R D E R   B Y   C M . C M _ I D   D E S C ;  
 S E L E C T   *   F R O M   ( S E L E C T   U . U S E R _ N U M ,   U . N A M E ,   C M . C M _ M S G   F R O M   " C h a n n e l M e s s a g e "   C M   L E F T   O U T E R   J O I N   " U s e r "   U   O N   C M . U S E R _ N U M   =   U . U S E R _ N U M   O R D E R   B Y   C M . C M _ I D   D E S C )   W H E R E   R O W N U M   < =   5  
 S E L E C T   *   F R O M   t a b s ;  
  
 
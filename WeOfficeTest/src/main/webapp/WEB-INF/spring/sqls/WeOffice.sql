C R E A T E   U S E R   F I N A L   I D E N T I F I E D   B Y   1 2 3 4 ;  
 G R A N T   C O N N E C T , R E S O U R C E , D B A   T O   F I N A L ;  
  
 S E L E C T   *   F R O M   T A B S ;  
  
 S E L E C T   *   F R O M   " U s e r " ;  
  
 D R O P   T A B L E   " U s e r "  
 D R O P   S E Q U E N C E   U S E R N O S E Q ;  
  
 A L T E R   T A B L E   " U s e r "  
 A D D   A U T H K E Y   N U M B E R  
  
 C R E A T E   S E Q U E N C E   U S E R N O S E Q   N O C A C H E ;  
 C R E A T E   T A B L E   " U s e r "   (  
 	 " U S E R _ N U M " 	 N U M B E R 	 	 N O T   N U L L ,  
 	 " N A M E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P A S S W O R D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " E M A I L " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P H O N E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " A D D R E S S " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " D E P A R T M E N T " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " C O M P A N Y " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L  
 ) ;  
  
 S E L E C T   *   F R O M   " U s e r "  
     	 	  
 I N S E R T   I N T O   " U s e r "    
 V A L U E S ( U S E R N O S E Q . N E X T V A L ,   '  � �1 ' , ' 1 2 3 4 ' , ' G O R E @ 1 2 3 4 ' , ' 0 1 0 - 2 2 2 2 - 2 2 2 2 ' ,   ' ��H���' , ' ���' , ' �֬�' , ' U S E R 1 ' ) ;  
  
 D E L E T E   F R O M   " U s e r "  
 W H E R E   U S E R _ N U M   =   2 ;  
  
 C R E A T E   T A B L E   " P r o j e c t "   (  
 	 " P _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " P _ T I T L E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P _ D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P _ U P D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
  
 C R E A T E   T A B L E   " W o r k S p a c e "   (  
 	 " W _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " W _ T I T L E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " W _ C O N T E N T " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " W _ D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " W _ S D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " W _ D D A T E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L  
 ) ;  
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
 
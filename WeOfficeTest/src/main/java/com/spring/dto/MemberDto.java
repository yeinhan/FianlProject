p a c k a g e   c o m . s p r i n g . d t o ;  
  
  
 / *  
   *   C R E A T E   T A B L E   " U s e r "   (  
 	 " U S E R _ N U M " 	 V A R C H A R ( 2 5 5 ) 	 	 N O T   N U L L ,  
 	 " N A M E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P A S S W O R D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " E M A I L " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " P H O N E " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " A D D R E S S " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " D E P A R T M E N T " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " C O M P A N Y " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L ,  
 	 " U _ I D " 	 V A R C H A R ( 2 5 5 ) 	 	 N U L L  
 ) ;  
   *    
   *   * /  
 p u b l i c   c l a s s   M e m b e r D t o   {  
 	 p r i v a t e   i n t   u s e r _ n u m ;  
 	 p r i v a t e   S t r i n g   n a m e ;  
 	 p r i v a t e   S t r i n g   p a s s w o r d ;  
 	 p r i v a t e   S t r i n g   e m a i l ;  
 	 p r i v a t e   S t r i n g   p h o n e ;  
 	 p r i v a t e   S t r i n g   a d d r e s s ;  
 	 p r i v a t e   S t r i n g   d e p a r m e n t ;  
 	 p r i v a t e   S t r i n g   c o m p a n y ;  
 	 p r i v a t e   S t r i n g   u _ i d ;  
 	 p r i v a t e   i n t   a u t h k e y ;  
 	  
 	 p u b l i c   M e m b e r D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   c o n s t r u c t o r   s t u b  
 	 }  
  
 	 p u b l i c   M e m b e r D t o ( i n t   u s e r _ n u m ,   S t r i n g   n a m e ,   S t r i n g   p a s s w o r d ,   S t r i n g   e m a i l ,   S t r i n g   p h o n e ,   S t r i n g   a d d r e s s ,   S t r i n g   d e p a r m e n t ,   S t r i n g   c o m p a n y ,  
 	 	 	 S t r i n g   u _ i d ,   i n t   a u t h k e y )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 	 t h i s . p a s s w o r d   =   p a s s w o r d ;  
 	 	 t h i s . e m a i l   =   e m a i l ;  
 	 	 t h i s . p h o n e   =   p h o n e ;  
 	 	 t h i s . a d d r e s s   =   a d d r e s s ;  
 	 	 t h i s . d e p a r m e n t   =   d e p a r m e n t ;  
 	 	 t h i s . c o m p a n y   =   c o m p a n y ;  
 	 	 t h i s . u _ i d   =   u _ i d ;  
 	 	 t h i s . a u t h k e y   =   a u t h k e y ;  
 	 }  
  
 	 p u b l i c   i n t   g e t U s e r _ n u m ( )   {  
 	 	 r e t u r n   u s e r _ n u m ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t U s e r _ n u m ( i n t   u s e r _ n u m )   {  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t N a m e ( )   {  
 	 	 r e t u r n   n a m e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t N a m e ( S t r i n g   n a m e )   {  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P a s s w o r d ( )   {  
 	 	 r e t u r n   p a s s w o r d ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P a s s w o r d ( S t r i n g   p a s s w o r d )   {  
 	 	 t h i s . p a s s w o r d   =   p a s s w o r d ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t E m a i l ( )   {  
 	 	 r e t u r n   e m a i l ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t E m a i l ( S t r i n g   e m a i l )   {  
 	 	 t h i s . e m a i l   =   e m a i l ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P h o n e ( )   {  
 	 	 r e t u r n   p h o n e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P h o n e ( S t r i n g   p h o n e )   {  
 	 	 t h i s . p h o n e   =   p h o n e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t A d d r e s s ( )   {  
 	 	 r e t u r n   a d d r e s s ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t A d d r e s s ( S t r i n g   a d d r e s s )   {  
 	 	 t h i s . a d d r e s s   =   a d d r e s s ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t D e p a r m e n t ( )   {  
 	 	 r e t u r n   d e p a r m e n t ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t D e p a r m e n t ( S t r i n g   d e p a r m e n t )   {  
 	 	 t h i s . d e p a r m e n t   =   d e p a r m e n t ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t C o m p a n y ( )   {  
 	 	 r e t u r n   c o m p a n y ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t C o m p a n y ( S t r i n g   c o m p a n y )   {  
 	 	 t h i s . c o m p a n y   =   c o m p a n y ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t U _ i d ( )   {  
 	 	 r e t u r n   u _ i d ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t U _ i d ( S t r i n g   u _ i d )   {  
 	 	 t h i s . u _ i d   =   u _ i d ;  
 	 }  
  
 	 p u b l i c   i n t   g e t A u t h k e y ( )   {  
 	 	 r e t u r n   a u t h k e y ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t A u t h k e y ( i n t   a u t h k e y )   {  
 	 	 t h i s . a u t h k e y   =   a u t h k e y ;  
 	 }  
  
 	  
 	  
 }  
 
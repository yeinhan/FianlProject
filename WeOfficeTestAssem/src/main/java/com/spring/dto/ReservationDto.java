p a c k a g e   c o m . s p r i n g . d t o ;  
  
 p u b l i c   c l a s s   R e s e r v a t i o n D t o   {  
 	  
  
 	 p r i v a t e   i n t   r e s e r _ n o ;  
 	   p r i v a t e   S t r i n g   r _ n o ;  
 	   p r i v a t e   S t r i n g   u _ n o ;  
 	   p r i v a t e   S t r i n g   r e s e r ;  
 	   p r i v a t e   S t r i n g   d a y ;  
 	   p r i v a t e   S t r i n g   r o o m ;  
 	   p r i v a t e   S t r i n g   t i m e ;  
 	   / / �}�pȌ�� 
 	   p r i v a t e   S t r i n g   s u b ;  
  
 	 p u b l i c   R e s e r v a t i o n D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   c o n s t r u c t o r   s t u b  
 	 }  
 	 p u b l i c   R e s e r v a t i o n D t o ( i n t   r e s e r _ n o ,   S t r i n g   u _ n o ,   S t r i n g   s u b )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . r e s e r _ n o   =   r e s e r _ n o ;  
 	 	 t h i s . u _ n o   =   u _ n o ;  
 	 	 t h i s . s u b   =   s u b ;  
 	 }  
  
  
 	 p u b l i c   R e s e r v a t i o n D t o ( i n t   r e s e r _ n o ,   S t r i n g   r _ n o ,   S t r i n g   u _ n o ,   S t r i n g   r e s e r ,   S t r i n g   d a y ,   S t r i n g   r o o m ,   S t r i n g   t i m e ,  
 	 	 	 S t r i n g   s u b )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . r e s e r _ n o   =   r e s e r _ n o ;  
 	 	 t h i s . r _ n o   =   r _ n o ;  
 	 	 t h i s . u _ n o   =   u _ n o ;  
 	 	 t h i s . r e s e r   =   r e s e r ;  
 	 	 t h i s . d a y   =   d a y ;  
 	 	 t h i s . r o o m   =   r o o m ;  
 	 	 t h i s . t i m e   =   t i m e ;  
 	 	 t h i s . s u b   =   s u b ;  
 	 }  
  
 	 p u b l i c   R e s e r v a t i o n D t o ( i n t   r e s e r _ n o ,   S t r i n g   u _ n o ,   S t r i n g   r e s e r ,   S t r i n g   d a y )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . r e s e r _ n o   =   r e s e r _ n o ;  
 	 	 t h i s . u _ n o   =   u _ n o ;  
 	 	 t h i s . r e s e r   =   r e s e r ;  
 	 	 t h i s . d a y   =   d a y ;  
 	 }  
 	  
 	 p u b l i c   R e s e r v a t i o n D t o ( i n t   r e s e r _ n o ,   S t r i n g   u _ n o ,   S t r i n g   r e s e r ,   S t r i n g   d a y ,   S t r i n g   s u b )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . r e s e r _ n o   =   r e s e r _ n o ;  
 	 	 t h i s . u _ n o   =   u _ n o ;  
 	 	 t h i s . r e s e r   =   r e s e r ;  
 	 	 t h i s . d a y   =   d a y ;  
 	 	 t h i s . s u b   =   s u b ;  
 	 }  
  
 	 p u b l i c   R e s e r v a t i o n D t o ( S t r i n g   d a y ,   S t r i n g   r o o m ,   S t r i n g   t i m e )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . d a y   =   d a y ;  
 	 	 t h i s . r o o m   =   r o o m ;  
 	 	 t h i s . t i m e   =   t i m e ;  
 	 }  
 	  
 	 p u b l i c   S t r i n g   g e t R _ n o ( )   {  
 	 	 r e t u r n   r _ n o ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t R _ n o ( S t r i n g   r _ n o )   {  
 	 	 t h i s . r _ n o   =   r _ n o ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t S u b ( )   {  
 	 	 r e t u r n   s u b ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t S u b ( S t r i n g   s u b )   {  
 	 	 t h i s . s u b   =   s u b ;  
 	 }  
 	 p u b l i c   i n t   g e t R e s e r _ n o ( )   {  
 	 	 r e t u r n   r e s e r _ n o ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t R e s e r _ n o ( i n t   r e s e r _ n o )   {  
 	 	 t h i s . r e s e r _ n o   =   r e s e r _ n o ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t U _ n o ( )   {  
 	 	 r e t u r n   u _ n o ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t U _ n o ( S t r i n g   u _ n o )   {  
 	 	 t h i s . u _ n o   =   u _ n o ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t R e s e r ( )   {  
 	 	 r e t u r n   r e s e r ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t R e s e r ( S t r i n g   r e s e r )   {  
 	 	 t h i s . r e s e r   =   r e s e r ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t D a y ( )   {  
 	 	 r e t u r n   d a y ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t D a y ( S t r i n g   d a y )   {  
 	 	 t h i s . d a y   =   d a y ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t R o o m ( )   {  
 	 	 r e t u r n   r o o m ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t R o o m ( S t r i n g   r o o m )   {  
 	 	 t h i s . r o o m   =   r o o m ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t T i m e ( )   {  
 	 	 r e t u r n   t i m e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t T i m e ( S t r i n g   t i m e )   {  
 	 	 t h i s . t i m e   =   t i m e ;  
 	 }  
 	  
 	  
 }  
 
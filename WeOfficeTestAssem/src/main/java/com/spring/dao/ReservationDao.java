p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   c o m . s p r i n g . d t o . R e s e r v a t i o n D t o ;  
  
 p u b l i c   i n t e r f a c e   R e s e r v a t i o n D a o   {  
 	 S t r i n g   N A M E S P A C E   =   " r e s e r v a t i o n . " ;  
  
 	 p u b l i c   i n t   i n s e r t ( R e s e r v a t i o n D t o   d t o ) ;  
 	  
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   C h k ( S t r i n g   d a y ) ;  
 	  
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   m y r e s e r ( S t r i n g   u s e r _ n u m ) ;  
  
 	 p u b l i c   i n t   r _ d e l e t e ( S t r i n g   s u b ,   S t r i n g   u _ n o ,   i n t   r e s e r _ n o ) ;  
  
  
 	  
  
  
  
 	  
  
 }  
 
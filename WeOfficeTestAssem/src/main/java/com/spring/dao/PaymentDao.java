p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . P a y m e n t D t o ;  
  
 p u b l i c   i n t e r f a c e   P a y m e n t D a o   {  
 	  
 	 S t r i n g   N A M E S P A C E   =   " p a y m e n t . " ;  
 	  
 	 p u b l i c   i n t   c o u n t A l l u s e r ( ) ;  
 	 p u b l i c   i n t   p a y i n s e r t ( P a y m e n t D t o   d t o ) ;  
 	 p u b l i c   P a y m e n t D t o   s e l e c t P a y O n e ( S t r i n g   u s e r _ n u m ) ;  
 	  
 	 p u b l i c   L i s t < M e m b e r D t o >   s e l e c t M e m b e r ( ) ;  
 	 p u b l i c   i n t   u p d a t e u s e r ( M a p < S t r i n g ,   O b j e c t >   m a p ) ;  
 	 p u b l i c   i n t   a v a i l a b l e P a g e ( S t r i n g   u s e r _ n u m ) ;  
 	  
 }  
 
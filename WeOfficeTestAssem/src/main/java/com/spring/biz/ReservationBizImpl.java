p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . R e s e r v a t i o n D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . R e s e r v a t i o n D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   R e s e r v a t i o n B i z I m p l   i m p l e m e n t s   R e s e r v a t i o n B i z   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   R e s e r v a t i o n D a o   d a o ;  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( R e s e r v a t i o n D t o   d t o )   {  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   m e t h o d   s t u b  
 	 	 r e t u r n   d a o . i n s e r t ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   C h k ( S t r i n g   d a y )   {  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   m e t h o d   s t u b  
 	 	 r e t u r n   d a o . C h k ( d a y ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   m y r e s e r ( S t r i n g   u s e r _ n u m )   {  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   m e t h o d   s t u b  
 	 	 r e t u r n   d a o . m y r e s e r ( u s e r _ n u m ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   r _ d e l e t e ( S t r i n g   s u b , S t r i n g   u _ n o ,   i n t   r e s e r _ n o )   {  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   m e t h o d   s t u b  
 	 	 r e t u r n   d a o . r _ d e l e t e ( s u b , u _ n o , r e s e r _ n o ) ;  
 	 }  
  
 	  
 	  
 }  
 
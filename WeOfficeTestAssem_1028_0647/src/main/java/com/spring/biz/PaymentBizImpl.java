p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . P a y m e n t D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . P a y m e n t D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   P a y m e n t B i z I m p l   i m p l e m e n t s   P a y m e n t B i z   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P a y m e n t D a o   p a y d a o ;  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   c o u n t A l l u s e r ( )   {  
 	 	 r e t u r n   p a y d a o . c o u n t A l l u s e r ( ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   p a y i n s e r t ( P a y m e n t D t o   d t o )   {  
 	 	 r e t u r n   p a y d a o . p a y i n s e r t ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   P a y m e n t D t o   s e l e c t P a y O n e ( S t r i n g   u s e r _ n u m )   {  
 	 	 r e t u r n   p a y d a o . s e l e c t P a y O n e ( u s e r _ n u m ) ;  
 	 }  
 	  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < M e m b e r D t o >   s e l e c t M e m b e r ( )   {  
 	 	 r e t u r n   p a y d a o . s e l e c t M e m b e r ( ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e u s e r ( M a p < S t r i n g ,   O b j e c t >   m a p )   {  
 	 	 r e t u r n   p a y d a o . u p d a t e u s e r ( m a p ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   a v a i l a b l e P a g e ( S t r i n g   u s e r _ n u m )   {  
 	 	 r e t u r n   p a y d a o . a v a i l a b l e P a g e ( u s e r _ n u m ) ;  
 	 }  
  
 }  
 
p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . W o r k S p a c e D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . T a s k L i s t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . U p l o a d F i l e ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   W o r k S p a c e B i z I m p l   i m p l e m e n t s   W o r k S p a c e B i z   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   W o r k S p a c e D a o   w k s d a o ;  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < W o r k S p a c e D t o >   s e l e c t L i s t ( S t r i n g   p _ i d )   {  
 	 	 r e t u r n   w k s d a o . s e l e c t L i s t ( p _ i d ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( W o r k S p a c e D t o   d t o )   {  
 	 	 r e t u r n   w k s d a o . i n s e r t ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e ( W o r k S p a c e D t o   d t o )   {  
 	 	 r e t u r n   w k s d a o . u p d a t e ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   d e l e t e ( W o r k S p a c e D t o   d t o )   {  
 	 	 r e t u r n   w k s d a o . d e l e t e ( d t o ) ;  
 	 }  
 	  
  
 	 @ O v e r r i d e  
 	 p u b l i c   P r o j e c t D t o   s e l e c t p j t O n e ( S t r i n g   p _ i d )   {  
 	 	 r e t u r n   w k s d a o . s e l e c t p j t O n e ( p _ i d ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < T a s k L i s t D t o >   s e l e c t T a s k L i s t ( )   {  
 	 	 r e t u r n   w k s d a o . s e l e c t T a s k L i s t ( ) ;  
 	 }  
  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   f i l e i n s e r t ( U p l o a d F i l e   f i l e O b j )   {  
 	 	 r e t u r n   w k s d a o . f i l e i n s e r t ( f i l e O b j ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < U p l o a d F i l e >   s e l e c t F i l e L i s t ( S t r i n g   p _ i d )   {  
 	 	 r e t u r n   w k s d a o . s e l e c t F i l e L i s t ( p _ i d ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   f i l e d e l e t e ( U p l o a d F i l e   d t o )   {  
 	 	 r e t u r n   w k s d a o . f i l e d e l e t e ( d t o ) ;  
 	 }  
  
 }  
 
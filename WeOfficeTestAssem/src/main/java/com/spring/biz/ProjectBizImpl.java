p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . P r o j e c t D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   P r o j e c t B i z I m p l   i m p l e m e n t s   P r o j e c t B i z   {  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P r o j e c t D a o   p j t d a o ;  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t A l l ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t A l l ( ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   P r o j e c t D t o   s e l e c t O n e ( P r o j e c t D t o   d t o )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t O n e ( d t o ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( P r o j e c t D t o   d t o )   {  
 	 	 r e t u r n   p j t d a o . i n s e r t ( d t o ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e ( P r o j e c t D t o   d t o )   {  
 	 	 r e t u r n   p j t d a o . u p d a t e ( d t o ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   d e l e t e ( P r o j e c t D t o   d t o )   {  
 	 	 r e t u r n   p j t d a o . d e l e t e ( d t o ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t N e w R e g i P j t ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t N e w R e g i P j t ( ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t P j t N o t i c e ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t P j t N o t i c e ( ) ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t P j t N o t i c e _ D e s c ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t P j t N o t i c e _ D e s c ( ) ;  
 	 }  
  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < M e m b e r D t o >   s e l e c t M e m b e r ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t M e m b e r ( ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < W o r k S p a c e D t o >   s e l e c t A l l W k s ( )   {  
 	 	 r e t u r n   p j t d a o . s e l e c t A l l W k s ( ) ;  
 	 }  
  
 }  
 
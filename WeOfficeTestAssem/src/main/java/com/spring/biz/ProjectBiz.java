p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 p u b l i c   i n t e r f a c e   P r o j e c t B i z   {  
  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t A l l ( ) ;  
 	 p u b l i c   P r o j e c t D t o   s e l e c t O n e ( P r o j e c t D t o   d t o ) ;  
 	 p u b l i c   i n t   i n s e r t ( P r o j e c t D t o   d t o ) ;  
 	 p u b l i c   i n t   u p d a t e ( P r o j e c t D t o   d t o ) ;  
 	 p u b l i c   i n t   d e l e t e ( P r o j e c t D t o   d t o ) ;  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t N e w R e g i P j t ( ) ;  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t P j t N o t i c e ( ) ;  
 	 p u b l i c   L i s t < P r o j e c t D t o >   s e l e c t P j t N o t i c e _ D e s c ( ) ;  
 	  
 	 p u b l i c   L i s t < M e m b e r D t o >   s e l e c t M e m b e r ( ) ;  
 	 p u b l i c   L i s t < W o r k S p a c e D t o >   s e l e c t A l l W k s ( ) ;  
 	  
 }  
 
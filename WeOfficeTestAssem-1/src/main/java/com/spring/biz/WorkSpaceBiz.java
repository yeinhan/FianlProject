p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . T a s k L i s t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . U p l o a d F i l e ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 p u b l i c   i n t e r f a c e   W o r k S p a c e B i z   {  
 	  
 	 p u b l i c   L i s t < W o r k S p a c e D t o >   s e l e c t L i s t ( S t r i n g   p _ i d ) ;  
 	 p u b l i c   i n t   i n s e r t ( W o r k S p a c e D t o   d t o ) ;  
 	 p u b l i c   i n t   u p d a t e ( W o r k S p a c e D t o   d t o ) ;  
 	 p u b l i c   i n t   d e l e t e ( W o r k S p a c e D t o   d t o ) ;  
 	  
 	 p u b l i c   P r o j e c t D t o   s e l e c t p j t N a m e ( S t r i n g   p _ i d ) ;  
 	 p u b l i c   L i s t < T a s k L i s t D t o >   s e l e c t T a s k L i s t ( ) ;  
 	  
 	 p u b l i c   i n t   f i l e i n s e r t ( U p l o a d F i l e   f i l e O b j ) ;  
 	 p u b l i c   L i s t < U p l o a d F i l e >   s e l e c t F i l e L i s t ( S t r i n g   p _ i d ) ;  
 	 p u b l i c   i n t   f i l e d e l e t e ( U p l o a d F i l e   d t o ) ;  
 	  
 }  
 
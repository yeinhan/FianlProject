p a c k a g e   c o m . s p r i n g . d t o ;  
  
 p u b l i c   c l a s s   W o r k S p a c e D t o   {  
 	  
 	 p r i v a t e   S t r i n g   w _ i d ;  
 	 p r i v a t e   S t r i n g   w _ t i t l e ;  
 	 p r i v a t e   S t r i n g   p _ i d ;  
 	  
 	 p u b l i c   W o r k S p a c e D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
  
 	 p u b l i c   W o r k S p a c e D t o ( S t r i n g   w _ i d ,   S t r i n g   w _ t i t l e ,   S t r i n g   p _ i d )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . w _ i d   =   w _ i d ;  
 	 	 t h i s . w _ t i t l e   =   w _ t i t l e ;  
 	 	 t h i s . p _ i d   =   p _ i d ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t W _ i d ( )   {  
 	 	 r e t u r n   w _ i d ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t W _ i d ( S t r i n g   w _ i d )   {  
 	 	 t h i s . w _ i d   =   w _ i d ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t W _ t i t l e ( )   {  
 	 	 r e t u r n   w _ t i t l e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t W _ t i t l e ( S t r i n g   w _ t i t l e )   {  
 	 	 t h i s . w _ t i t l e   =   w _ t i t l e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ i d ( )   {  
 	 	 r e t u r n   p _ i d ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ i d ( S t r i n g   p _ i d )   {  
 	 	 t h i s . p _ i d   =   p _ i d ;  
 	 }  
 	  
 }  
 
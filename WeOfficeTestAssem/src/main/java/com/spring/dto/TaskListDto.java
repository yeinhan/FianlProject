p a c k a g e   c o m . s p r i n g . d t o ;  
  
 i m p o r t   j a v a . u t i l . D a t e ;  
  
 p u b l i c   c l a s s   T a s k L i s t D t o   {  
 	  
 	 p r i v a t e   S t r i n g   t _ i d ;  
 	 p r i v a t e   S t r i n g   w _ i d ;  
 	 p r i v a t e   S t r i n g   w _ c o n t e n t ;  
 	 p r i v a t e   i n t   c h k _ y n ;  
 	  
 	 p u b l i c   T a s k L i s t D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
  
 	 p u b l i c   T a s k L i s t D t o ( S t r i n g   t _ i d ,   S t r i n g   w _ i d ,   S t r i n g   w _ c o n t e n t ,   i n t   c h k _ y n )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . t _ i d   =   t _ i d ;  
 	 	 t h i s . w _ i d   =   w _ i d ;  
 	 	 t h i s . w _ c o n t e n t   =   w _ c o n t e n t ;  
 	 	 t h i s . c h k _ y n   =   c h k _ y n ;  
 	 }  
 	  
 	 p u b l i c   S t r i n g   g e t T _ i d ( )   {  
 	 	 r e t u r n   t _ i d ;  
 	 }  
 	 p u b l i c   v o i d   s e t T _ i d ( S t r i n g   t _ i d )   {  
 	 	 t h i s . t _ i d   =   t _ i d ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t W _ i d ( )   {  
 	 	 r e t u r n   w _ i d ;  
 	 }  
 	 p u b l i c   v o i d   s e t W _ i d ( S t r i n g   w _ i d )   {  
 	 	 t h i s . w _ i d   =   w _ i d ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t W _ c o n t e n t ( )   {  
 	 	 r e t u r n   w _ c o n t e n t ;  
 	 }  
 	 p u b l i c   v o i d   s e t W _ c o n t e n t ( S t r i n g   w _ c o n t e n t )   {  
 	 	 t h i s . w _ c o n t e n t   =   w _ c o n t e n t ;  
 	 }  
 	 p u b l i c   i n t   g e t C h k _ y n ( )   {  
 	 	 r e t u r n   c h k _ y n ;  
 	 }  
 	 p u b l i c   v o i d   s e t C h k _ y n ( i n t   c h k _ y n )   {  
 	 	 t h i s . c h k _ y n   =   c h k _ y n ;  
 	 }  
  
 }  
 
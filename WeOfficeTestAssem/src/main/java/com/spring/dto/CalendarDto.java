p a c k a g e   c o m . s p r i n g . d t o ;  
  
 p u b l i c   c l a s s   C a l e n d a r D t o   {  
 	 p r i v a t e   S t r i n g   _ i d ;  
 	       p r i v a t e   S t r i n g   t i t l e ;  
 	       p r i v a t e   S t r i n g   s t a r t ;  
 	       p r i v a t e   S t r i n g   e n d ;  
 	       p r i v a t e   S t r i n g   d e s c r i p t i o n ;  
 	       p r i v a t e   S t r i n g   t y p e ;  
 	       p r i v a t e   S t r i n g   u s e r n a m e ;  
 	 p u b l i c   C a l e n d a r D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
 	 p u b l i c   C a l e n d a r D t o ( S t r i n g   _ i d ,   S t r i n g   t i t l e ,   S t r i n g   d e s c r i p t i o n ,   S t r i n g   t y p e ,   S t r i n g   u s e r n a m e ,   S t r i n g   s t a r t ,  
 	 	 	 S t r i n g   e n d )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . _ i d   =   _ i d ;  
 	 	 t h i s . t i t l e   =   t i t l e ;  
 	 	 t h i s . s t a r t   =   s t a r t ;  
 	 	 t h i s . e n d   =   e n d ;  
 	 	 t h i s . d e s c r i p t i o n   =   d e s c r i p t i o n ;  
 	 	 t h i s . t y p e   =   t y p e ;  
 	 	 t h i s . u s e r n a m e   =   u s e r n a m e ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t _ i d ( )   {  
 	 	 r e t u r n   _ i d ;  
 	 }  
 	 p u b l i c   v o i d   s e t _ i d ( S t r i n g   _ i d )   {  
 	 	 t h i s . _ i d   =   _ i d ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t T i t l e ( )   {  
 	 	 r e t u r n   t i t l e ;  
 	 }  
 	 p u b l i c   v o i d   s e t T i t l e ( S t r i n g   t i t l e )   {  
 	 	 t h i s . t i t l e   =   t i t l e ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t S t a r t ( )   {  
 	 	 r e t u r n   s t a r t ;  
 	 }  
 	 p u b l i c   v o i d   s e t S t a r t ( S t r i n g   s t a r t )   {  
 	 	 t h i s . s t a r t   =   s t a r t ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t E n d ( )   {  
 	 	 r e t u r n   e n d ;  
 	 }  
 	 p u b l i c   v o i d   s e t E n d ( S t r i n g   e n d )   {  
 	 	 t h i s . e n d   =   e n d ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t D e s c r i p t i o n ( )   {  
 	 	 r e t u r n   d e s c r i p t i o n ;  
 	 }  
 	 p u b l i c   v o i d   s e t D e s c r i p t i o n ( S t r i n g   d e s c r i p t i o n )   {  
 	 	 t h i s . d e s c r i p t i o n   =   d e s c r i p t i o n ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t T y p e ( )   {  
 	 	 r e t u r n   t y p e ;  
 	 }  
 	 p u b l i c   v o i d   s e t T y p e ( S t r i n g   t y p e )   {  
 	 	 t h i s . t y p e   =   t y p e ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t U s e r n a m e ( )   {  
 	 	 r e t u r n   u s e r n a m e ;  
 	 }  
 	 p u b l i c   v o i d   s e t U s e r n a m e ( S t r i n g   u s e r n a m e )   {  
 	 	 t h i s . u s e r n a m e   =   u s e r n a m e ;  
 	 }  
 	  
 	  
 	  
 	  
 }  
 
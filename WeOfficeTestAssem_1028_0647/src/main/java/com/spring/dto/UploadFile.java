p a c k a g e   c o m . s p r i n g . d t o ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . m u l t i p a r t . M u l t i p a r t F i l e ;  
  
 p u b l i c   c l a s s   U p l o a d F i l e   {  
 	  
 	 p r i v a t e   S t r i n g   p _ i d ;  
 	 p r i v a t e   S t r i n g   n a m e ;  
 	 p r i v a t e   M u l t i p a r t F i l e   m p f i l e ;  
 	  
 	 p u b l i c   U p l o a d F i l e ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
  
 	 p u b l i c   U p l o a d F i l e ( S t r i n g   p _ i d ,   S t r i n g   n a m e ,   M u l t i p a r t F i l e   m p f i l e )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . p _ i d   =   p _ i d ;  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 	 t h i s . m p f i l e   =   m p f i l e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ i d ( )   {  
 	 	 r e t u r n   p _ i d ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ i d ( S t r i n g   p _ i d )   {  
 	 	 t h i s . p _ i d   =   p _ i d ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t N a m e ( )   {  
 	 	 r e t u r n   n a m e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t N a m e ( S t r i n g   n a m e )   {  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 }  
  
 	 p u b l i c   M u l t i p a r t F i l e   g e t M p f i l e ( )   {  
 	 	 r e t u r n   m p f i l e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t M p f i l e ( M u l t i p a r t F i l e   m p f i l e )   {  
 	 	 t h i s . m p f i l e   =   m p f i l e ;  
 	 }  
 	  
 }  
 
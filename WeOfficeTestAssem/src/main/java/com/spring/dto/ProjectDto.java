p a c k a g e   c o m . s p r i n g . d t o ;  
  
 p u b l i c   c l a s s   P r o j e c t D t o   {  
 	  
 	 p r i v a t e   S t r i n g   p _ i d ;  
 	 p r i v a t e   S t r i n g   p _ t i t l e ;  
 	 p r i v a t e   S t r i n g   p _ i n f o ;  
 	 p r i v a t e   S t r i n g   p _ p u b ;  
 	 p r i v a t e   S t r i n g   u s e r _ n u m ;  
 	 p r i v a t e   S t r i n g   p _ s t a r t d a t e ;  
 	 p r i v a t e   S t r i n g   p _ e n d d a t e ;  
 	  
 	 p u b l i c   P r o j e c t D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
 	  
 	 p u b l i c   P r o j e c t D t o ( S t r i n g   p _ i d ,   S t r i n g   p _ t i t l e ,   S t r i n g   p _ i n f o ,   S t r i n g   p _ p u b ,   S t r i n g   u s e r _ n u m ,   S t r i n g   p _ s t a r t d a t e ,  
 	 	 	 S t r i n g   p _ e n d d a t e )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . p _ i d   =   p _ i d ;  
 	 	 t h i s . p _ t i t l e   =   p _ t i t l e ;  
 	 	 t h i s . p _ i n f o   =   p _ i n f o ;  
 	 	 t h i s . p _ p u b   =   p _ p u b ;  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 	 t h i s . p _ s t a r t d a t e   =   p _ s t a r t d a t e ;  
 	 	 t h i s . p _ e n d d a t e   =   p _ e n d d a t e ;  
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
 	 p u b l i c   S t r i n g   g e t P _ t i t l e ( )   {  
 	 	 r e t u r n   p _ t i t l e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ t i t l e ( S t r i n g   p _ t i t l e )   {  
 	 	 t h i s . p _ t i t l e   =   p _ t i t l e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ i n f o ( )   {  
 	 	 r e t u r n   p _ i n f o ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ i n f o ( S t r i n g   p _ i n f o )   {  
 	 	 t h i s . p _ i n f o   =   p _ i n f o ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ p u b ( )   {  
 	 	 r e t u r n   p _ p u b ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ p u b ( S t r i n g   p _ p u b )   {  
 	 	 t h i s . p _ p u b   =   p _ p u b ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t U s e r _ n u m ( )   {  
 	 	 r e t u r n   u s e r _ n u m ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t U s e r _ n u m ( S t r i n g   u s e r _ n u m )   {  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ s t a r t d a t e ( )   {  
 	 	 r e t u r n   p _ s t a r t d a t e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ s t a r t d a t e ( S t r i n g   p _ s t a r t d a t e )   {  
 	 	 t h i s . p _ s t a r t d a t e   =   p _ s t a r t d a t e ;  
 	 }  
  
 	 p u b l i c   S t r i n g   g e t P _ e n d d a t e ( )   {  
 	 	 r e t u r n   p _ e n d d a t e ;  
 	 }  
  
 	 p u b l i c   v o i d   s e t P _ e n d d a t e ( S t r i n g   p _ e n d d a t e )   {  
 	 	 t h i s . p _ e n d d a t e   =   p _ e n d d a t e ;  
 	 }  
 	  
 }  
 
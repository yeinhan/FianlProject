p a c k a g e   c o m . s p r i n g . d t o ;  
  
 i m p o r t   j a v a . u t i l . D a t e ;  
  
 p u b l i c   c l a s s   P a y m e n t D t o   {  
 	  
 	 p r i v a t e   S t r i n g   u s e r _ n u m ;  
 	 p r i v a t e   S t r i n g   n a m e ;  
 	 p r i v a t e   S t r i n g   p _ m o n t h s ; 	 / /   ������� 
 	 p r i v a t e   S t r i n g   p _ n u m b e r ; 	 / /   ���x��� 
 	 p r i v a t e   S t r i n g   p _ a m o u n t ; 	 / /   ����a� 
 	 p r i v a t e   D a t e   p _ s t a r t d a t e ; 	 / /   ��|ǐ� 
 	 p r i v a t e   D a t e   p _ e n d d a t e ; 	 	 / /   ̸̹|ǐ� 
 	  
 	 p u b l i c   P a y m e n t D t o ( )   {  
 	 	 s u p e r ( ) ;  
 	 }  
 	  
 	 p u b l i c   P a y m e n t D t o ( S t r i n g   u s e r _ n u m ,   S t r i n g   n a m e ,   S t r i n g   p _ m o n t h s ,   S t r i n g   p _ n u m b e r ,   S t r i n g   p _ a m o u n t ,  
 	 	 	 D a t e   p _ s t a r t d a t e ,   D a t e   p _ e n d d a t e )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 	 t h i s . p _ m o n t h s   =   p _ m o n t h s ;  
 	 	 t h i s . p _ n u m b e r   =   p _ n u m b e r ;  
 	 	 t h i s . p _ a m o u n t   =   p _ a m o u n t ;  
 	 	 t h i s . p _ s t a r t d a t e   =   p _ s t a r t d a t e ;  
 	 	 t h i s . p _ e n d d a t e   =   p _ e n d d a t e ;  
 	 }  
 	  
 	 p u b l i c   S t r i n g   g e t U s e r _ n u m ( )   {  
 	 	 r e t u r n   u s e r _ n u m ;  
 	 }  
 	 p u b l i c   v o i d   s e t U s e r _ n u m ( S t r i n g   u s e r _ n u m )   {  
 	 	 t h i s . u s e r _ n u m   =   u s e r _ n u m ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t N a m e ( )   {  
 	 	 r e t u r n   n a m e ;  
 	 }  
 	 p u b l i c   v o i d   s e t N a m e ( S t r i n g   n a m e )   {  
 	 	 t h i s . n a m e   =   n a m e ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t P _ m o n t h s ( )   {  
 	 	 r e t u r n   p _ m o n t h s ;  
 	 }  
 	 p u b l i c   v o i d   s e t P _ m o n t h s ( S t r i n g   p _ m o n t h s )   {  
 	 	 t h i s . p _ m o n t h s   =   p _ m o n t h s ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t P _ n u m b e r ( )   {  
 	 	 r e t u r n   p _ n u m b e r ;  
 	 }  
 	 p u b l i c   v o i d   s e t P _ n u m b e r ( S t r i n g   p _ n u m b e r )   {  
 	 	 t h i s . p _ n u m b e r   =   p _ n u m b e r ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t P _ a m o u n t ( )   {  
 	 	 r e t u r n   p _ a m o u n t ;  
 	 }  
 	 p u b l i c   v o i d   s e t P _ a m o u n t ( S t r i n g   p _ a m o u n t )   {  
 	 	 t h i s . p _ a m o u n t   =   p _ a m o u n t ;  
 	 }  
 	 p u b l i c   D a t e   g e t P _ s t a r t d a t e ( )   {  
 	 	 r e t u r n   p _ s t a r t d a t e ;  
 	 }  
 	 p u b l i c   v o i d   s e t P _ s t a r t d a t e ( D a t e   p _ s t a r t d a t e )   {  
 	 	 t h i s . p _ s t a r t d a t e   =   p _ s t a r t d a t e ;  
 	 }  
 	 p u b l i c   D a t e   g e t P _ e n d d a t e ( )   {  
 	 	 r e t u r n   p _ e n d d a t e ;  
 	 }  
 	 p u b l i c   v o i d   s e t P _ e n d d a t e ( D a t e   p _ e n d d a t e )   {  
 	 	 t h i s . p _ e n d d a t e   =   p _ e n d d a t e ;  
 	 }  
 	  
 }  
 
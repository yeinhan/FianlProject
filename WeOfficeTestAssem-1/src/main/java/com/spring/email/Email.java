p a c k a g e   c o m . s p r i n g . e m a i l ;  
  
 p u b l i c   c l a s s   E m a i l   {  
 	 p r i v a t e   S t r i n g   s u b j e c t ;  
 	 p r i v a t e   S t r i n g   c o n t e n t ;  
 	 p r i v a t e   S t r i n g   r e c e i v e r ;  
 	 p u b l i c   E m a i l ( )   {  
 	 	 s u p e r ( ) ;  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   c o n s t r u c t o r   s t u b  
 	 }  
 	 p u b l i c   E m a i l ( S t r i n g   s u b j e c t ,   S t r i n g   c o n t e n t ,   S t r i n g   r e c e i v e r )   {  
 	 	 s u p e r ( ) ;  
 	 	 t h i s . s u b j e c t   =   s u b j e c t ;  
 	 	 t h i s . c o n t e n t   =   c o n t e n t ;  
 	 	 t h i s . r e c e i v e r   =   r e c e i v e r ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t S u b j e c t ( )   {  
 	 	 r e t u r n   s u b j e c t ;  
 	 }  
 	 p u b l i c   v o i d   s e t S u b j e c t ( S t r i n g   s u b j e c t )   {  
 	 	 t h i s . s u b j e c t   =   s u b j e c t ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t C o n t e n t ( )   {  
 	 	 r e t u r n   c o n t e n t ;  
 	 }  
 	 p u b l i c   v o i d   s e t C o n t e n t ( S t r i n g   c o n t e n t )   {  
 	 	 t h i s . c o n t e n t   =   c o n t e n t ;  
 	 }  
 	 p u b l i c   S t r i n g   g e t R e c e i v e r ( )   {  
 	 	 r e t u r n   r e c e i v e r ;  
 	 }  
 	 p u b l i c   v o i d   s e t R e c e i v e r ( S t r i n g   r e c e i v e r )   {  
 	 	 t h i s . r e c e i v e r   =   r e c e i v e r ;  
 	 }  
 	 @ O v e r r i d e  
 	 p u b l i c   S t r i n g   t o S t r i n g ( )   {  
 	 	 r e t u r n   " E m a i l   [ s u b j e c t = "   +   s u b j e c t   +   " ,   c o n t e n t = "   +   c o n t e n t   +   " ,   r e c e i v e r = "   +   r e c e i v e r   +   " ] " ;  
 	 }  
 	  
 	  
 	  
 	  
 	  
 }  
 
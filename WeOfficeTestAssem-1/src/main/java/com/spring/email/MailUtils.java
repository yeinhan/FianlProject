p a c k a g e   c o m . s p r i n g . e m a i l ;  
  
 i m p o r t   j a v a . i o . U n s u p p o r t e d E n c o d i n g E x c e p t i o n ;  
  
 i m p o r t   j a v a x . a c t i v a t i o n . D a t a S o u r c e ;  
 i m p o r t   j a v a x . m a i l . M e s s a g i n g E x c e p t i o n ;  
 i m p o r t   j a v a x . m a i l . i n t e r n e t . M i m e M e s s a g e ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . j a v a m a i l . J a v a M a i l S e n d e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . j a v a m a i l . M i m e M e s s a g e H e l p e r ;  
  
 p u b l i c   c l a s s   M a i l U t i l s   {  
 	   p r i v a t e   J a v a M a i l S e n d e r   m a i l S e n d e r ;  
 	         p r i v a t e   M i m e M e s s a g e   m e s s a g e ;  
 	         p r i v a t e   M i m e M e s s a g e H e l p e r   m e s s a g e H e l p e r ;  
  
 	         p u b l i c   M a i l U t i l s ( J a v a M a i l S e n d e r   m a i l S e n d e r )   t h r o w s   M e s s a g i n g E x c e p t i o n   {  
 	                 t h i s . m a i l S e n d e r   =   m a i l S e n d e r ;  
 	                 m e s s a g e   =   t h i s . m a i l S e n d e r . c r e a t e M i m e M e s s a g e ( ) ;  
 	                 m e s s a g e H e l p e r   =   n e w   M i m e M e s s a g e H e l p e r ( m e s s a g e ,   t r u e ,   " U T F - 8 " ) ;  
 	         }  
  
 	         p u b l i c   v o i d   s e t S u b j e c t ( S t r i n g   s u b j e c t )   t h r o w s   M e s s a g i n g E x c e p t i o n   {  
 	                 m e s s a g e H e l p e r . s e t S u b j e c t ( s u b j e c t ) ;  
 	         }  
  
 	         p u b l i c   v o i d   s e t T e x t ( S t r i n g   h t m l C o n t e n t )   t h r o w s   M e s s a g i n g E x c e p t i o n   {  
 	                 m e s s a g e H e l p e r . s e t T e x t ( h t m l C o n t e n t ,   t r u e ) ;  
 	         }  
  
 	         p u b l i c   v o i d   s e t F r o m ( S t r i n g   e m a i l ,   S t r i n g   n a m e )   t h r o w s   U n s u p p o r t e d E n c o d i n g E x c e p t i o n ,   M e s s a g i n g E x c e p t i o n   {  
 	                 m e s s a g e H e l p e r . s e t F r o m ( e m a i l ,   n a m e ) ;  
 	         }  
  
 	         p u b l i c   v o i d   s e t T o ( S t r i n g   e m a i l )   t h r o w s   M e s s a g i n g E x c e p t i o n   {  
 	                 m e s s a g e H e l p e r . s e t T o ( e m a i l ) ;  
 	         }  
  
 	         p u b l i c   v o i d   a d d I n l i n e ( S t r i n g   c o n t e n t I d ,   D a t a S o u r c e   d a t a S o u r c e )   t h r o w s   M e s s a g i n g E x c e p t i o n   {  
 	                 m e s s a g e H e l p e r . a d d I n l i n e ( c o n t e n t I d ,   d a t a S o u r c e ) ;  
 	         }  
  
 	         p u b l i c   v o i d   s e n d ( )   {  
 	                 m a i l S e n d e r . s e n d ( m e s s a g e ) ;  
 	         }  
 }  
 
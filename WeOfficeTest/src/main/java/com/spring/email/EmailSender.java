p a c k a g e   c o m . s p r i n g . e m a i l ;  
  
 i m p o r t   j a v a x . m a i l . M e s s a g i n g E x c e p t i o n ;  
 i m p o r t   j a v a x . m a i l . i n t e r n e t . I n t e r n e t A d d r e s s ;  
 i m p o r t   j a v a x . m a i l . i n t e r n e t . M i m e M e s s a g e ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . M a i l E x c e p t i o n ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . j a v a m a i l . J a v a M a i l S e n d e r ;  
  
 p u b l i c   c l a s s   E m a i l S e n d e r   {  
  
 	 @ A u t o w i r e d  
 	 p r o t e c t e d   J a v a M a i l S e n d e r   m a i l S e n d e r ;  
  
 	 p u b l i c   v o i d   s e n d M a i l ( E m a i l   e m a i l )   {  
  
 	 	  
 	 	 M i m e M e s s a g e   m s g   =   m a i l S e n d e r . c r e a t e M i m e M e s s a g e ( ) ;  
  
 	 	 t r y   {  
 	 	 	 m s g . s e t S u b j e c t ( e m a i l . g e t S u b j e c t ( ) ) ;  
 	 	 	 m s g . s e t T e x t ( e m a i l . g e t C o n t e n t ( ) ) ;  
 	 	 	 m s g . s e t R e c i p i e n t s ( M i m e M e s s a g e . R e c i p i e n t T y p e . T O ,   I n t e r n e t A d d r e s s . p a r s e ( e m a i l . g e t R e c e i v e r ( ) ) ) ;  
 	 	 	  
  
 	 	 }   c a t c h   ( M e s s a g i n g E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " M e s s a g i n g E c e p t i o n " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
  
 	 	 t r y   {  
 	 	 	 m a i l S e n d e r . s e n d ( m s g ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " D� ���8�  T�|�  ����0�  1���! " ) ;  
 	 	 }   c a t c h   ( M a i l E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " M a i l E x c e p t i o n ���" ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
  
 	 }  
 }  
 
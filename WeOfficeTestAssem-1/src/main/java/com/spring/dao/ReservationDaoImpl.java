p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
  
 i m p o r t   c o m . s p r i n g . d t o . B o a r d D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . R e s e r v a t i o n D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   R e s e r v a t i o n D a o I m p l   i m p l e m e n t s   R e s e r v a t i o n D a o   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
  
 	  
 	 / / �}����   ȥ� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( R e s e r v a t i o n D t o   d t o )   {  
 	 	  
 	 S y s t e m . o u t . p r i n t l n ( " d d d d d d d d d d d d d d d d d " ) ;  
 	  
 	 i n t   r e s =   0 ;  
 	 S y s t e m . o u t . p r i n t l n ( d t o . g e t R e s e r ( ) ) ;  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " i n s e r t " , d t o ) ;  
 	 	 	  
 	 	 	  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   i n s e r t   " ) ;  
 	 	 	 / /   T O D O   A u t o - g e n e r a t e d   c a t c h   b l o c k  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 r e t u r n   r e s ;  
 	 }  
 	  
 	  
   / / �}�pȌ� 
 	 @ O v e r r i d e    
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   C h k ( S t r i n g   d a y )   {  
 	 	 L i s t < R e s e r v a t i o n D t o >   C h k l i s t   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( d a y ) ;  
 	 	 t r y   {  
 	 	 	 C h k l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " C h k " , d a y ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ] : C h k " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	  
 	 	 r e t u r n   C h k l i s t ;  
 	 }  
 	  
 	  
 	  
  
 	  
 	  
 	  
 	  
 	  
 	  
  
 }  
 
p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . T a s k L i s t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   T a s k L i s t D a o I m p l   i m p l e m e n t s   T a s k L i s t D a o   {  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   t a s k i n s e r t ( T a s k L i s t D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " t a s k i n s e r t " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   t a s k   i n s e r t " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   t a s k d e l e t e ( T a s k L i s t D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E + " t a s k d e l e t e " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   t a s k   d e l e t e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e c h k _ y ( T a s k L i s t D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " u p d a t e c h k _ y " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   t a s k   u p d a t e   -   c h k _ y " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e c h k _ n ( T a s k L i s t D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " u p d a t e c h k _ n " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   t a s k   u p d a t e   -   c h k _ n " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 }  
 
p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . t e x t . S i m p l e D a t e F o r m a t ;  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . D a t e ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u t i l . S t r i n g U t i l s ;  
  
 i m p o r t   c o m . s p r i n g . d t o . R e s e r v a t i o n D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   R e s e r v a t i o n D a o I m p l   i m p l e m e n t s   R e s e r v a t i o n D a o   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
  
 	  
 	 / / �}����   ȥ�  ( 1 0 / 2 8 |�  ��)  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( R e s e r v a t i o n D t o   d t o )   {  
 	 	  
 	 S y s t e m . o u t . p r i n t l n ( " d d d d d d d d d d d d d d d d d " ) ;  
 	  
 	 S t r i n g   r e s e r   =   d t o . g e t R e s e r ( ) ;  
 	 S y s t e m . o u t . p r i n t l n ( " r e s e r :   " + r e s e r ) ;  
 	 S t r i n g [ ]   a r r y =   r e s e r . s p l i t ( " , " ) ;  
 	  
 	 L i s t < R e s e r v a t i o n D t o >   C h k l i s t   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	  
 	 t r y   {  
 	 	 C h k l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " C h k " , d t o . g e t D a y ( ) ) ;  
 	 	 	  
 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   �}�U�x�    " ) ;  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   c a t c h   b l o c k  
 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " ��(�" ) ;  
 	 }  
 	 S y s t e m . o u t . p r i n t l n ( " �}�U�x�D�̸" ) ;  
 	 i n t   r e s =   0 ;  
 	  
 	  
 	  
 	 	 f o r ( i n t   a   = 0 ;   a < a r r y . l e n g t h ; a + + )   {  
 	 	 	  
 	 	 S t r i n g   a a =   a r r y [ a ] ; 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " a r r y [ a ] ) : " + a a ) ;  
 	 	 	 f o r ( i n t   b   = 0 ;   b < C h k l i s t . s i z e ( ) ; b + + )   {  
 	 	 	 S t r i n g   b b   = C h k l i s t . g e t ( b ) . g e t S u b ( ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " C h k l i s t . g e t ( b ) . g e t S u b ( ) : " + b b ) ;  
 	 	 	 	 i f ( a a . e q u a l s ( b b ) )   {  
 	 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " |�X�XՔ����L�  " ) ;  
 	 	 	 	 	 r e t u r n   r e s ;  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	  
 	 t r y   {  
 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " i n s e r t " , d t o ) ;  
 	 	 	  
 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   i n s e r t   " ) ;  
 	 	 / /   T O D O   A u t o - g e n e r a t e d   c a t c h   b l o c k  
 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " ��(�2 " ) ;  
 	 }  
 	 r e t u r n   r e s ;  
  
 	 }  
 	  
 	  
   / / �}�pȌ� 
 	 @ O v e r r i d e    
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   C h k ( S t r i n g   d a y )   {  
 	 	 L i s t < R e s e r v a t i o n D t o >   C h k l i s t   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( d a y ) ;  
 	 	 t r y   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " 1���1 " ) ;  
 	 	 	 C h k l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " C h k " , d a y ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " 1���" ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ] : C h k " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��(�" ) ;  
 	 	 }  
 	  
 	 	 r e t u r n   C h k l i s t ;  
 	 }  
  
  
 	 / / ȹtǘ�t���  �}�  pȌ�   
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < R e s e r v a t i o n D t o >   m y r e s e r ( S t r i n g   u s e r _ n u m )   {  
 	 	 L i s t < R e s e r v a t i o n D t o >   r _ l i s t   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	 	 S t r i n g   u _ n o   =   u s e r _ n u m ;  
 	 	 R e s e r v a t i o n D t o   d t o   =   n e w   R e s e r v a t i o n D t o ( ) ;  
 	 	 S i m p l e D a t e F o r m a t   f o r m a t   =   n e w   S i m p l e D a t e F o r m a t ( " M M / d d / y y y y " ) ;  
 	 	 D a t e   t i m e   =   n e w   D a t e ( ) ;  
 	 	  
 	 	 S t r i n g   d a y   =   f o r m a t . f o r m a t ( t i m e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " d a y : " + d a y ) ;  
 	 	  
 	 	 d t o . s e t U _ n o ( u _ n o ) ;  
  
 	 	 d t o . s e t D a y ( d a y ) ;  
 	 	  
 	 	  
 	 	 t r y   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " 1���1 " ) ;  
 	 	 	   r _ l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " m y _ C h k " , d t o ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " 1���" ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ] : C h k " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��(�" ) ;  
 	 	 }  
 	 	  
 	 	  
  
 	 	  
 	 	  
 	 	  
 	 	 f o r (   i n t   a   = 0   ;   a < r _ l i s t . s i z e ( ) ;   a + + )   {  
 	 	 	 i n t   b   =   a + 1 ;  
 	 	 	  
 	 	 	 	 S t r i n g   a t   =   r _ l i s t . g e t ( a ) . g e t T i m e ( ) ;  
 	 	 	 	 i n t   n u m   =   I n t e g e r . p a r s e I n t ( a t ) ;  
 	 	 	 	 i n t   n u m 2   =   n u m + 9 ;  
 	 	 	 	 r _ l i s t . g e t ( a ) . s e t T i m e ( 8 + n u m + " ��- " + n u m 2 + " ��" ) ;  
  
 	 	 	 	 	  
 	 	 	  
 	 	 	 }  
 	 	 	  
  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 r e t u r n   r _ l i s t ;  
 	 }  
  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   r _ d e l e t e ( S t r i n g   s u b ,   S t r i n g   u _ n o ,   i n t   r e s e r _ n o )   {  
 	 	 i n t   r e s   = 0 ;  
 	 	  
 	 	  
 	 	 L i s t < R e s e r v a t i o n D t o >   l i s t   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	 	  
 	 	  
 	 	 R e s e r v a t i o n D t o   d t o   =   n e w   R e s e r v a t i o n D t o ( ) ;  
 	 	 d t o . s e t U _ n o ( u _ n o ) ;  
 	 	 d t o . s e t R e s e r _ n o ( r e s e r _ n o ) ;  
 	 	 d t o . s e t S u b ( s u b ) ;  
 	 	  
 	 	  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " 3 : " + d t o . g e t U _ n o ( ) ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " 2 : " + d t o . g e t S u b ( ) ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " 1 : " + d t o . g e t R e s e r _ n o ( ) ) ;  
 	 	 t r y   {  
 	 	 	  
 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " s e a r c h " , d t o ) ;  
 	 	 	  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " - - - - - - - - - - - - - - - " ) ;  
 	 	 	  
 	 	 	 L i s t < S t r i n g >   l i s t a   =   n e w   A r r a y L i s t < S t r i n g > ( ) ;  
 	 	 	 f o r ( i n t   i   = 0 ;   i < l i s t . s i z e ( ) ;   i + + )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( l i s t . g e t ( i ) . g e t S u b ( ) ) ;  
 	 	 	 	 l i s t a . a d d (   l i s t . g e t ( i ) . g e t S u b ( ) ) ;  
  
 	 	 	 }  
 	 	 	 S t r i n g   e e   =   S t r i n g . j o i n (   " , " , l i s t a ) ;  
 	 	 	  
 	 	 	 S y s t e m . o u t . p r i n t l n ( e e ) ;  
 	 	 	  
 	 	 	 d t o . s e t S u b ( e e ) ;  
  
 	 	 	  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   u p d a t e   " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " s u b = " + d t o . g e t S u b ( ) ) ;  
 	 	 S t r i n g   a   =   d t o . g e t S u b ( ) ;  
 	 	 i f ( a . i s E m p t y ( ) )   {  
 	 	 	  
 	 	 	 t r y   {  
 	 	 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E + " r _ d e l e t e " , d t o ) ;  
 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   d e l e t e   " ) ;  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 } e l s e {  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " r _ u p d a t e " , d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   u p d a t e 2   " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
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
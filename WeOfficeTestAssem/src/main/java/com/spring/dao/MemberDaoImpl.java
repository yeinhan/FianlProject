p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . t r a n s a c t i o n . a n n o t a t i o n . T r a n s a c t i o n a l ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   M e m b e r D a o I m p l   i m p l e m e n t s   M e m b e r D a o   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
 	  
 	 / / \���x�  �̬� 
 	 @ O v e r r i d e  
 	 p u b l i c   M e m b e r D t o   l o g i n ( M e m b e r D t o   d t o )   {  
 	 	 M e m b e r D t o   r e s   =   n u l l ;  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " g e t U _ i d :   " + d t o . g e t U _ i d ( ) ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " g e t P a s s w o r d :   " + d t o . g e t P a s s w o r d ( ) ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " l o g i n " , d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " D A O   E R R O R :   l o g i n " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
  
 	 / / \���x�  -   t�T�|�  �����l� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   c h e c k _ e m a i l ( S t r i n g   e m a i l )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " c h e c k _ e m a i l " ,   e m a i l ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " D A O   E R R O R :   c h e c k _ e m a i l " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
 	  
 	  
 	 / / \���x�  -   D�t��  ���  ��l� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   c h e c k _ i d ( S t r i n g   u _ i d )   {  
 	 	 r e t u r n   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " c h e c k _ i d " ,   u _ i d ) ;  
 	 }  
  
 	 / / ���� ���  �̬� 
 	 @ T r a n s a c t i o n a l  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   r e g i s t e r ( M e m b e r D t o   d t o )   {  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " g e t U _ i d :   " + d t o . g e t U _ i d ( ) ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " g e t P a s s w o r d :   " + d t o . g e t P a s s w o r d ( ) ) ;  
 	 	 r e t u r n   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " r e g i s t e r " ,   d t o ) ;  
 	 }  
 	 / / D� ���8�  >�0� 
 	 @ O v e r r i d e  
 	 p u b l i c   S t r i n g   g e t P W ( M a p < S t r i n g ,   O b j e c t >   p a r a m M a p )   {  
 	 	 S y s t e m . o u t . p r i n t l n ( " d a o " + p a r a m M a p ) ;  
 	 	 r e t u r n   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " g e t P w " , p a r a m M a p ) ;  
 	 }  
  
  
 	 / / ���� ���  -   xǝɤ�  ���� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e A u t h K e y ( M a p < S t r i n g ,   S t r i n g >   m a p )   {  
 	 	 i n t   r e s   = 0 ;    
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " g e t K e y " , m a p ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " D A O   E R R O R   :   g e t K e y " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 / / ���� ���  -   xǝɤ�  ��p�tǸ� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e A u t h S t a t u s ( M a p < S t r i n g ,   S t r i n g >   m a p )   {  
 	 	 i n t   r e s   = 0 ;    
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " a l t e r K e y " , m a p ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " D A O   E R R O R   :   a l t e r k e y " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 / / ȹtǘ�t��� 
 	 	 @ O v e r r i d e  
 	 	 p u b l i c   M e m b e r D t o   s e l e c t u s e r ( S t r i n g   u s e r _ n u m )   {  
 	 	 	 M e m b e r D t o   u _ l i s t   =   n u l l ;  
 	 	 	  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " s e l e c t _ o n e : " + u s e r _ n u m ) ;  
 	 	 	 t r y   {  
 	 	 	 	 u _ l i s t   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " s e l e c t O n e _ M Y " ,   u s e r _ n u m ) ;  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " ȹtǘ�t���1���2 " ) ;  
 	 	 	 	  
 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   s e l e c t   O n e " ) ;  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   u _ l i s t ;  
 	 	 	  
 	 	 }  
  
 	 	 / / �������  ����   
 	 	 @ O v e r r i d e  
 	 	 p u b l i c   i n t   m _ u p d a t e ( M e m b e r D t o   d t o )   {  
 	 	 	 i n t   r e s   = 0 ;  
 	 	 	 	  
 	 	 	 	 t r y   {  
 	 	 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " m _ u p d a t e " , d t o ) ;  
 	 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]   :   u p d a t e   " ) ;  
 	 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 r e t u r n   r e s ;  
 	 	 }  
  
 	 	 / / �������� 
 	 	 @ O v e r r i d e  
 	 	 p u b l i c   i n t   m _ d e l e t e ( S t r i n g   u _ n o )   {  
 	 	 	 i n t   r e s   = 0 ;  
 	 	 	  
 	 	 	 t r y   {  
 	 	 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E + " m _ d e l e t e " , u _ n o ) ;  
 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ E R R O R ]     d e l e t e " ) ;  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	  
 	 	 	 r e t u r n   r e s ;  
 	 	 }  
  
 	 	  
 	 / / d������¸� 
 	 	 @ O v e r r i d e  
 	 	 p u b l i c   L i s t < M e m b e r D t o >   m e m b e r l i s t ( )   {  
 	 	 	 L i s t < M e m b e r D t o >   l i s t   =   n e w   A r r a y L i s t < M e m b e r D t o > ( ) ;  
 	 	 	 t r y   {  
 	 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " m e m b e r l i s t " ) ;  
 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ] : s e l e c t   l i s t " ) ;  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
  
 	 	 	  
 	 	 	 r e t u r n   l i s t ;  
 	 	 }  
 	 	  
  
 	 	 @ O v e r r i d e  
 	 	 p u b l i c   M e m b e r D t o   m _ d e t a i l ( S t r i n g   u s e r _ n u m )   {  
 	 	 	 M e m b e r D t o   m _ l i s t   =   n u l l ;  
 	 	 	  
 	 	 	  
 	 	 	 t r y   {  
 	 	 	 	 m _ l i s t   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " m _ p r o f i l e " ,   u s e r _ n u m ) ;  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " d�����t���1���2 " ) ;  
 	 	 	 	  
 	 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   m e m b e r p a g e " ) ;  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 r e t u r n   m _ l i s t ;  
 	 	 }  
  
 }  
 
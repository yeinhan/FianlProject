p a c k a g e   c o m . s p r i n g ;  
  
  
 i m p o r t   j a v a . a w t . L i s t ;  
 i m p o r t   j a v a . t e x t . D a t e F o r m a t ;  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . D a t e ;  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e q u e s t ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   o r g . s l f 4 j . L o g g e r ;  
 i m p o r t   o r g . s l f 4 j . L o g g e r F a c t o r y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . C o n t r o l l e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t P a r a m ;  
  
 i m p o r t   c o m . s p r i n g . b i z . B o a r d B i z ;  
 i m p o r t   c o m . s p r i n g . b i z . R e s e r v a t i o n B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . R e s e r v a t i o n D t o ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   R e s e r v a t i o n C o n t r o l l e r   {  
 	  
 	 p r i v a t e   s t a t i c   f i n a l   L o g g e r   l o g g e r   =   L o g g e r F a c t o r y . g e t L o g g e r ( R e s e r v a t i o n C o n t r o l l e r . c l a s s ) ;  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   R e s e r v a t i o n B i z   b i z ;  
 	  
 	  
 	 / / �}�X�0� 
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / r e s e r i n s e r t . d o " ,   m e t h o d   =   {   R e q u e s t M e t h o d . G E T ,   R e q u e s t M e t h o d . P O S T } )  
 	 p u b l i c   S t r i n g   i n s e r t ( R e s e r v a t i o n D t o   d t o , H t t p S e s s i o n   s e s s i o n , M o d e l   m o d e l ) {  
 	  
  
 	 	 S y s t e m . o u t . p r i n t l n ( " ��0�T�L�" ) ;  
 	 	 l o g g e r . i n f o ( " I N S E R T   R E S " ) ;  
 	  
 	 	 i n t   r e s   =   b i z . i n s e r t ( d t o ) ;  
 	  
 	 	 m o d e l . a d d A t t r i b u t e ( " u _ n o " ,   d t o . g e t U _ n o ( ) ) ;  
 	 	  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 r e t u r n   " r e s e r v a t i o n _ c o m p l e t " ;  
 	 	 } e l s e   {  
 	 	 	 r e t u r n   " r e s e r v a t i o n _ f a l s e " ;  
 	 	 }  
 	  
 	 }  
 	  
 	 / / �}��  ��8�  U�x� 
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / r e s e r D e t a i l . d o " ,   m e t h o d   =   {   R e q u e s t M e t h o d . G E T ,   R e q u e s t M e t h o d . P O S T } )  
 	 p u b l i c   S t r i n g   r e s e r D e t a i l ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t ,   M o d e l   m o d e l ) {  
 	  
  
 	 	 S y s t e m . o u t . p r i n t l n ( " �}Ŵ���pȌ�" ) ;  
 	  
 	 	  
 	 	 S t r i n g [ ]   R e s e r   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r V a l u e s ( " r e s e r " ) ;  
  
 	 	 S t r i n g   u _ n o   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " u _ n o " ) ;  
 	 	 S t r i n g   D a y   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " d a y " ) ;  
 	 	 S t r i n g   r e s e r = " " ;  
 	 	 f o r ( i n t   a   =   0   ;   a < R e s e r . l e n g t h ; a + + )   {  
 	 	 	 r e s e r   + =   R e s e r [ a ] + " , " ;  
 	 	 }  
 	 	  
 	 	  
 	 	  
 	 	  
 	 	 A r r a y L i s t < R e s e r v a t i o n D t o >   r e s   =   n e w   A r r a y L i s t < R e s e r v a t i o n D t o > ( ) ;  
 	 	  
  
 	 	 f o r ( i n t   i = 0 ; i < R e s e r . l e n g t h ; i + + )   {  
 	 	 	 R e s e r v a t i o n D t o   D e t a i l   =   n e w   R e s e r v a t i o n D t o ( ) ;  
 	 	 	 D e t a i l . s e t D a y ( D a y ) ;  
 	 	 	 S t r i n g [ ]   a r r y =   R e s e r [ i ] . s p l i t ( " - " ) ;  
 	 	 	 D e t a i l . s e t R o o m ( " ��X���" + a r r y [ 0 ] ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��X���" + a r r y [ 0 ] ) ;  
 	 	 	 i n t   n u m   =   I n t e g e r . p a r s e I n t ( a r r y [ 1 ] ) ;  
 	 	 	 i n t   n u m 2   =   n u m + 9 ;  
 	 	 	 D e t a i l . s e t T i m e ( 8 + n u m + " ��- " + n u m 2 + " ��" ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( 8 + n u m + " - " + n u m 2 ) ;  
 	 	 	 r e s . a d d ( D e t a i l ) ;  
  
 	 	 	 }  
 	 	  
 	 	 m o d e l . a d d A t t r i b u t e ( " d e t a i l " , r e s ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " d a y " , D a y ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " r e s e r " , r e s e r ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " u _ n o " , u _ n o ) ;  
 	  
 	 	 	 r e t u r n   " r e s e r v a t i o n _ d e t a i l " ;  
 	  
 	 }  
  
 	  
 	 / / �}�pȌ� 
 	 @ R e q u e s t M a p p i n g ( " / r e s e r c h k . d o " )  
 	 p u b l i c   S t r i n g   C h k ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t ,   M o d e l   m o d e l , S t r i n g   d a y ) {  
 	 	  
 	 	 S t r i n g   D a y   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " d a y " ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��0�T�L�2 " ) ;  
 	 	 	 l o g g e r . i n f o ( " r e s e r c h k " ) ;  
 	 	  
 	 	 	 m o d e l . a d d A t t r i b u t e ( " C h k " , b i z . C h k ( d a y ) ) ;  
 	 	 	 m o d e l . a d d A t t r i b u t e ( " d a y " , D a y ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��0�T�L�3 " ) ;  
 	 	 	  
 	 	 	  
 	 	 r e t u r n   " r e s e r v a t i o n _ c h e c k " ;  
 	 	 }  
 	  
  
 	  
 	 / / ȹtǘ�t���  �}ŭ�8�  ( 1 0 / 2 5 |ǔ� �)  
 	 @ R e q u e s t M a p p i n g ( " r _ d e l e t e . d o " )  
 	 p u b l i c   S t r i n g   r _ d e l e t e ( S t r i n g   s u b ,   S t r i n g   u _ n o ,   i n t   r e s e r _ n o )   {  
 	 	 l o g g e r . i n f o ( " U P D A T E   R E S " ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( u _ n o ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( s u b ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( r e s e r _ n o ) ;  
 	 	  
 	 	 S t r i n g   a   =   u _ n o ;  
 	 	  
 	 	 i n t   r e s   =   b i z . r _ d e l e t e ( s u b , u _ n o , r e s e r _ n o ) ;  
 	  
 	 	  
 	 	  
 	 	 	 r e t u r n   " r e d i r e c t : m y p a g e . d o ? u s e r _ n u m = " + a ;  
 	  
 	  
 	 }  
 	  
  
 	  
  
 }  
 	  
 	  
 
p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . i o . F i l e ;  
 i m p o r t   j a v a . i o . F i l e N o t F o u n d E x c e p t i o n ;  
 i m p o r t   j a v a . i o . F i l e O u t p u t S t r e a m ;  
 i m p o r t   j a v a . i o . I O E x c e p t i o n ;  
 i m p o r t   j a v a . i o . I n p u t S t r e a m ;  
 i m p o r t   j a v a . i o . O u t p u t S t r e a m ;  
 i m p o r t   j a v a . i o . P r i n t W r i t e r ;  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . H a s h M a p ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e q u e s t ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e s p o n s e ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . C o n t r o l l e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u t i l . F i l e C o p y U t i l s ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . m u l t i p a r t . M u l t i p a r t F i l e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . u t i l . W e b U t i l s ;  
  
 i m p o r t   c o m . s p r i n g . b i z . W o r k S p a c e B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . U p l o a d F i l e ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   W o r k S p a c e C o n t r o l l e r   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   W o r k S p a c e B i z   w k s b i z ;  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / w o r k s p a c e . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   w o r k s p a c e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e ,   S t r i n g   p _ i d )   t h r o w s   I O E x c e p t i o n   {  
 	 	  
 	 	 r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = U T F - 8 " ) ;  
 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
 	 	  
 	 	 P r o j e c t D t o   p j t D t o   =   w k s b i z . s e l e c t p j t O n e ( p _ i d ) ;  
                 m o d e l . a d d A t t r i b u t e ( " p j t N a m e " ,   p j t D t o ) ;  
                  
                 m o d e l . a d d A t t r i b u t e ( " w k s l i s t " ,   w k s b i z . s e l e c t L i s t ( p _ i d ) ) ;  
                 m o d e l . a d d A t t r i b u t e ( " t a s k l i s t " ,   w k s b i z . s e l e c t T a s k L i s t ( ) ) ;  
                 m o d e l . a d d A t t r i b u t e ( " f i l e l i s t " ,   w k s b i z . s e l e c t F i l e L i s t ( p _ i d ) ) ;  
                  
                 / /   \���x� � �  ���   �8�$�0� 
                 H t t p S e s s i o n   s e s s i o n   =   r e q u e s t . g e t S e s s i o n ( t r u e ) ;  
                 M e m b e r D t o   m b   =   n u l l ;  
                  
                 i f ( ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " )   ! =   n u l l )   {  
                 	 m b   =   ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " ) ;  
                 	 S t r i n g   u s e r _ n u m   =   m b . g e t U s e r _ n u m ( ) ; 	 	 	 / / \���x�   � � 
                         S t r i n g   p j t m e m b e r   =   p j t D t o . g e t U s e r _ n u m ( ) ; 	 / / �\�ȸ�  8���d���  :   " 1 , 2 , 3 "   ��� 
                          
                         i f ( p j t D t o . g e t P _ p u b ( ) . e q u a l s ( " p r i " )   & &   p j t m e m b e r   ! =   n u l l   & &   p j t m e m b e r   ! =   " " )   {  
                         	 / /   �\�ȸ� �  d������t�t��  �\�ȸ�  8���d��� �  n u l l t�  D�̲���� 
                 	 	 S t r i n g [ ]   p j t m e m b e r A r r   =   p j t m e m b e r . s p l i t ( " , " ) ;  
                 	 	 f o r ( i n t   i = 0 ;   i < p j t m e m b e r A r r . l e n g t h ;   i + + )   {  
                 	 	 	 i f ( p j t m e m b e r A r r [ i ] . e q u a l s ( u s e r _ n u m ) )   {  
                 	 	 	 	 / /   �\�ȸ�  8���d���@�  \���x� � �  |�X� 
                 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " �\�ȸ�  �������:   " + p j t D t o . g e t P _ p u b ( ) ) ;  
                 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " �\�ȸ�  8���d���@�  \���x� � �  |�X�  /   u s e r _ n u m :   " + p j t m e m b e r A r r [ i ] ) ;  
                 	 	                 r e t u r n   " w o r k s p a c e " ;  
                 	 	 	 }  
                 	 	 }  
                         }   e l s e   i f   ( p j t D t o . g e t P _ p u b ( ) . e q u a l s ( " p u b " ) ) {  
                 	 	 / /   �\�ȸ�  ȴ���� 
                 	 	 S y s t e m . o u t . p r i n t l n ( " �\�ȸ�  �������:   " + p j t D t o . g e t P _ p u b ( ) ) ;  
   	 	                 r e t u r n   " w o r k s p a c e " ;  
                 	 }    
                 }   e l s e   {  
                 	 / /   \���D���  ���� 
 	 	 	 S t r i n g   m s g   =   " \���x�  ��  tǩ�t���8���. " ;  
 	 	 	 o u t . p r i n t l n ( " < s c r i p t > a l e r t ( ' " + m s g + " ' ) ;   l o c a t i o n . h r e f = ' l o g i n f o r m . d o ' ; < / s c r i p t > " ) ;  
 	 	 	 / / o u t . f l u s h ( ) ;  
                 }  
                 S t r i n g   m s g   =   " t���  �\�ȸҔ�  8���d���̹  �Ō�   ���i�Ȳ�. " ;  
 	 	 o u t . p r i n t l n ( " < s c r i p t > a l e r t ( ' " + m s g + " ' ) ;   l o c a t i o n . h r e f = ' j a v a s c r i p t : h i s t o r y . b a c k ( ) ; ' ; < / s c r i p t > " ) ;  
 	 	 o u t . f l u s h ( ) ;  
 	 	  
                 r e t u r n   " w o r k s p a c e " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / w k s i n s e r t . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   w k s I n s e r t ( @ R e q u e s t B o d y   W o r k S p a c e D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   w k s b i z . i n s e r t ( d t o ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 } 	  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / w k s u p d a t e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   w k s U p d a t e ( @ R e q u e s t B o d y   W o r k S p a c e D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   w k s b i z . u p d a t e ( d t o ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / w k s d e l e t e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   w k s D e l e t e ( @ R e q u e s t B o d y   W o r k S p a c e D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   w k s b i z . d e l e t e ( d t o ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 } 	  
 	  
  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / u p l o a d . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   S t r i n g   f i l e U p l o a d ( H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e ,   M o d e l   m o d e l ,   U p l o a d F i l e   u p l o a d F i l e ,   S t r i n g   p _ i d )   t h r o w s   I O E x c e p t i o n   {  
 	 	  
 	 	 M u l t i p a r t F i l e   f i l e   =   u p l o a d F i l e . g e t M p f i l e ( ) ;  
 	 	 S t r i n g   n a m e   =   f i l e . g e t O r i g i n a l F i l e n a m e ( ) ;  
 	 	  
 	 	 U p l o a d F i l e   f i l e O b j   =   n e w   U p l o a d F i l e ( ) ;  
 	 	 f i l e O b j . s e t P _ i d ( p _ i d ) ;  
 	 	 f i l e O b j . s e t N a m e ( n a m e ) ;  
 	 	  
 	 	 L i s t < U p l o a d F i l e >   f i l e s   =   n e w   A r r a y L i s t < U p l o a d F i l e > ( ) ;  
 	 	 f i l e s   =   w k s b i z . s e l e c t F i l e L i s t ( p _ i d ) ;  
 	 	  
 	 	 f o r ( i n t   i = 0 ;   i < f i l e s . s i z e ( ) ;   i + + )   {  
 	 	 	 i f ( n a m e . e q u a l s ( f i l e s . g e t ( i ) . g e t N a m e ( ) ) )   {  
 	 	 	 	 r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = U T F - 8 " ) ;  
 	 	 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
 	 	 	 	  
 	 	 	 	 S t r i n g   m s g   =   " �\�ȸ�  ����  ����  �|�t�  tȬ�i�Ȳ�. " ;  
 	 	 	 	 o u t . p r i n t l n ( " < s c r i p t > a l e r t ( ' " + m s g + " ' ) ;   l o c a t i o n . h r e f = ' w o r k s p a c e . d o ? p _ i d = " + p _ i d + " ' ; < / s c r i p t > " ) ;  
 	 	 	 	 o u t . f l u s h ( ) ;  
 	 	 	 	  
 	 	 	 	 r e t u r n   " w o r k s p a c e . d o ? p _ i d = " + p _ i d ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " f i l e   u p l o a d :   " + p _ i d + "   /   " + n a m e ) ;  
 	 	  
 	 	 I n p u t S t r e a m   i n p u t S t r e a m   =   n u l l ;  
 	 	 O u t p u t S t r e a m   o u t p u t S t r e a m   =   n u l l ;  
 	 	  
 	 	 t r y   {  
 	 	 	 i n p u t S t r e a m   =   f i l e . g e t I n p u t S t r e a m ( ) ;  
 	 	 	 S t r i n g   p a t h   =   W e b U t i l s . g e t R e a l P a t h ( r e q u e s t . g e t S e s s i o n ( ) . g e t S e r v l e t C o n t e x t ( ) ,   " / w e o f f i c e _ f i l e u p l o a d - " + p _ i d ) ;  
 	 	 	  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��\�ܴ   �  ���  ��\�:   " + p a t h ) ;  
 	 	 	  
 	 	 	 F i l e   s t o r a g e   =   n e w   F i l e ( p a t h ) ;  
 	 	 	 i f ( ! s t o r a g e . e x i s t s ( ) )   {  
 	 	 	 	 s t o r a g e . m k d i r ( ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 F i l e   n e w F i l e   =   n e w   F i l e ( p a t h + " / " + n a m e ) ;  
 	 	 	 i f ( ! n e w F i l e . e x i s t s ( ) )   {  
 	 	 	 	 n e w F i l e . c r e a t e N e w F i l e ( ) ;  
 	 	 	 }  
  
 	 	 	 o u t p u t S t r e a m   =   n e w   F i l e O u t p u t S t r e a m ( n e w F i l e ) ;  
  
 	 	 	 i n t   r e a d   =   0 ;  
 	 	 	 b y t e [ ]   b   =   n e w   b y t e [ ( i n t ) f i l e . g e t S i z e ( ) ] ;  
 	 	 	  
 	 	 	 w h i l e (   ( r e a d = i n p u t S t r e a m . r e a d ( b ) )   ! =   - 1   )   {  
 	 	 	 	 o u t p u t S t r e a m . w r i t e ( b ,   0 ,   r e a d ) ;  
 	 	 	 }  
 	 	 	  
 	 	 }   c a t c h   ( I O E x c e p t i o n   e )   {  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }   f i n a l l y   {  
 	 	 	 t r y   {  
 	 	 	 	 i n p u t S t r e a m . c l o s e ( ) ;  
 	 	 	 	 o u t p u t S t r e a m . c l o s e ( ) ;  
 	 	 	 }   c a t c h   ( I O E x c e p t i o n   e )   {  
 	 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 m o d e l . a d d A t t r i b u t e ( " f i l e O b j " ,   f i l e O b j ) ;  
 	 	  
 	 	 / /   F i l e   d b ��  ��\�ܴ  �  �|�  ���� 
 	 	 i n t   r e s   =   w k s b i z . f i l e i n s e r t ( f i l e O b j ) ;  
 	 	  
 	 	 r e t u r n   " r e d i r e c t : w o r k s p a c e . d o ? p _ i d = " + p _ i d ;  
 	 }  
  
 	 @ R e q u e s t M a p p i n g ( " / d o w n l o a d " )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   b y t e [ ]   f i l e D o w n l o a d ( H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e ,   S t r i n g   p _ i d ,   S t r i n g   n a m e )   {  
 	 	  
 	 	 b y t e [ ]   d o w n   =   n u l l ;  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " f i l e   d o w n l o a d :   " + p _ i d + "   /   " + n a m e ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 S t r i n g   p a t h   =   W e b U t i l s . g e t R e a l P a t h ( r e q u e s t . g e t S e s s i o n ( ) . g e t S e r v l e t C o n t e x t ( ) ,   " / w e o f f i c e _ f i l e u p l o a d - " + p _ i d ) ;  
 	 	 	  
 	 	 	 F i l e   f i l e   =   n e w   F i l e ( p a t h + " / " + n a m e ) ;  
 	 	 	  
 	 	 	 d o w n   =   F i l e C o p y U t i l s . c o p y T o B y t e A r r a y ( f i l e ) ;  
 	 	 	 S t r i n g   f i l e n a m e   =   n e w   S t r i n g ( f i l e . g e t N a m e ( ) . g e t B y t e s ( ) ,   " 8 8 5 9 _ 1 " ) ;  
  
 	 	 	 r e s p o n s e . s e t H e a d e r ( " C o n t e n t - D i s p o s i t i o n " ,   " a t t a c h m e n t ;   f i l e n a m e = \ " " + f i l e n a m e + " \ " " ) ;  
 	 	 	 r e s p o n s e . s e t C o n t e n t L e n g t h ( d o w n . l e n g t h ) ;  
 	 	 	  
 	 	 }   c a t c h   ( F i l e N o t F o u n d E x c e p t i o n   e )   {  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }   c a t c h   ( I O E x c e p t i o n   e )   {  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   d o w n ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / f i l e d e l e t e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   f i l e D e l e t e ( @ R e q u e s t B o d y   U p l o a d F i l e   d t o ,   H t t p S e r v l e t R e q u e s t   r e q u e s t )   {  
  
 	 	 S t r i n g   p _ i d   =   d t o . g e t P _ i d ( ) ;  
 	 	 S t r i n g   n a m e   =   d t o . g e t N a m e ( ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " f i l e   d e l e t e :   " + p _ i d + "   /   " + n a m e ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 S t r i n g   p a t h   =   W e b U t i l s . g e t R e a l P a t h ( r e q u e s t . g e t S e s s i o n ( ) . g e t S e r v l e t C o n t e x t ( ) ,   " / w e o f f i c e _ f i l e u p l o a d - " + p _ i d ) ;  
 	 	 	 F i l e   f i l e   =   n e w   F i l e ( p a t h + " / " + n a m e ) ;  
 	 	 	  
 	 	 	 i f (   f i l e . e x i s t s ( )   ) {  
 	 	 	 	 i f ( f i l e . d e l e t e ( ) ) {  
 	 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " f i l e   d e l e t e :   1���" ) ;  
 	 	 	 	 }   e l s e   {  
 	 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " f i l e   d e l e t e :   ��(�" ) ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }   c a t c h   ( F i l e N o t F o u n d E x c e p t i o n   e )   {  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   w k s b i z . f i l e d e l e t e ( d t o ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
 	  
 }  
 
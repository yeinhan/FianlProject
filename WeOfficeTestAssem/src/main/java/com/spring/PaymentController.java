p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . u t i l . H a s h M a p ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . C o n t r o l l e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t P a r a m ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
  
 i m p o r t   c o m . s p r i n g . b i z . P a y m e n t B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . P a y m e n t D t o ;  
  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   P a y m e n t C o n t r o l l e r   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P a y m e n t B i z   p a y b i z ;  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / m y p a g e . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   m y p a g e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   S t r i n g   u s e r _ n u m )   {  
                 / /   H��θ�d�����  �p�X�0� 
 	 	 / /   8�X�  u s e r _ n u m   �D�$�0�  / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /  
 	 	 m o d e l . a d d A t t r i b u t e ( " p a y m e n t _ u s e r " ,   p a y b i z . s e l e c t P a y O n e ( " 1 " ) ) ;  
 	 	  
 	 	 / /   �Ƙ�t���  tǩ� ����ŀ� 
 	 	 / /   0   t���|�  ����  tǩ� ���  /   0 ���  ��p���  N U L L |ǽ���( - 1 )   tǩ�̸̹ 
 	 	 i n t   r e s   =   p a y b i z . a v a i l a b l e P a g e ( " 1 " ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " ����:   " + r e s ) ;  
 	 	  
 / / 	 	 i f ( r e s > 0 )   {  
 / / 	                 r e t u r n   " m y p a g e " ;  
 / / 	 	 }   e l s e   {  
 / / 	 	 	 r e t u r n   " p a g e l o c k " ;  
 / / 	 	 }  
 	 	  
 	 	 r e t u r n   " m y p a g e u p d a t e " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / s e l m e m _ p o p u p . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
 	 p u b l i c   S t r i n g   s e l e c t M e m b e r ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   S t r i n g   n u m ,   S t r i n g   p a y _ u s e r )   {  
 	 	  
 	 	 m o d e l . a d d A t t r i b u t e ( " m e m b e r " ,   p a y b i z . s e l e c t M e m b e r ( ) ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " n u m b e r " ,   n u m ) ; 	 	 	 / /    ���x��� 
 	 	 m o d e l . a d d A t t r i b u t e ( " p a y _ u s e r " ,   p a y _ u s e r ) ; 	 / /   ��Ȍ���n u m  
 	 	  
 	 	 r e t u r n   " p o p u p _ s e l m e m " ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / p a y i n s e r t . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   p a y I n s e r t ( @ R e q u e s t B o d y   P a y m e n t D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   p a y b i z . p a y i n s e r t ( d t o ) ;  
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
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / a v a i l u s e r . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   a v a i l U s e r ( @ R e q u e s t P a r a m ( v a l u e = " u s e r n u m [ ] " )   L i s t < S t r i n g >   n u m ,   S t r i n g   p a y _ u s e r )   {  
  
 	 	 S t r i n g   u s e r _ n u m [ ]   =   n e w   S t r i n g [ n u m . s i z e ( ) ] ;  
 	 	  
 	 	 f o r ( i n t   i = 0 ;   i < n u m . s i z e ( ) ;   i + + )   {  
 	 	 	 u s e r _ n u m [ i ]   =   n u m . g e t ( i ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( u s e r _ n u m [ i ] ) ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   O b j e c t >   m a p   =   n e w   H a s h M a p < S t r i n g ,   O b j e c t > ( ) ;  
 	 	 m a p . p u t ( " u s e r _ n u m " ,   u s e r _ n u m ) ;  
 	 	 m a p . p u t ( " p a y _ u s e r " ,   p a y _ u s e r ) ;  
  
 	 	 i n t   r e s   =   p a y b i z . u p d a t e u s e r ( m a p ) ;  
 	 	  
 	 	 b o o l e a n   b o o l   =   t r u e ;  
 	 	 M a p < S t r i n g ,   B o o l e a n >   r e s u l t   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 r e s u l t . p u t ( " m s g " ,   b o o l ) ;  
 	 	  
 	 	 r e t u r n   r e s u l t ;  
 	 }  
 	  
 }  
 
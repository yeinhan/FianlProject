p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . l a n g . P r o c e s s B u i l d e r . R e d i r e c t ;  
 i m p o r t   j a v a . u t i l . H a s h M a p ;  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e q u e s t ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e s p o n s e ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   o r g . s l f 4 j . L o g g e r ;  
 i m p o r t   o r g . s l f 4 j . L o g g e r F a c t o r y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . M a i l S e n d e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . C o n t r o l l e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l M a p ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . M o d e l A t t r i b u t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t P a r a m ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . s e r v l e t . M o d e l A n d V i e w ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . s e r v l e t . m v c . s u p p o r t . R e d i r e c t A t t r i b u t e s ;  
  
 i m p o r t   c o m . s p r i n g . b i z . M e m b e r B i z I m p l ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
 i m p o r t   c o m . s p r i n g . e m a i l . E m a i l ;  
 i m p o r t   c o m . s p r i n g . e m a i l . E m a i l S e n d e r ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   M e m b e r C o n t r o l l e r   {  
 	 p r i v a t e   L o g g e r   l o g g e r   =   L o g g e r F a c t o r y . g e t L o g g e r ( M e m b e r C o n t r o l l e r . c l a s s   ) ;  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   M e m b e r B i z I m p l   b i z ;  
 	  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   E m a i l S e n d e r   e m a i l S e n d e r ;  
 	 @ A u t o w i r e d  
 	 p r i v a t e   E m a i l   e m a i l ;  
 	  
 	 / / 0 1 .   \���x�  T�t� 
 	 @ R e q u e s t M a p p i n g ( " / l o g i n f o r m . d o " )  
         p u b l i c   S t r i n g   l o g i n ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   l o g i n f o r m . j s p " ) ;  
                 r e t u r n   " l o g i n " ;  
         }  
 	  
 	  
 	 / / 0 2 .   \���x�  �̬� 
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / a j a x l o g i n . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g , B o o l e a n >   a j a x L o g i n ( H t t p S e s s i o n   s e s s i o n , @ R e q u e s t B o d y   M e m b e r D t o   d t o ) {  
 	 	 / *  
 	 	   *   @ R e q u e s t B o d y :   r e q u e s t ���\�  ���$Ɣ�  p�t�0�|�  j a v a   ���\� 
 	 	   *   @ R e s p o n s e B o d y :   j a v a   ���|�  r e s p o n s e �����  b i n d i n g ��  j s o n <�\� 
 	 	   *   * /  
 	 	 l o g g e r . i n f o ( " L O G I N " ) ;  
 	 	  
 	 	 M e m b e r D t o   r e s =   b i z . l o g i n ( d t o ) ;  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	  
 	 	 i f ( r e s   ! =   n u l l )   {  
 	 	 	 s e s s i o n . s e t A t t r i b u t e ( " l o g i n " ,   r e s ) ;  
 	 	 	 c h e c k = t r u e ;  
 	 	 }  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
 	  
 	 / / \���D��� 
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / l o g o u t . d o " )  
 	 p u b l i c   M o d e l A n d V i e w   l o g o u t ( H t t p S e s s i o n   s e s s i o n )   {  
 	 	 l o g g e r . i n f o ( " [ l o g ]   :   l o g o u t . d o " ) ;  
 	 	  
 	 	 b i z . l o g o u t ( s e s s i o n ) ;  
 	 	  
 	 	 M o d e l A n d V i e w   m a v   = n e w     M o d e l A n d V i e w ( ) ;  
 	 	 m a v . s e t V i e w N a m e ( " l o g i n " ) ;  
 	 	 m a v . a d d O b j e c t ( " m s g " , " l o g o u t " ) ;  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " l o g o u t   1���" ) ;  
 	 	 r e t u r n   m a v ;  
 	 	  
 	 }  
 	  
 	 / / ���� ���  �� 
 	 @ R e q u e s t M a p p i n g ( " / r e g i s t e r f o r m . d o " )  
         p u b l i c   S t r i n g   r e g i s t e r F o r m ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   r e g i s t e r f o r m . j s p " ) ;  
                 r e t u r n   " r e g i s t e r " ;  
         }  
 	  
 	 / / ���� ���  -   D�t��  ��l� 
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / c h e c k _ i d . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   v o i d   c h e c k _ i d ( @ R e q u e s t P a r a m ( " u _ i d " ) S t r i n g   u _ i d ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n   {  
 	 	 b i z . c h e c k _ i d ( u _ i d ,   r e s p o n s e ) ;  
 	 }  
 	  
 	 / / ���� ���  -   t�T�|�  ��l� 
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / c h e c k _ e m a i l . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   v o i d   c h e c k _ e m a i l ( @ R e q u e s t P a r a m ( " e m a i l " ) S t r i n g   e m a i l ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n   {  
 	 	 b i z . c h e c k _ e m a i l ( e m a i l ,   r e s p o n s e ) ;  
 	  
 	 }  
 	  
 	 / / ���� ���  �̬� 
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / r e g i s t e r . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   S t r i n g   r e g i s t e r ( @ M o d e l A t t r i b u t e   M e m b e r D t o   d t o ,   R e d i r e c t A t t r i b u t e s   r t t r ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n   {  
 	 	 r t t r . a d d F l a s h A t t r i b u t e ( " r e s u l t " ,   b i z . r e g i s t e r ( d t o ,   r e s p o n s e ) ) ;  
 	 	  
 	 	 S t r i n g   a u t h k e y   =   e m a i l S e n d e r . s e n d A u t h M a i l ( d t o . g e t E m a i l ( ) ) ;  
 	 	 d t o . s e t A u t h k e y ( a u t h k e y ) ;  
 	 	  
 	 	 M a p < S t r i n g ,   S t r i n g >   m a p   =   n e w   H a s h M a p < S t r i n g ,   S t r i n g > ( ) ;  
 	 	 m a p . p u t ( " e m a i l " ,   d t o . g e t E m a i l ( ) ) ;  
 	 	 m a p . p u t ( " a u t h k e y " , d t o . g e t A u t h k e y ( ) ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( m a p ) ;  
 	 	  
 	 	 / / D B ���  a u t h k e y   u p d a t e  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   b i z . u p d a t e A u t h K e y ( m a p ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 } e l s e   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��(�" ) ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p 2   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p 2 . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 S y s t e m . o u t . p r i n t l n ( " ���� ���  1���" ) ;  
 	 	 r e t u r n   " l o g i n " ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / s i g n U p C o n f i r m . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . G E T )  
 	   p u b l i c   M o d e l A n d V i e w   s i g n U p C o n f i r m ( @ R e q u e s t P a r a m   M a p < S t r i n g ,   S t r i n g >   m a p ,   M o d e l A n d V i e w   m a v ) {  
 	         / / e m a i l ,   a u t h K e y    �  |�X�`ս���  a u t h S t a t u s   ��p�tǸ� 
 	         b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   b i z . u p d a t e A u t h S t a t u s ( m a p ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 } e l s e   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " s i n g     ��(�" ) ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p 2   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p 2 . p u t ( " c h e c k " ,   c h e c k ) ;  
 	          
 	         m a v . s e t V i e w N a m e ( " l o g i n " ) ;  
 	         r e t u r n   m a v ;  
 	 }  
 	  
 	 / / D� ���8�  >�0�  �� 
 	 	 @ R e q u e s t M a p p i n g ( " / f o r g o t p w f o r m . d o " )  
 	         p u b l i c   S t r i n g   f o r g o t P w ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
 	                 l o g g e r . i n f o ( " [ l o g ]   :   f o r g o t p w f o r m . j s p " ) ;  
 	                 r e t u r n   " f o r g o t - p a s s w o r d " ;  
 	         }  
 	 	  
 	 	 / / D� ���8�  >�D��  t�T�|�  ����0� 
 	 	 @ R e q u e s t M a p p i n g ( v a l u e = " / s e n d p w . d o " )  
 	 	 p u b l i c   M o d e l A n d V i e w   s e n d E m a i l A c t i o n ( @ R e q u e s t P a r a m   M a p < S t r i n g ,   O b j e c t >   p a r a m M a p ,   M o d e l M a p   m o d e l )   {  
 	 	 	 M o d e l A n d V i e w   m a v ;  
 	 	 	  
 	 	 	 S t r i n g   i d   =   ( S t r i n g )   p a r a m M a p . g e t ( " u _ i d " ) ;  
 	 	 	 S t r i n g   e _ m a i l   =   ( S t r i n g )   p a r a m M a p . g e t ( " e m a i l " ) ;  
 	 	 	 S t r i n g   p w   =   b i z . g e t P w ( p a r a m M a p ) ;  
 	 	 	  
 	 	 	 S y s t e m . o u t . p r i n t l n ( i d ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( e _ m a i l ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( p w ) ;  
 	                 i f ( p w ! = n u l l )   {  
 	                 	 e m a i l . s e t C o n t e n t ( i d + " زX�  D� ���8֔�  ' " + p w + " '   ��Ȳ�. " ) ;  
 	                         e m a i l . s e t R e c e i v e r ( e _ m a i l ) ; 	 / / �D�  ����X�  t�T�|� 
 	                         e m a i l . s e t S u b j e c t ( " [ W e O f f i c e ]   " + i d + " ز  D� ���8�  >�0�  T�|ǅ�Ȳ�. " ) ;  
 	                         e m a i l S e n d e r . s e n d M a i l ( e m a i l ) ;  
 	                         m a v =   n e w   M o d e l A n d V i e w ( " r e d i r e c t : / l o g i n f o r m . d o " ) ;  
 	                         r e t u r n   m a v ;  
 	                 } e l s e   {  
 	                         m a v = n e w   M o d e l A n d V i e w ( " / f o r g o t - p a s s w o r d " ) ;  
 	                         m a v . a d d O b j e c t ( " m s g " , " t�T�|�t�  |�X�  X���  Jŵ�Ȳ�. " ) ;  
 	                         r e t u r n   m a v ;  
 	                 }  
 	 	 }  
 }  
 
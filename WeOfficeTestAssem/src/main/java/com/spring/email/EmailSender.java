p a c k a g e   c o m . s p r i n g . e m a i l ;  
  
 i m p o r t   j a v a . u t i l . R a n d o m ;  
  
 i m p o r t   j a v a x . m a i l . M e s s a g e ;  
 i m p o r t   j a v a x . m a i l . M e s s a g i n g E x c e p t i o n ;  
 i m p o r t   j a v a x . m a i l . i n t e r n e t . I n t e r n e t A d d r e s s ;  
 i m p o r t   j a v a x . m a i l . i n t e r n e t . M i m e M e s s a g e ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . M a i l E x c e p t i o n ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . m a i l . j a v a m a i l . J a v a M a i l S e n d e r ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 p u b l i c   c l a s s   E m a i l S e n d e r   {  
  
 	 @ A u t o w i r e d  
 	 p r o t e c t e d   J a v a M a i l S e n d e r   m a i l S e n d e r ;  
 	 p r i v a t e   i n t   s i z e ;  
  
 	 p r i v a t e   M e m b e r D t o   d t o ;  
 	 p u b l i c   v o i d   s e n d M a i l ( E m a i l   e m a i l )   {  
  
 	 	 M i m e M e s s a g e   m s g   =   m a i l S e n d e r . c r e a t e M i m e M e s s a g e ( ) ;  
  
 	 	 t r y   {  
 	 	 	 m s g . s e t S u b j e c t ( e m a i l . g e t S u b j e c t ( ) ) ;  
 	 	 	 m s g . s e t T e x t ( e m a i l . g e t C o n t e n t ( ) ) ;  
 	 	 	 m s g . s e t R e c i p i e n t s ( M i m e M e s s a g e . R e c i p i e n t T y p e . T O ,   I n t e r n e t A d d r e s s . p a r s e ( e m a i l . g e t R e c e i v e r ( ) ) ) ;  
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
  
 	 / /   xǝɤ�  ��1� 
 	 p r i v a t e   S t r i n g   g e t K e y ( i n t   s i z e )   {  
 	 	 t h i s . s i z e   =   s i z e ;  
 	 	 r e t u r n   g e t A u t h C o d e ( ) ;  
 	 }  
  
 	 / /   xǝ�T�ܴ  ���  ��� 
 	 p r i v a t e   S t r i n g   g e t A u t h C o d e ( )   {  
 	 	 R a n d o m   r a n d o m   =   n e w   R a n d o m ( ) ;  
 	 	 S t r i n g B u f f e r   b u f f e r   =   n e w   S t r i n g B u f f e r ( ) ;  
 	 	 i n t   n u m   =   0 ;  
  
 	 	 w h i l e   ( b u f f e r . l e n g t h ( )   <   s i z e )   {  
 	 	 	 n u m   =   r a n d o m . n e x t I n t ( 1 0 ) ;  
 	 	 	 b u f f e r . a p p e n d ( n u m ) ;  
 	 	 }  
  
 	 	 r e t u r n   b u f f e r . t o S t r i n g ( ) ;  
 	 }  
  
 	 / /   xǝ�T�|�  ����0� 
 	 p u b l i c   S t r i n g   s e n d A u t h M a i l ( S t r i n g   e m a i l )   {  
 	 	 / /   6 �Ǭ�  ���  xǝɈ�8�  ��1� 
 	 	 S t r i n g   a u t h K e y   =   g e t K e y ( 6 ) ;  
  
 	 	 / /   xǝ�T�|�  ����0� 
  
 	 	 M i m e M e s s a g e   m a i l   =   m a i l S e n d e r . c r e a t e M i m e M e s s a g e ( ) ;  
 	 	 S t r i n g   m a i l C o n t e n t   =   " < h 1 > [ t�T�|�  xǝ�] < / h 1 > < b r > < p > DŘ�  ��l�|�  tЭ�X���t�  t�T�|�  xǝ�t�  D�̸)�Ȳ�. < / p > "  
 	 	 	 	 +   " < a   h r e f = ' h t t p : / / l o c a l h o s t : 8 7 8 7 / f i n a l / s i g n U p C o n f i r m . d o ? e m a i l = "   +   e m a i l   +   " & a u t h K e y = "   +   a u t h K e y  
 	 	 	 	 +   " '   t a r g e t = ' _ b l e n k ' > t�T�|�  xǝ�  U�x�< / a > " ;  
  
 	 	 t r y   {  
 	 	 	 m a i l . s e t S u b j e c t ( " ���� ���  t�T�|�  xǝ�  " ,   " u t f - 8 " ) ;  
 	 	 	 m a i l . s e t T e x t ( m a i l C o n t e n t ,   " u t f - 8 " ,   " h t m l " ) ;  
 	 	 	 m a i l . a d d R e c i p i e n t ( M e s s a g e . R e c i p i e n t T y p e . T O ,   n e w   I n t e r n e t A d d r e s s ( e m a i l ) ) ;  
 	 	 	 m a i l S e n d e r . s e n d ( m a i l ) ;  
 	 	 }   c a t c h   ( M e s s a g i n g E x c e p t i o n   e )   {  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
  
 	 	 r e t u r n   a u t h K e y ;  
 	 }  
  
 }  
 
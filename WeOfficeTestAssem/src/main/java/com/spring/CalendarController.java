p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . i o . I O E x c e p t i o n ;  
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
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
  
 i m p o r t   c o m . s p r i n g . b i z . C a l e n d a r B i z ;  
 i m p o r t   c o m . s p r i n g . b i z . P a y m e n t B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . C a l e n d a r D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   C a l e n d a r C o n t r o l l e r   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   C a l e n d a r B i z   c a l b i z ;  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P a y m e n t B i z   p a y b i z ;  
 	  
 	 p r i v a t e   H t t p S e s s i o n   s e s s i o n ;  
  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / c a l e n d a r . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   c a l e n d a r ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   I O E x c e p t i o n   {  
                  
 	 	   r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = U T F - 8 " ) ;  
 	 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
 	                  
 	 	 	 / /   \���x� � �  ���   �8�$�0� 
 	   	 	 H t t p S e s s i o n   s e s s i o n   =   r e q u e s t . g e t S e s s i o n ( t r u e ) ;  
 	                   M e m b e r D t o   m b   =   n u l l ;  
 	                   S t r i n g   u s e r _ n u m   =   " " ;  
 	                    
 	                   i f ( ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " )   ! =   n u l l )   {  
 	                   	 m b   =   ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " ) ;  
 	                   	 u s e r _ n u m   =   m b . g e t U s e r _ n u m ( ) ;  
 	                   }   e l s e   {  
 	                   	 / /   \���D���  ���� 
 	   	 	 	 S t r i n g   m s g   =   " \���x�  ��  tǩ�t���8���. " ;  
 	   	 	 	 o u t . p r i n t l n ( " < s c r i p t > a l e r t ( ' " + m s g + " ' ) ;   l o c a t i o n . h r e f = ' l o g i n f o r m . d o ' ; < / s c r i p t > " ) ;  
 	   	 	 	 o u t . f l u s h ( ) ;  
 	                   }  
 	   	 	  
 	   	 	 / /   ��tǸ�  tǩ� ����ŀ� 
 	   	 	 / /   0   t���|�  ����  tǩ� ���  /   0 ���  ��p���  N U L L |ǽ���( - 1 )   tǩ�̸̹ 
 	   	 	 i n t   r e s   =   p a y b i z . a v a i l a b l e P a g e ( u s e r _ n u m ) ;  
 	   	 	 S y s t e m . o u t . p r i n t l n ( " ��tǸ�  tǩ� ����ŀ�:   " + r e s ) ;  
  
 	   	 	 i f ( r e s > 0 )   {  
 	   	 	 	 r e t u r n   " c a l e n d a r " ;  
 	   	 	 }   e l s e   {  
 	   	 	 	 r e t u r n   " p a g e l o c k " ;  
 	   	 	 }  
 	 	  
 / /                 r e t u r n   " c a l e n d a r " ;  
         }  
 	  
 	 @ R e s p o n s e B o d y  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / g e t A l l S c h e . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   M a p < S t r i n g ,   O b j e c t >   g e t A l l S c h e ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t )   {  
 	 	  
 	 	  
 	 	 M a p < S t r i n g ,   O b j e c t >   r m a p   =   n e w   H a s h M a p < > ( ) ;  
 	 	 S t r i n g   s t a r t D a t e   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " s t a r t D a t e " ) ;  
 	 	 S t r i n g   e n d D a t e   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " e n d D a t e " ) ;  
 	 	 S t r i n g   m e m b e r i d   =   " 1 " ;  
 	 	 L i s t < C a l e n d a r D t o >   c l i s t   =   n e w   A r r a y L i s t < > ( ) ;  
 	 	 c l i s t   =   c a l b i z . s e l e c t L i s t ( s t a r t D a t e ,   e n d D a t e ,   m e m b e r i d ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( c l i s t . s i z e ( ) ) ;  
 	 	 f o r   ( i n t   i   =   0 ;   i   <   c l i s t . s i z e ( ) ;   i + + )   {  
 	 	 	 r m a p . p u t ( " e v t "   +   i ,   c l i s t . g e t ( i ) ) ;  
 	 	 }  
  
 	 	 S y s t e m . o u t . p r i n t l n ( "  �8�$Ɣ�  �  /��  :   "   +   r m a p . s i z e ( ) ) ;  
 	 	 r e t u r n   r m a p ;  
 	 }  
  
 	 @ R e s p o n s e B o d y  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / a d d S c h e . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   M a p < S t r i n g ,   O b j e c t >   a d d S c h e ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t )   {  
 	 	 M a p < S t r i n g ,   O b j e c t >   r m a p   =   n e w   H a s h M a p < > ( ) ;  
 	 	 S t r i n g   _ i d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " _ i d " ) . t r i m ( ) ;  
 	 	 S t r i n g   t i t l e   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " t i t l e " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " s t a r t " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t A r r [ ]   =   s t a r t . s p l i t ( "   " ) ;  
 	 	 S t r i n g   e n d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " e n d " ) . t r i m ( ) ;  
 	 	 S t r i n g   e n d t A r r [ ]   =   e n d . s p l i t ( "   " ) ;  
 	 	 S t r i n g   d e s c r i p t i o n   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " d e s c r i p t i o n " ) . t r i m ( ) ;  
 	 	 S t r i n g   t y p e   =   " p u b " ;  
 	 	 S t r i n g   u s e r n a m e   =   " 1 " ;  
 	 	 S y s t e m . o u t . p r i n t l n ( _ i d ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( t i t l e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " s t a r t :   " + s t a r t ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " e n d :   " + e n d ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( d e s c r i p t i o n ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( t y p e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( u s e r n a m e ) ;  
 	 	 C a l e n d a r D t o   c d t o   =   n e w   C a l e n d a r D t o ( _ i d ,   t i t l e ,   d e s c r i p t i o n ,   t y p e ,   u s e r n a m e ,   s t a r t A r r [ 0 ] ,   e n d t A r r [ 0 ] ) ;  
 	 	 i f   ( t y p e . e q u a l s ( " p u b " ) )   {  
  
 	 	 	 i n t   r e s   =   c a l b i z . i n s e r t ( c d t o ) ;  
 	 	 	 i f   ( r e s   >   0 )   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��1�  D�̸" ) ;  
 	 	 	 }   e l s e   {  
 	 	 	 	 S y s t e m . o u t . p r i n t l n ( " ��1�  ��(�" ) ;  
 	 	 	 }  
  
 	 	 }    
 	 	 r e t u r n   r m a p ;  
 	 }  
  
 	 @ R e s p o n s e B o d y  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / d r o p U p d a t e S c h e . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   M a p < S t r i n g ,   O b j e c t >   d r o p U p d a t e S c h e ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t )   {  
 	 	 M a p < S t r i n g ,   O b j e c t >   r m a p   =   n e w   H a s h M a p < > ( ) ;  
 	 	 S t r i n g   i d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " _ i d " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " s t a r t " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t A r r [ ]   =   s t a r t . s p l i t ( "   " ) ;  
 	 	 S t r i n g   e n d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " e n d " ) . t r i m ( ) ;  
 	 	 S t r i n g   e n d A r r [ ]   =   e n d . s p l i t ( "   " ) ;  
 	 	 S t r i n g   t y p e   =   " p u b " ;  
 	 	 C a l e n d a r D t o   d t o   =   n e w   C a l e n d a r D t o ( ) ;  
 	 	 d t o . s e t _ i d ( i d ) ;  
 	 	 d t o . s e t U s e r n a m e ( " 1 " ) ;  
 	 	 d t o . s e t S t a r t ( s t a r t A r r [ 0 ] ) ;  
 	 	 d t o . s e t E n d ( e n d A r r [ 0 ] ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( e n d A r r [ 0 ] ) ;  
 	 	 i f   ( t y p e . e q u a l s ( " p u b " ) )   {  
 	 	 	 i n t   r e s   =   c a l b i z . d r o p U p d a t e ( d t o ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " ܴ����d�ܴm�" ) ;  
 	 	 	 b o o l e a n   v a l i d   =   f a l s e ;  
 	 	 	 i f   ( r e s   >   0 )   {  
 	 	 	 	 v a l i d   =   t r u e ;  
 	 	 	 }  
 	 	 	 r m a p . p u t ( " v a l i d " ,   v a l i d ) ;  
 	 	 }    
 	 	 r e t u r n   r m a p ;  
 	 }  
  
 	 @ R e s p o n s e B o d y  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / d e l e t e S c h e . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   M a p < S t r i n g ,   O b j e c t >   d e l e t e S c h e ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t )   {  
 	 	 M a p < S t r i n g ,   O b j e c t >   r m a p   =   n e w   H a s h M a p < > ( ) ;  
 	 	 S t r i n g   i d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " _ i d " ) . t r i m ( ) ;  
 	 	 C a l e n d a r D t o   d t o   =   n e w   C a l e n d a r D t o ( ) ;  
 	 	 d t o . s e t _ i d ( i d ) ;  
 	 	 d t o . s e t U s e r n a m e ( " 1 " ) ;  
  
 	 	 C a l e n d a r D t o   c d t o   =   c a l b i z . s e l e c t S c h e O n e ( d t o ) ;  
 	 	 i n t   r e s   =   - 1 ;  
  
 	 	 i f   ( c d t o . g e t T y p e ( ) . e q u a l s ( " p u b " ) )   {  
 	 	 	 r e s   =   c a l b i z . d e l e t e ( d t o ) ;  
 	 	 	 b o o l e a n   v a l i d   =   f a l s e ;  
 	 	 	 i f   ( r e s   >   0 )   {  
 	 	 	 	 v a l i d   =   t r u e ;  
 	 	 	 }  
 	 	 	 r m a p . p u t ( " v a l i d " ,   v a l i d ) ;  
 	 	 }    
 	 	 r e t u r n   r m a p ;  
 	 }  
  
 	 @ R e s p o n s e B o d y  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / u p d a t e S c h e . d o " ,   m e t h o d   =   R e q u e s t M e t h o d . P O S T )  
 	 p u b l i c   M a p < S t r i n g ,   O b j e c t >   u p d a t e S c h e ( H t t p S e r v l e t R e q u e s t   h t t p S e r v l e t R e q u e s t )   {  
 	 	 M a p < S t r i n g ,   O b j e c t >   r m a p   =   n e w   H a s h M a p < > ( ) ;  
 	 	 S t r i n g   _ i d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " _ i d " ) . t r i m ( ) ;  
 	 	 S t r i n g   t i t l e   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " t i t l e " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " s t a r t " ) . t r i m ( ) ;  
 	 	 S t r i n g   s t a r t A r r [ ]   =   s t a r t . s p l i t ( "   " ) ;  
 	 	 S t r i n g   e n d   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " e n d " ) . t r i m ( ) ;  
 	 	 S t r i n g   e n d A r r [ ]   =   e n d . s p l i t ( "   " ) ;  
 	 	 S t r i n g   d e s c r i p t i o n   =   h t t p S e r v l e t R e q u e s t . g e t P a r a m e t e r ( " d e s c r i p t i o n " ) . t r i m ( ) ;  
 	 	 S t r i n g   t y p e   =   " p u b " ;  
 	 	 S t r i n g   u s e r n a m e   =   " 1 " ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " ��p�tǸ�  ��  D�t��  :   "   +   _ i d ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( t i t l e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( s t a r t ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( e n d ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( d e s c r i p t i o n ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( t y p e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( u s e r n a m e ) ;  
 	 	 C a l e n d a r D t o   c d t o   =   n e w   C a l e n d a r D t o ( _ i d ,   t i t l e ,   d e s c r i p t i o n ,   t y p e ,   u s e r n a m e ,   s t a r t A r r [ 0 ] ,   e n d A r r [ 0 ] ) ;  
 	 	 i n t   r e s   =   - 1 ;  
 	 	 i f   ( t y p e . e q u a l s ( " p u b " ) )   {  
 	 	 	 r e s   =   c a l b i z . u p d a t e ( c d t o ) ;  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " d d " ) ;  
 	 	 	 b o o l e a n   v a l i d   =   f a l s e ;  
 	 	 	 i f   ( r e s   >   0 )   {  
 	 	 	 	 v a l i d   =   t r u e ;  
 	 	 	 }  
 	 	 	 r m a p . p u t ( " v a l i d " ,   v a l i d ) ;  
 	 	 	 r m a p . p u t ( " r e s " ,   r e s ) ;  
 	 	 }    
 	 	 r e t u r n   r m a p ;  
 	 }  
 }  
 
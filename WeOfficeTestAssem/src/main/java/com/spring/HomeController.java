p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . i o . I O E x c e p t i o n ;  
 i m p o r t   j a v a . i o . P r i n t W r i t e r ;  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e q u e s t ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e s p o n s e ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   o r g . s l f 4 j . L o g g e r ;  
 i m p o r t   o r g . s l f 4 j . L o g g e r F a c t o r y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . C o n t r o l l e r ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . u i . M o d e l ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t B o d y ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M a p p i n g ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e q u e s t M e t h o d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
  
 i m p o r t   c o m . s p r i n g . b i z . M e m b e r B i z ;  
 i m p o r t   c o m . s p r i n g . b i z . P a y m e n t B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   H o m e C o n t r o l l e r   {  
 	  
 	 p r i v a t e   s t a t i c   f i n a l   L o g g e r   l o g g e r   =   L o g g e r F a c t o r y . g e t L o g g e r ( H o m e C o n t r o l l e r . c l a s s ) ;  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   M e m b e r B i z   m _ b i z ;  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P a y m e n t B i z   p a y b i z ;  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / l o g i n f o r m . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   l o g i n f o r m ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   m a i n . j s p " ) ;  
                 r e t u r n   " l o g i n " ;  
         }  
  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / r e s e r v a t i o n . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   r e s e r v a t i o n ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   I O E x c e p t i o n   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   r e s e r v a t i o n . j s p " ) ;  
                  
                 r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = U T F - 8 " ) ;  
 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
                  
 	 	 / /   \���x� � �  ���   �8�$�0� 
   	 	 H t t p S e s s i o n   s e s s i o n   =   r e q u e s t . g e t S e s s i o n ( t r u e ) ;  
                   M e m b e r D t o   m b   =   n u l l ;  
                   S t r i n g   u s e r _ n u m   =   " " ;  
                    
                   i f ( ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " )   ! =   n u l l )   {  
                   	 m b   =   ( M e m b e r D t o ) s e s s i o n . g e t A t t r i b u t e ( " l o g i n " ) ;  
                   	 u s e r _ n u m   =   m b . g e t U s e r _ n u m ( ) ;  
                   }   e l s e   {  
                   	 / /   \���D���  ���� 
   	 	 	 S t r i n g   m s g   =   " \���x�  ��  tǩ�t���8���. " ;  
   	 	 	 o u t . p r i n t l n ( " < s c r i p t > a l e r t ( ' " + m s g + " ' ) ;   l o c a t i o n . h r e f = ' l o g i n f o r m . d o ' ; < / s c r i p t > " ) ;  
   	 	 	 o u t . f l u s h ( ) ;  
                   }  
   	 	  
   	 	 / /   ��tǸ�  tǩ� ����ŀ� 
   	 	 / /   0   t���|�  ����  tǩ� ���  /   0 ���  ��p���  N U L L |ǽ���( - 1 )   tǩ�̸̹ 
   	 	 i n t   r e s   =   p a y b i z . a v a i l a b l e P a g e ( u s e r _ n u m ) ;  
   	 	 S y s t e m . o u t . p r i n t l n ( " ��tǸ�  tǩ� ����ŀ�:   " + r e s ) ;  
  
   	 	 i f ( r e s > 0 )   {  
   	 	 	 r e t u r n   " r e s e r v a t i o n " ;  
   	 	 }   e l s e   {  
   	 	 	 r e t u r n   " p a g e l o c k " ;  
   	 	 }  
          
                  
                 / / r e t u r n   " r e s e r v a t i o n " ;  
         }  
 	  
 	 / / d������¸�  ( 1 0 / 2 5 |ǔ� �)  
 	 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / m e m b e r . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
 	         p u b l i c   S t r i n g   m e m b e r ( L o c a l e   l o c a l e ,   M o d e l   m o d e l ,   H t t p S e r v l e t R e q u e s t   r e q u e s t ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   I O E x c e p t i o n   {  
 	                 l o g g e r . i n f o ( " [ l o g ]   :   m e m b e r p a g e . j s p " ) ;  
 	                  
 	                 r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = U T F - 8 " ) ;  
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
 	   	 	 m o d e l . a d d A t t r i b u t e ( " m e m b e r " , m _ b i z . m e m b e r l i s t ( ) ) ;  
 / / 	   	 	 i f ( r e s > 0 )   {  
 / / 	   	 	 	 m o d e l . a d d A t t r i b u t e ( " m e m b e r " , m _ b i z . m e m b e r l i s t ( ) ) ;  
 / / 	   	 	 	 r e t u r n   " m e m b e r p a g e " ;  
 / / 	   	 	 }   e l s e   {  
 / / 	   	 	 	 r e t u r n   " p a g e l o c k " ;  
 / / 	   	 	 }  
  
 	                  
 	                  
 	                 r e t u r n   " m e m b e r p a g e " ;  
 	         }  
 	  
 / / 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / c h a n n e l . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
 / /         p u b l i c   S t r i n g   c h a n n e l ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
 / /                 l o g g e r . i n f o ( " [ l o g ]   :   c h a n n e l . h t m l " ) ;  
 / /                 r e t u r n   " c h a n n e l " ;  
 / /         }  
 	  
 / / 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / c h a n n e l . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } ,   c o n s u m e s   =   " a p p l i c a t i o n / j s o n " )  
 / / 	 / / c o n s u m e s   XՔ�  ��Д�  a p p l i c a t i o n / j s o n   ���t��.  
 / / 	 @ R e s p o n s e B o d y   / / j s o n   p�t�0�|�  �0��t�  @ R e s p o n s e B o d y   `��L�t�X� 
 / / 	 p u b l i c   S t r i n g   s t a r t A p p ( @ R e q u e s t B o d y   S t r i n g   b o d y )   {  
 / / 	 	 	 S y s t e m . o u t . p r i n t l n ( b o d y ) ;  
 / / 	 	 	 r e t u r n   " c h a n n e l " ;  
 / / 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / c h a n n e l . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } , c o n s u m e s   =   " a p p l i c a t i o n / j s o n " )  
 	 / / c o n s u m e s   XՔ�  ��Д�  a p p l i c a t i o n / j s o n   ���t��.  
 	 @ R e s p o n s e B o d y   / / j s o n   p�t�0�|�  �0��t�  @ R e s p o n s e B o d y   `��L�t�X� 
 	 p u b l i c   S t r i n g   s t a r t A p p ( @ R e q u e s t B o d y   S t r i n g   b o d y )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( b o d y ) ;  
 	 	 	 r e t u r n   " / " ;  
 	 }  
 	  
 	  
 	  
 } 
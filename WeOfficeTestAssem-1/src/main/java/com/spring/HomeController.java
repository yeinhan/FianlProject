p a c k a g e   c o m . s p r i n g ;  
  
 i m p o r t   j a v a . u t i l . L o c a l e ;  
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
 i m p o r t   c o m . s p r i n g . b i z . B o a r d B i z ;  
 i m p o r t   c o m . s p r i n g . b i z . P r o j e c t B i z ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   H o m e C o n t r o l l e r   {  
 	 / /   T���ܴ  ��  / / / / / / / / / / / / / / / / / / / / / / / / / / / /  
 	  
 	 p r i v a t e   s t a t i c   f i n a l   L o g g e r   l o g g e r   =   L o g g e r F a c t o r y . g e t L o g g e r ( H o m e C o n t r o l l e r . c l a s s ) ;  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P r o j e c t B i z   p j t b i z ;  
 	 p r i v a t e   B o a r d B i z   b i z ;  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / m a i n . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   h o m e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   m a i n . j s p " ) ;  
                 r e t u r n   " m a i n " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / l o g i n f o r m . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   l o g i n f o r m ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   m a i n . j s p " ) ;  
                 r e t u r n   " l o g i n " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / n o t i c e . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   n o t i c e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   n o t i c e . j s p " ) ;  
                 r e t u r n   " n o t i c e " ;  
         }  
  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / r e s e r v a t i o n . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   r e s e r v a t i o n ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   r e s e r v a t i o n . j s p " ) ;  
                 r e t u r n   " r e s e r v a t i o n " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / m e m b e r . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   m e m b e r ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   m e m b e r p a g e . j s p " ) ;  
                 r e t u r n   " m e m b e r p a g e " ;  
         }  
 	  
 / / 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / m y p a g e . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
 / /         p u b l i c   S t r i n g   m y p a g e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
 / /                 l o g g e r . i n f o ( " [ l o g ]   :   m y p a g e . j s p " ) ;  
 / /                 r e t u r n   " m y p a g e " ;  
 / /         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / p r o j e c t . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   p r o j e c t ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                 l o g g e r . i n f o ( " [ l o g ]   :   p r o j e c t . j s p " ) ;  
                  
 	 	 m o d e l . a d d A t t r i b u t e ( " l i s t " ,   p j t b i z . s e l e c t A l l ( ) ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " m e m b e r " ,   p j t b i z . s e l e c t M e m b e r ( ) ) ;  
 	 	  
                 r e t u r n   " p r o j e c t " ;  
         }  
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
 } 
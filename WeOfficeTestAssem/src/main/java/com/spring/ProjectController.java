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
 i m p o r t   o r g . s p r i n g f r a m e w o r k . w e b . b i n d . a n n o t a t i o n . R e s p o n s e B o d y ;  
  
 i m p o r t   c o m . s p r i n g . b i z . P r o j e c t B i z ;  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
  
 @ C o n t r o l l e r  
 p u b l i c   c l a s s   P r o j e c t C o n t r o l l e r   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   P r o j e c t B i z   p j t b i z ;  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / t o p a l e r t s . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   L i s t < P r o j e c t D t o > >   p j t S e l e c t O n e ( )   {  
  
 	 	 L i s t < P r o j e c t D t o >   l i s t   =   p j t b i z . s e l e c t N e w R e g i P j t ( ) ;  
 	 	  
 	 	 M a p < S t r i n g ,   L i s t < P r o j e c t D t o > >   m a p   =   n e w   H a s h M a p < S t r i n g ,   L i s t < P r o j e c t D t o > > ( ) ;  
 	 	 m a p . p u t ( " p j t N a m e " ,   l i s t ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / n o t i c e . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   n o t i c e ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                  
                 m o d e l . a d d A t t r i b u t e ( " p j t l i s t " ,   p j t b i z . s e l e c t P j t N o t i c e ( ) ) ;  
                 m o d e l . a d d A t t r i b u t e ( " p j t l i s t _ d e s c " ,   p j t b i z . s e l e c t P j t N o t i c e _ D e s c ( ) ) ;  
                 m o d e l . a d d A t t r i b u t e ( " w k s l i s t " ,   p j t b i z . s e l e c t A l l W k s ( ) ) ;  
                  
                 r e t u r n   " n o t i c e " ;  
         }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e   =   " / p r o j e c t . d o " ,   m e t h o d   =   { R e q u e s t M e t h o d . P O S T ,   R e q u e s t M e t h o d . G E T } )  
         p u b l i c   S t r i n g   p r o j e c t ( L o c a l e   l o c a l e ,   M o d e l   m o d e l )   {  
                  
 	 	 m o d e l . a d d A t t r i b u t e ( " l i s t " ,   p j t b i z . s e l e c t A l l ( ) ) ;  
 	 	 m o d e l . a d d A t t r i b u t e ( " m e m b e r " ,   p j t b i z . s e l e c t M e m b e r ( ) ) ;  
 	 	  
                 r e t u r n   " p r o j e c t " ;  
         }  
  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / p j t s e l e c t O n e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   P r o j e c t D t o >   p j t S e l e c t O n e ( @ R e q u e s t B o d y   P r o j e c t D t o   d t o )   {  
  
 	 	 P r o j e c t D t o   r e s   =   p j t b i z . s e l e c t O n e ( d t o ) ;  
  
 	 	 M a p < S t r i n g ,   P r o j e c t D t o >   m a p   =   n e w   H a s h M a p < S t r i n g ,   P r o j e c t D t o > ( ) ;  
 	 	 m a p . p u t ( " p j t d t o " ,   r e s ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
 	  
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / p j t i n s e r t . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   p j t I n s e r t ( @ R e q u e s t B o d y   P r o j e c t D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   p j t b i z . i n s e r t ( d t o ) ;  
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
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / p j t u p d a t e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   p j t U p d a t e ( @ R e q u e s t B o d y   P r o j e c t D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   p j t b i z . u p d a t e ( d t o ) ;  
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
 	 @ R e q u e s t M a p p i n g ( v a l u e = " / p j t d e l e t e . d o " ,   m e t h o d = R e q u e s t M e t h o d . P O S T )  
 	 @ R e s p o n s e B o d y  
 	 p u b l i c   M a p < S t r i n g ,   B o o l e a n >   p j t D e l e t e ( @ R e q u e s t B o d y   P r o j e c t D t o   d t o )   {  
  
 	 	 b o o l e a n   c h e c k   =   f a l s e ;  
 	 	 i n t   r e s   =   p j t b i z . d e l e t e ( d t o ) ;  
 	 	 i f ( r e s > 0 )   {  
 	 	 	 c h e c k   =   t r u e ;  
 	 	 }  
 	 	  
 	 	 M a p < S t r i n g ,   B o o l e a n >   m a p   =   n e w   H a s h M a p < S t r i n g ,   B o o l e a n > ( ) ;  
 	 	 m a p . p u t ( " c h e c k " ,   c h e c k ) ;  
 	 	  
 	 	 r e t u r n   m a p ;  
 	 }  
  
 }  
 
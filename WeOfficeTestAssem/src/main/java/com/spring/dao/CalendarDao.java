p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
  
 i m p o r t   c o m . s p r i n g . d t o . C a l e n d a r D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   C a l e n d a r D a o   {  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
  
 	 p r i v a t e   S t r i n g   N A M E S P A C E   =   " c a l e n d a r . " ;  
  
 	 p u b l i c   L i s t < C a l e n d a r D t o >   s e l e c t L i s t ( )   {  
 	 	 r e t u r n   n u l l ;  
 	 }  
  
 	 p u b l i c   C a l e n d a r D t o   s e l e c t O n e ( S t r i n g   m e m b e r i d )   {  
 	 	 r e t u r n   n u l l ;  
 	 }  
  
 	 p u b l i c   i n t   i n s e r t ( C a l e n d a r D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E   +   " i n s e r t " ,   d t o ) ;  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 p u b l i c   i n t   u p d a t e ( C a l e n d a r D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E   +   " u p d a t e " ,   d t o ) ;  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 p u b l i c   i n t   d e l e t e ( S t r i n g   m e m b e r i d )   {  
 	 	 r e t u r n   0 ;  
 	 }  
  
 	 p u b l i c   L i s t < C a l e n d a r D t o >   s e l e c t L i s t ( S t r i n g   s t a r t D a t e ,   S t r i n g   e n d D a t e ,   S t r i n g   m e m b e r i d )   {  
 	 	 L i s t < C a l e n d a r D t o >   l i s t   =   n e w   A r r a y L i s t < > ( ) ;  
 	 	 s t a r t D a t e   + =   "   0 0 : 0 0 " ;  
 	 	 e n d D a t e   + =   "   2 3 : 5 9 " ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " s t a r t D a t e   :   "   +   s t a r t D a t e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " e n d D a t e   :   "   +   e n d D a t e ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " m e m b e r i d   :   "   +   m e m b e r i d ) ;  
 	 	 C a l e n d a r D t o   c d t o   =   n e w   C a l e n d a r D t o ( ) ;  
 	 	 c d t o . s e t S t a r t ( s t a r t D a t e ) ;  
 	 	 c d t o . s e t E n d ( e n d D a t e ) ;  
 	 	 c d t o . s e t U s e r n a m e ( m e m b e r i d ) ;  
 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E   +   " s e l e c t C h e c k " ,   c d t o ) ;  
 	 	 S y s t e m . o u t . p r i n t l n ( " l i s t   ��tǈ�  :   "   +   l i s t . s i z e ( ) ) ;  
 	 	 r e t u r n   l i s t ;  
 	 }  
  
 	 p u b l i c   i n t   d e l e t e ( C a l e n d a r D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E   +   " d e l e t e " ,   d t o ) ;  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 p u b l i c   i n t   d r o p U p d a t e ( C a l e n d a r D t o   d t o )   {  
 	 	 i n t   r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E   +   " d r o p U p d a t e " ,   d t o ) ;  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 p u b l i c   C a l e n d a r D t o   s e l e c t S c h e O n e ( C a l e n d a r D t o   d t o )   {  
 	 	 C a l e n d a r D t o   c d t o   =   n e w   C a l e n d a r D t o ( ) ;  
 	 	 c d t o   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E   +   " s e l e c t S c h e O n e " ,   d t o ) ;  
 	 	 r e t u r n   c d t o ;  
 	 }  
  
 }  
 
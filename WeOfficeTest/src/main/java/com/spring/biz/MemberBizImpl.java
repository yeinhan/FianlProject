p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . i o . I O E x c e p t i o n ;  
 i m p o r t   j a v a . i o . P r i n t W r i t e r ;  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e s p o n s e ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . M e m b e r D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   M e m b e r B i z I m p l   i m p l e m e n t s   M e m b e r B i z   {  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   M e m b e r D a o   d a o ;  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   M e m b e r D t o   l o g i n ( M e m b e r D t o   d t o )   {  
 	 	 r e t u r n   d a o . l o g i n ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   v o i d   l o g o u t ( H t t p S e s s i o n   s e s s i o n )   {  
 	 	 s e s s i o n . i n v a l i d a t e ( ) ;  
 	 }  
  
  
 	 / / D�t��  �������( a j a x )  
 	 @ O v e r r i d e  
 	 p u b l i c   v o i d   c h e c k _ i d ( S t r i n g   u _ i d ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n   {  
 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
 	 	 o u t . p r i n t l n ( d a o . c h e c k _ i d ( u _ i d ) ) ;  
 	 	 o u t . c l o s e ( ) ;  
 	 	  
 	 }  
  
 	 / / ���� ��� 
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   r e g i s t e r ( M e m b e r D t o   d t o ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n   {  
 	 	 r e s p o n s e . s e t C o n t e n t T y p e ( " t e x t / h t m l ;   c h a r s e t = u t f - 8 " ) ;  
 	 	 P r i n t W r i t e r   o u t   =   r e s p o n s e . g e t W r i t e r ( ) ;  
 	 	  
 	 	 i f ( d a o . c h e c k _ i d ( d t o . g e t U _ i d ( ) )   = =   1 )   {  
 	 	 	 o u t . p r i n t l n ( " < s c r i p t > " ) ;  
 	 	 	 o u t . p r i n t l n ( " a l e r t ( ' ٳ|�\�  D�t�� �  �ǵ�Ȳ�. ' ) ; " ) ;  
 	 	 	 o u t . p r i n t l n ( " h i s t o r y . g o ( - 1 ) ; " ) ;  
 	 	 	 o u t . p r i n t l n ( " < / s c r i p t > " ) ;  
 	 	 	 o u t . c l o s e ( ) ;  
 	 	 	 r e t u r n   0 ;  
 	 	 } e l s e   {  
 	 	 	 d a o . r e g i s t e r ( d t o ) ;  
 	 	 	  
 	 	 	 r e t u r n   1 ;  
 	 	 }  
 	 	  
 	 }  
  
 	 / / D� ���8�  >�0�( D� ���8�   �8�4�)  
 	 @ O v e r r i d e  
 	 p u b l i c   S t r i n g   g e t P w ( M a p < S t r i n g ,   O b j e c t >   p a r a m M a p )   {  
 	 	 r e t u r n   d a o . g e t P W ( p a r a m M a p ) ;  
 	 }  
  
 	  
  
  
 }  
 
p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . t r a n s a c t i o n . a n n o t a t i o n . T r a n s a c t i o n a l ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 p u b l i c   i n t e r f a c e   M e m b e r D a o   {  
 	 S t r i n g   N A M E S P A C E   =   " u s e r . " ;  
 	  
 	 / / \���x� 
 	 p u b l i c   M e m b e r D t o   l o g i n ( M e m b e r D t o   d t o ) ;  
 	  
 	 / / D�t��  ���  ��l� 
 	 p u b l i c   i n t   c h e c k _ i d   ( S t r i n g   u _ i d ) ;  
 	  
 	 / / ���� ���  �̬� 
 	 @ T r a n s a c t i o n a l  
 	 p u b l i c   i n t   r e g i s t e r ( M e m b e r D t o   d t o ) ;  
  
 	 p u b l i c   S t r i n g   g e t P W ( M a p < S t r i n g ,   O b j e c t >   p a r a m M a p ) ;  
  
 	  
 }  
 
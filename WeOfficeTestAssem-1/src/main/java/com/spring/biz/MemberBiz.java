p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . M a p ;  
  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e r v l e t R e s p o n s e ;  
 i m p o r t   j a v a x . s e r v l e t . h t t p . H t t p S e s s i o n ;  
  
 i m p o r t   c o m . s p r i n g . d t o . M e m b e r D t o ;  
  
 p u b l i c   i n t e r f a c e   M e m b e r B i z   {  
  
 	 p u b l i c   M e m b e r D t o   l o g i n ( M e m b e r D t o   d t o ) ;  
 	  
 	 p u b l i c   v o i d   l o g o u t ( H t t p S e s s i o n   s e s s i o n ) ;  
 	  
 	 p u b l i c   v o i d   c h e c k _ i d ( S t r i n g   u _ i d ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n ;  
 	  
 	 p u b l i c   v o i d   c h e c k _ e m a i l ( S t r i n g   e m a i l ,   H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n ;  
 	  
 	 p u b l i c   i n t   r e g i s t e r ( M e m b e r D t o   d t o ,     H t t p S e r v l e t R e s p o n s e   r e s p o n s e )   t h r o w s   E x c e p t i o n ;  
 	  
 	 p u b l i c   S t r i n g   g e t P w ( M a p < S t r i n g ,   O b j e c t >   p a r a m M a p ) ;  
 	  
 	 p u b l i c   i n t   u p d a t e A u t h K e y ( M a p < S t r i n g ,   S t r i n g >   m a p ) ;  
 	  
 	 p u b l i c   i n t   u p d a t e A u t h S t a t u s ( M a p < S t r i n g ,   S t r i n g >   m a p ) ;  
  
 }  
 
p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . T a s k L i s t D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . T a s k L i s t D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   T a s k L i s t B i z I m p l   i m p l e m e n t s   T a s k L i s t B i z   {  
 	  
 	 @ A u t o w i r e d  
 	 p r i v a t e   T a s k L i s t D a o   t a s k d a o ;  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   t a s k i n s e r t ( T a s k L i s t D t o   d t o )   {  
 	 	 r e t u r n   t a s k d a o . t a s k i n s e r t ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   t a s k d e l e t e ( T a s k L i s t D t o   d t o )   {  
 	 	 r e t u r n   t a s k d a o . t a s k d e l e t e ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e c h k _ y ( T a s k L i s t D t o   d t o )   {  
 	 	 r e t u r n   t a s k d a o . u p d a t e c h k _ y ( d t o ) ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e c h k _ n ( T a s k L i s t D t o   d t o )   {  
 	 	 r e t u r n   t a s k d a o . u p d a t e c h k _ n ( d t o ) ;  
 	 }  
  
 }  
 
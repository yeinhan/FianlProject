p a c k a g e   c o m . s p r i n g . b i z ;  
  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . S e r v i c e ;  
  
 i m p o r t   c o m . s p r i n g . d a o . C a l e n d a r D a o ;  
 i m p o r t   c o m . s p r i n g . d t o . C a l e n d a r D t o ;  
  
 @ S e r v i c e  
 p u b l i c   c l a s s   C a l e n d a r B i z   {  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   C a l e n d a r D a o   d a o ;  
 	  
 	 p u b l i c   L i s t < C a l e n d a r D t o >   s e l e c t L i s t ( ) {  
 	              
 	             r e t u r n   n u l l ;  
 	       }  
 	        
 	       p u b l i c   C a l e n d a r D t o   s e l e c t O n e ( S t r i n g   m e m b e r i d )   {  
 	              
 	             r e t u r n   n u l l ;  
 	       }  
 	        
 	       p u b l i c   i n t   i n s e r t ( C a l e n d a r D t o   d t o )   {  
 	             r e t u r n   d a o . i n s e r t ( d t o ) ;  
 	       }  
 	        
 	       p u b l i c   i n t   u p d a t e ( C a l e n d a r D t o   d t o )   {  
 	             r e t u r n   d a o . u p d a t e ( d t o ) ;  
 	       }  
 	        
 	       p u b l i c   i n t   d e l e t e ( S t r i n g   m e m b e r i d )   {  
 	              
 	             r e t u r n   0 ;  
 	       }  
  
 	       p u b l i c   L i s t < C a l e n d a r D t o >   s e l e c t L i s t ( S t r i n g   s t a r t D a t e ,   S t r i n g   e n d D a t e ,   S t r i n g   m e m b e r i d )   {  
 	             r e t u r n   d a o . s e l e c t L i s t ( s t a r t D a t e , e n d D a t e , m e m b e r i d ) ;  
 	       }  
  
 	       p u b l i c   i n t   d e l e t e ( C a l e n d a r D t o   d t o )   {  
 	             r e t u r n   d a o . d e l e t e ( d t o ) ;  
 	       }  
  
 	       p u b l i c   i n t   d r o p U p d a t e ( C a l e n d a r D t o   d t o )   {  
 	             r e t u r n   d a o . d r o p U p d a t e ( d t o ) ;  
 	       }  
  
 	 p u b l i c   C a l e n d a r D t o   s e l e c t S c h e O n e ( C a l e n d a r D t o   d t o )   {  
 	 	 r e t u r n   d a o . s e l e c t S c h e O n e ( d t o ) ;  
 	 }  
 	  
 }  
 
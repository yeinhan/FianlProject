p a c k a g e   c o m . s p r i n g . d a o ;  
  
 i m p o r t   j a v a . u t i l . A r r a y L i s t ;  
 i m p o r t   j a v a . u t i l . L i s t ;  
  
 i m p o r t   o r g . m y b a t i s . s p r i n g . S q l S e s s i o n T e m p l a t e ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . b e a n s . f a c t o r y . a n n o t a t i o n . A u t o w i r e d ;  
 i m p o r t   o r g . s p r i n g f r a m e w o r k . s t e r e o t y p e . R e p o s i t o r y ;  
  
 i m p o r t   c o m . s p r i n g . d t o . P r o j e c t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . T a s k L i s t D t o ;  
 i m p o r t   c o m . s p r i n g . d t o . U p l o a d F i l e ;  
 i m p o r t   c o m . s p r i n g . d t o . W o r k S p a c e D t o ;  
  
 @ R e p o s i t o r y  
 p u b l i c   c l a s s   W o r k S p a c e D a o I m p l   i m p l e m e n t s   W o r k S p a c e D a o   {  
  
 	 @ A u t o w i r e d  
 	 p r i v a t e   S q l S e s s i o n T e m p l a t e   s q l S e s s i o n ;  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < W o r k S p a c e D t o >   s e l e c t L i s t ( S t r i n g   p _ i d )   {  
 	 	 L i s t < W o r k S p a c e D t o >   l i s t   =   n e w   A r r a y L i s t < W o r k S p a c e D t o > ( ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " s e l e c t L i s t " ,   p _ i d ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   s e l e c t   L i s t " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   l i s t ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   i n s e r t ( W o r k S p a c e D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " i n s e r t " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   i n s e r t " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   u p d a t e ( W o r k S p a c e D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . u p d a t e ( N A M E S P A C E + " u p d a t e " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   u p d a t e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   d e l e t e ( W o r k S p a c e D t o   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E + " d e l e t e " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   d e l e t e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   P r o j e c t D t o   s e l e c t p j t O n e ( S t r i n g   p _ i d )   {  
 	 	 P r o j e c t D t o   l i s t   =   n u l l ;  
 	 	  
 	 	 t r y   {  
 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t O n e ( N A M E S P A C E + " s e l e c t p j t O n e " ,   p _ i d ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   s e l e c t   p j t O n e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   l i s t ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < T a s k L i s t D t o >   s e l e c t T a s k L i s t ( )   {  
 	 	 L i s t < T a s k L i s t D t o >   l i s t   =   n e w   A r r a y L i s t < T a s k L i s t D t o > ( ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " s e l e c t T a s k L i s t " ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   s e l e c t   T a s k   L i s t " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   l i s t ;  
 	 }  
  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   f i l e i n s e r t ( U p l o a d F i l e   f i l e O b j )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . i n s e r t ( N A M E S P A C E + " f i l e i n s e r t " ,   f i l e O b j ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   i n s e r t   f i l e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
 	  
 	 @ O v e r r i d e  
 	 p u b l i c   L i s t < U p l o a d F i l e >   s e l e c t F i l e L i s t ( S t r i n g   p _ i d )   {  
 	 	 L i s t < U p l o a d F i l e >   l i s t   =   n e w   A r r a y L i s t < U p l o a d F i l e > ( ) ;  
 	 	  
 	 	 t r y   {  
 	 	 	 l i s t   =   s q l S e s s i o n . s e l e c t L i s t ( N A M E S P A C E + " s e l e c t F i l e L i s t " ,   p _ i d ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   s e l e c t   F i l e   L i s t " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   l i s t ;  
 	 }  
  
 	 @ O v e r r i d e  
 	 p u b l i c   i n t   f i l e d e l e t e ( U p l o a d F i l e   d t o )   {  
 	 	 i n t   r e s   =   0 ;  
 	 	  
 	 	 t r y   {  
 	 	 	 r e s   =   s q l S e s s i o n . d e l e t e ( N A M E S P A C E + " f i l e d e l e t e " ,   d t o ) ;  
 	 	 }   c a t c h   ( E x c e p t i o n   e )   {  
 	 	 	 S y s t e m . o u t . p r i n t l n ( " [ e r r o r ]   d e l e t e   f i l e " ) ;  
 	 	 	 e . p r i n t S t a c k T r a c e ( ) ;  
 	 	 }  
 	 	  
 	 	 r e t u r n   r e s ;  
 	 }  
  
 }  
 
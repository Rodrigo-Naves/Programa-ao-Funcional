1)
a)

(||) :: Bool->Bool->Bool

True || True = True
True || False = True
False || True = True

b)

tipoOu :: Bool->Bool->Bool
tipoOu a b 
	|( a == False && b == False) = False
	| otherwise = True
	
2)

type Ponto = (Float, Float)

dist :: Ponto -> Ponto -> Float

dist (x1, y1) (x2, y2) = sqrt (x*x + y*y)
	where
		x = x1 - x2
		y = y1 - y2

3)

Uso de guardas

fatorialg :: Int -> Int
fatorialg n 
| n==0 = 1
| otherwise = n * fatorialg (n-1)

Casamento padrão

fatorialp :: Int -> Int
fatorialp 0 = 1
fatorialp n = n * fatorialp (n-1)

4)

fib :: Int -> Int

fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

5)

n_tri :: Int -> Int
n_tri n = n*(n+1) `div` 2


6)

potencia_2 : Int->Int 

n = 2^n-1 * 2

8)

resto_Div (m,n) = m,se n =0 
resto_Div (m,n) = resto_Div(n, m-n)
	se n>0


9)

Recursiva 

mdc(m,n) = m, se n = 0
mdc(m,n) = mdc(n, m mod n), 
se n > 0

Guardas

mdcg :: (Int,Int) -> Int
mdcg (m,n) 
| n == 0 = m
| otherwise = mdcg (n, (mod m n))

Casamento de padrões

mdc :: (Int,Int) -> Int
mdc (m,0) = m
mdc (m,n) = mdc (n, (mod m n))

10)

Recursiva

binomial (n,0) = 1,
binomial (n,n) = 1,
binomial (n,k) = 
binomial (n-1,k) + binomial (n-1,k-1),
se 0 < k < n

Guardas

binog :: (Int,Int) -> Int
binog (n,k) 
| k == 0 = 1 
| k == n = 1 
| otherwise = binog (n-1,k) + binog (n-1,k-1)

Casamento de padrões

binomial :: (Int,Int) -> Int
binomial (n,0) = 1
binomial (n,k) = if (k == n) 
then 1 
else binomial (n-1,k) + binomial (n-1,k-1)

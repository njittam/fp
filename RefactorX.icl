implementation module RefactorX

import StdEnv

Start = map toString [E1,E2,E3,E4,E5]

E1 = (let x = 42 - 3 in x / 0) + (let y = 6 in y * y)
E2 = let x = 42 in x + (let x = 58 in x)
E3 = let x = 1 in let y = 2 in let x = 3 in 4
E4 = let x = 1 in x + y
E5 = (let x = 1 in x) * x

::	Expr							= NR   Int
									| VAR  Name
									| OP   Expr Operator Expr
									| LET  Name     Expr Expr
::	Name							:== String
::	Operator						= PLUS | MIN | MUL | DIV
::	Val								= Result Int | Undef

//  expressies afdrukken:
instance toString Expr where
	toString ...

//	vrije variabelen:
free								:: Expr -> [Name]

//	verwijder deelexpressies met ongebruikte let-variabelen:
remove_unused_lets					:: Expr -> Expr

//	evaluator met tabel van naam-waarde paren:
eval								:: Expr -> Val

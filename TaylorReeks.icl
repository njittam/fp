module TaylorReeks

import StdEnv

/*	1. Schrijf de functie plusminus die een lijst van waarden krijgt, [x0 ... xn], en die de 
       waarde x0 - x1 + x2 - x3 + ... oplevert.
*/
plusminus		:: // meest algemene type
plusminus ...

Start			= (1-2+3-4+5-6+7-8+9-10,plusminus [1..10])

/*	2. Implementeer de Taylor-reeks voor de sinus functie m.b.v. de plusminus functie.
*/
sinus x			= plusminus ...

Start			= (sin 0.25, sinus 0.25)

/*	3. Implementeer de Taylor-reeks voor de cosinus functie m.b.v. de plusminus functie.
*/
cosinus x		= plusminus ...

Start			= (cos 0.25, cosinus 0.25)

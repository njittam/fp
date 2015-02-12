implementation module TupleOverloading
//module TupleOverloading
import StdEnv

instance +    (a,b)   | + a & + b                where (+) (a) (b) = a + b
instance +    (a,b,c) | + (a,b) & + c          where (+) ((a), (b)) (c) = a + b + c


instance -    (a,b)   | - a & - b                where (-) (a) (b) = a - b
instance -    (a,b,c) | - a & - b & - c          where (-) ((a) ,(b)) (c) = (a - b) - c

instance *    (a,b)   | * a & * b                where (*) a b = a * b
instance *    (a,b,c) | * a & * b & * c          where (*) (a , b) c = (a * b) * c

instance /    (a,b)   | / a & / b                where (/) a b = a / b
instance /    (a,b,c) | / a & / b & / c          where (/) (a , b) c = a / b / c

instance zero (a,b)   | zero a & zero b          where (zero) = 0
instance zero (a,b,c) | zero a & zero b & zero c where (zero) = 0

instance one  (a,b)   | one a & one b            where (one) = 1
instance one  (a,b,c) | one a & one b & one c    where (one) = 1

instance ~    (a,b)   | ~ a & ~ b                where (~) a  = ~a
instance ~    (a,b,c) | ~ a & ~ b & ~ c          where (~) a = ~a

Start  = (test (1,2), test (1,2,3))

test a = ( zero + a == a    && a    == a + zero
         , a - zero == a    && a    == ~ (zero - a)
         ,  one * a == a    && a    == a * one
         , zero * a == zero && zero == a * zero
         ,  a / one == a
         ,  ~ (~ a) == a
         )
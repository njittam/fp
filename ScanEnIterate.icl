module ScanEnIterate

import StdEnv

Start = scan (+) 0 [1 .. 10] = ?

Start = scan (*) 1 [2 .. 10] = ?

Start = take 5 (iterate (flip (^) 2) 2) = ?

Start = take 10 (iterate (flip (/) 10) 123456) = ?

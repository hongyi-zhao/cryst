gap> START_TEST( "Cryst: subgrp.tst" );

gap> SetAssertionLevel(1);

gap> le := rec( latticeequal := true );
rec( latticeequal := true )

gap> ce := rec( classequal := true, primes := [2,3,5] );
rec( classequal := true, primes := [ 2, 3, 5 ] )

gap> so := rec( primes := [2,3,5] );
rec( primes := [ 2, 3, 5 ] )

gap> l1 := List( [1..17], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 2, i ), le ) ) );
[ 0, 1, 1, 1, 1, 3, 3, 3, 3, 1, 3, 3, 1, 2, 2, 2, 4 ]

gap> l2 := List( [1..17], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 2, i ), ce ) ) );
[ 13, 16, 10, 6, 6, 16, 8, 4, 8, 5, 6, 2, 5, 5, 3, 3, 3 ]

gap> l3 := List( [1..17], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 2, i ), so ) ) );
[ 13, 17, 11, 7, 7, 19, 11, 7, 11, 6, 9, 5, 6, 7, 5, 5, 7 ]

gap> l1 + l2 = l3;
true

gap> l1 := List( [1..230], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 3, i ), le ) ) );
[ 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 7, 7, 7, 7, 
  7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 
  1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 7, 7, 7, 
  7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 1, 1, 1, 2, 2, 2, 2, 
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 4, 
  4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 8, 8, 8, 2, 2, 2, 2, 2, 3, 
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, 5, 5, 5, 5, 
  5, 5, 5, 5, 5 ]

gap> l2 := List( [1..230], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 3, i ), ce ) ) );
[ 51, 58, 26, 18, 18, 26, 18, 18, 14, 40, 24, 24, 24, 16, 16, 34, 18, 10, 6, 
  10, 18, 18, 10, 10, 34, 18, 18, 18, 10, 10, 10, 10, 6, 10, 18, 10, 10, 18, 
  18, 10, 10, 18, 6, 10, 10, 10, 62, 14, 30, 14, 30, 6, 14, 14, 14, 6, 14, 6, 
  14, 6, 6, 6, 14, 14, 30, 14, 30, 14, 30, 6, 14, 14, 14, 14, 11, 7, 11, 7, 
  7, 7, 11, 7, 17, 9, 9, 9, 9, 5, 16, 8, 8, 4, 16, 8, 8, 4, 8, 8, 16, 8, 8, 
  8, 8, 4, 8, 4, 8, 8, 4, 4, 16, 8, 8, 4, 16, 8, 8, 8, 8, 8, 8, 4, 28, 12, 
  12, 4, 12, 4, 12, 4, 12, 12, 4, 12, 4, 4, 4, 4, 12, 12, 4, 4, 16, 7, 7, 7, 
  9, 6, 17, 9, 8, 6, 8, 6, 8, 9, 9, 7, 7, 6, 4, 11, 7, 9, 5, 8, 4, 9, 4, 4, 
  6, 6, 7, 9, 9, 5, 11, 4, 4, 8, 8, 7, 9, 5, 5, 5, 11, 7, 9, 5, 13, 5, 5, 5, 
  7, 6, 3, 2, 3, 8, 4, 6, 2, 4, 2, 4, 6, 6, 4, 4, 4, 2, 2, 4, 6, 4, 4, 4, 4, 
  2, 8, 2, 4, 6, 4, 4, 2, 2, 6, 2 ]

gap> l3 := List( [1..230], i -> Length( MaximalSubgroupClassReps(
>                     SpaceGroupIT( 3, i ), so ) ) );
[ 51, 59, 27, 19, 19, 27, 19, 19, 15, 43, 27, 27, 27, 19, 19, 37, 21, 13, 9, 
  13, 21, 21, 13, 13, 37, 21, 21, 21, 13, 13, 13, 13, 9, 13, 21, 13, 13, 21, 
  21, 13, 13, 21, 9, 13, 13, 13, 69, 21, 37, 21, 37, 13, 21, 21, 21, 13, 21, 
  13, 21, 13, 13, 13, 21, 21, 37, 21, 37, 21, 37, 13, 21, 21, 21, 21, 12, 8, 
  12, 8, 8, 8, 12, 8, 20, 12, 12, 12, 12, 8, 19, 11, 11, 7, 19, 11, 11, 7, 
  11, 11, 19, 11, 11, 11, 11, 7, 11, 7, 11, 11, 7, 7, 19, 11, 11, 7, 19, 11, 
  11, 11, 11, 11, 11, 7, 35, 19, 19, 11, 19, 11, 19, 11, 19, 19, 11, 19, 11, 
  11, 11, 11, 19, 19, 11, 11, 17, 8, 8, 8, 11, 8, 19, 11, 10, 8, 10, 8, 10, 
  11, 11, 9, 9, 8, 6, 15, 11, 13, 9, 12, 8, 11, 6, 6, 8, 8, 9, 11, 13, 9, 15, 
  8, 8, 12, 12, 11, 13, 9, 9, 9, 15, 11, 13, 9, 21, 13, 13, 13, 9, 8, 5, 4, 
  5, 11, 7, 9, 5, 7, 5, 7, 9, 9, 7, 7, 7, 5, 5, 7, 9, 7, 7, 7, 7, 5, 13, 7, 
  9, 11, 9, 9, 7, 7, 11, 7 ]

gap> l1 + l2 = l3;
true

gap> STOP_TEST( "subgrp.tst", 10000 );

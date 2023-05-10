water_jug(X,Y):-X>4,Y<3,write('4l water jug overflowed.'),nl.
water_jug(X,Y):-X<4,Y>3,write('3L water jug overflowed.'),nl.
water_jug(X,Y):-X>4,Y>3,write('Both water jug overflowed.'),nl.
water_jug(X,Y):-
(X=:=0,Y=:=0,nl,write('4L:0 & 3L:3(Action: Fill 3L jug.)'),YY is 3,water_jug(X,YY));
(X=:=0,Y=:=0,nl,write('4L:4 & 3L:0(Action: Fill 4L jug.)'),XX is 4,water_jug(XX,Y));
(X=:=2,Y=:=0,nl,write('4L:2 & 3L:0(Action: Goal State is Reached)'));
(X=:=4,Y=:=0,nl,write('4L:4 & 3L:0(Action: Pour water from 4L to 3L jug.)'),XX is X-3,YY is 3,water_jug(XX,YY));
(X=:=0,Y=:=3,nl,write('4L:0 & 3L:3(Action: Pour water from 3L to 4L jug.)'),XX is X-3,YY is 3,water_jug(XX,YY));
(X=:=1,Y=:=3,nl,write('4L:1 & 3L:3(Action: Empty 3L jug.)'),YY is 0,water_jug(X,YY));
(X=:=3,Y=:=0,nl,write('4L:3 & 3L:0(Action: Fill 3L jug.)'),YY is 3,water_jug(X,YY));
(X=:=3,Y=:=3,nl,write('4L:3 & 3L:3(Action: Pour water from 3L to 4L jug until 4L jug is Full.)'),XX is X+1,YY is Y-1,water_jug(XX,YY));
(X=:=1,Y=:=0,nl,write('4L:1 & 3L:0(Action: Pour water from 4L to 3L jug.)'),XX is Y,YY is X,water_jug(XX,YY));
(X=:=0,Y=:=1,nl,write('4L:0 & 3L:1(Action: Fill 4L jug.)'),XX is 4,water_jug(XX,Y));
(X=:=4,Y=:=1,nl,write('4L:4 & 3L:1(Action: Pour water from 4L to 3L jug until 3L jug is full.)'),XX is X-2,YY is Y+2,water_jug(XX,YY));
(X=:=2,Y=:=3,nl,write('4L:2 & 3L:3(Action: Empty 3L jug.)'),YY is 0,water_jug(X,YY));
(X=:=4,Y=:=2,nl,write('4L:4 & 3L:2(Action: Empty 4L jug.)'),XX is 0,water_jug(XX,Y));
(X=:=0,Y=:=2,nl,write('4L:0 & 3L:2(Action: Pour Water from 3L jug to 4L jug.)'),XX is Y,YY is X,water_jug(XX,YY)).
/*Input:water_jug(0,0).*/

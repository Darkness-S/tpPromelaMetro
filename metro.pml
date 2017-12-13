#define NS 9
#define NR 2
#define NT 8
mtype={Est, Ouest, Null};
mtype R1, R2;
chan R1toR2 = [1] of {mtype, short};
chan R2toR1 = [1] of {mtype, short};
chan ReqRi = [1] of {bit}; 

proctype Deplacement(mtype Dir; short p){
	mtype DirOth = Null;
	short pprime =0;
	do
		/*Changement Direction*/
		::(Dir == Ouest && p == 1) -> Dir = Est;
		::(Dir == Est && p == NS) ->  Dir = Ouest;
		/*Arrivée Station Suivante*/
		::(Dir == Ouest && p !=1) -> p = p-1;
		::(Dir == Est && p !=NS) -> p = p+1;
	od 
}

init {
	run Deplacement(Est, NS);
	run Deplacement(Ouest, 1);
}	


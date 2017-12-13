#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - metro.pml:24 - [(run Deplacement(Est,9))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(addproc(II, 1, 0, 3, 9)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - metro.pml:25 - [(run Deplacement(Ouest,1))] (0:0:0 - 0)
		IfNotBlocked
		reached[1][2] = 1;
		if (!(addproc(II, 1, 0, 2, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - metro.pml:26 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[1][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Deplacement */
	case 6: // STATE 1 - metro.pml:15 - [(((Dir==Ouest)&&(p==1)))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][1] = 1;
		if (!(((((P0 *)this)->Dir==2)&&(((P0 *)this)->p==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: Dir */  (trpt+1)->bup.oval = ((P0 *)this)->Dir;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->Dir = 0;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - metro.pml:15 - [Dir = Est] (0:0:1 - 0)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->Dir;
		((P0 *)this)->Dir = 3;
#ifdef VAR_RANGES
		logval("Deplacement:Dir", ((P0 *)this)->Dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - metro.pml:16 - [(((Dir==Est)&&(p==9)))] (0:0:1 - 0)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((((P0 *)this)->Dir==3)&&(((P0 *)this)->p==9))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: Dir */  (trpt+1)->bup.oval = ((P0 *)this)->Dir;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->Dir = 0;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - metro.pml:16 - [Dir = Ouest] (0:0:1 - 0)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->Dir;
		((P0 *)this)->Dir = 2;
#ifdef VAR_RANGES
		logval("Deplacement:Dir", ((P0 *)this)->Dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 5 - metro.pml:18 - [(((Dir==Ouest)&&(p!=1)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][5] = 1;
		if (!(((((P0 *)this)->Dir==2)&&(((P0 *)this)->p!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - metro.pml:18 - [p = (p-1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->p;
		((P0 *)this)->p = (((P0 *)this)->p-1);
#ifdef VAR_RANGES
		logval("Deplacement:p", ((P0 *)this)->p);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 7 - metro.pml:19 - [(((Dir==Est)&&(p!=9)))] (0:0:0 - 0)
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((((P0 *)this)->Dir==3)&&(((P0 *)this)->p!=9))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 8 - metro.pml:19 - [p = (p+1)] (0:0:1 - 0)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->p;
		((P0 *)this)->p = (((P0 *)this)->p+1);
#ifdef VAR_RANGES
		logval("Deplacement:p", ((P0 *)this)->p);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - metro.pml:21 - [-end-] (0:0:0 - 0)
		IfNotBlocked
		reached[0][12] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Deplacement */

	case 6: // STATE 1
		;
	/* 0 */	((P0 *)this)->Dir = trpt->bup.oval;
		;
		;
		goto R999;

	case 7: // STATE 2
		;
		((P0 *)this)->Dir = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 3
		;
	/* 0 */	((P0 *)this)->Dir = trpt->bup.oval;
		;
		;
		goto R999;

	case 9: // STATE 4
		;
		((P0 *)this)->Dir = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 6
		;
		((P0 *)this)->p = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: // STATE 8
		;
		((P0 *)this)->p = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 12
		;
		p_restor(II);
		;
		;
		goto R999;
	}


<DEFINE ASSEM? (SRC-FLG "OPTIONAL" (BIN-FLG .BIN-FLG) "AUX" X (T <TIME>)) 
	#DECL ((CODE:TOP) <LIST ANY>)
	<COND (<AND <ASSIGNED? CSOURCE> .CSOURCE>
	       <PRT <REST .CODE:TOP>>)>
	<PUTREST .CODE:TOP <SET X <CDUP <REST .CODE:TOP>>>>
	<EXP-MAC .CODE:TOP>
	<COND (.PEEP <PEEP .X !.X> <TERPRI>)>
	<COND (.BIN-FLG
	       <ASSEMBLE1!-CODING!-PACKAGE .X <1 .OBLIST> <> .SRC-FLG>)
	      (ELSE .X)>>
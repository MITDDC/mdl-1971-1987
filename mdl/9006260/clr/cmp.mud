
<DEFINE BLOF (STR "AUX" (CH <OPEN "READ" .STR>))
	#DECL ((STR) STRING)
        <COND (.CH
	       <SETG LOF <MAPF ,LIST
			       <FUNCTION ("AUX"IT)
				    <EVAL <SET IT <READ .CH 1.1>>>
				    <COND (<TYPE? .IT FLOAT><MAPSTOP>)>
				    <COND (<AND <TYPE? .IT FORM>
						<G=? <LENGTH .IT> 3>
						<==? <1 .IT> DEFINE>>
					   (<2 .IT> ,<2 .IT> ,<2 .IT>))
					  (ELSE <MAPRET>)>>>>
	       T)>>


<DEFINE FIXIT ()
	<MAPF <>
	      <FUNCTION (L)
		   <PUT .L 3 ,<1 .L>>>
	      ,LOF>
	T>

<DEFINE SETUP (NAM "OPT" (NMX "MSUBR") "AUX" ATM)
	<BLOF .NAM>
	<FLOAD <STRING <SPNAME .ATM> "." .NMX>>
	<FIXIT>
	<LENGTH <SETG LOF2 ,LOF>>>

<DEFINE RSBS ("OPT" (N <LENGTH ,LOF>))
	<MAPF <>
	      <FUNCTION (L)
		   <SETG <1 .L> <3 .L>>
		   <COND (<0? <SET N <- .N 1>>> <MAPLEAVE>)>>
	      ,LOF> T>

<DEFINE FCNS ("OPT" (N <LENGTH ,LOF>))
	<MAPF <>
	      <FUNCTION (L)
		   <SETG <1 .L> <2 .L>>
		   <COND (<0? <SET N <- .N 1>>> <MAPLEAVE>)>>
	      ,LOF> T>



   
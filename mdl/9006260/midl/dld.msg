  [1] *r   #136059: 02/04 12:52	David.Dill@CMU-10A => PDL@MIT-DMS
				Re: MIDL et al.


[Message #1 (136059)]

Forwarded to: AV@MIT-DMS, MARC@MIT-DMS, TAA@MIT-DMS, LIM@MIT-DMS, 
SSP@MIT-DMS, SWG@MIT-DMS, MD@MIT-DMS
Forwarded by: PDL@MIT-DMS 02/04/80 13:23:02
Date:  4 February 1980 1252-EST (Monday)
From: David.Dill at CMU-10A (L170DD60)
Subject: Re: MIDL et al.
To:   PDL at MIT-DMS (P. David Lebling)
Message-ID: <04Feb80 125247 DD60@CMU-10A>
In-Reply-To: <[MIT-DMS].136048>

For getting a compiler up and running quickly, I think M-CODE may be
the best approach. I also think, however, that the resulting code
will probably be real slow, and you probably want to plan on building
a better compiler later on. I think that the experience with other
"universal assembly languages" has been that it is very difficult to
generate good code from them, unless they correspond very closely
to the actual machine code, which tends to defeat the goal of portability.
So, if you build a compiler using it, and if you do things right, you
will probably be able to get a quick and dirty MUDDLE compiler up
quickly. On the other hand, it might be difficult to improve it very
much after you have it.

You might want to devote some thought to the process of converting from
a quick and dirty compiler to a better one.  I agree with the view that
if you want to interpret an abstract machine code you want a more
linear language than MIDL.  The only reason that it has the basic block
structure is to facilitate flow analysis and various code generation
algorithms that need to know about control flow.  If you are going to do
flow analysis anyway, use something MIDL-like for the phases until
after flow analysis, and then write a "code generator" that generates
M-CODE.  This would have the advantage that when you want a better code
generator, you can use the machine-independent phases of the compiler,
and also have a more suitable representation for a good code-generator
to use. This is generally the approach I would have recommended before
I left.

I suspect that if there is any controversy, it is because people are
not taking a balanced view of what a compiler has to do. I would guess
that most of the opinions in the meeting were voiced from the perspective
of code generation from some representation that has had all the other
analysis done on it. My perspective is that I find the earlier phases
more intellectually interesting, and the code generation as straightforward,
which is why I didn't talk about it too much.

The one approach that would kill MIDL would be to modify the current
compiler to generate M-CODE.  This might also be the best approach for
getting a compiler as quickly as possible.  If people had to work on a
specific machine, they would soon get disgusted with the quality of the
code, and hack it in various ways to produce better code (also, people
would probably cruft a new muddle interpreter, I suspect).  In the long
run, the result of this would be 1) a q&d M-CODE compiler, and 2) a
muddle environment for machine X. The loss with this (which may not be
persuasive) is when someone wants to move MUDDLE to yet another machine.
Now, the process of bootstrapping on that machine would require more
effort than if a (successful) MIDL compiler existed. From a technical
perspective, the decision depends on whether there will be a need to produce
MUDDLE compilers for a variety of machines, or just one (LCS node).

From an administrative perspective, more important than the MIDL/M-CODE
decsion is hacker enthusiasm. If you, MARC and TAA can be seduced into
working 18 hours a day on a MUDDLE compiler because you think M-CODE is
a neat hack, and that enthusiasm would be drained by having to worry about
completely new flow analysis algorithms and fancy machine-independent
frameworks for code generators, then the decision is clear: punt the
technical issues and get it done.

If the scenario of the previous paragraph is not likely, then at the
very least, the people currently working on MIDL are going to have to
have some concrete goals. When I visited over Christmas, SSP was still
worrying about considerations (like interprocedural flow analysis) that
I regard as completely pie-in-the-sky. Someone has to decide what they
want (what quality code, what subset of the language, how much of the
environment, and WHEN), and make the various design and implementation
decisions along the way to get it done. My personal opinion is that
at the very least, someone intimately familiar with MUDDLE (PDL?) is
going to have to spend a lot of time helping to make these decisions.
Maybe TAA should be hired to do this [less than serious proposal].

Summary: I think that the interpreter for abstract machine code is
a good idea, mostly because it will get the critical mass of interest
necessary to generate a complete MUDDLE environment. I think that
MIDL is NOT suitable for this abstract machine code. I think that
the best way to look at it is that the MUDDLE to MIDL compiler should
exist as proposed, and instead of having a MIDL to machine-code compiler,
you should have a MIDL to M-CODE compiler. Finally, someone should
devote some serious thought to setting concrete goals, and making sure
they are getting met.

(has anyone thought about hand-crufting a MUDDLE interpreter in M-CODE?)

PDL -- forward this to AV at your discretion.

				--DLD










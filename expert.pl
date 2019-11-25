begin :- write("Working on a project? Let me help you choose a programming language!"),nl,
    guess_lang, nl,
    play_again,
    new_query.

/* Begin guessing each language */
guess(c) :- c, !.
guess(csharp) :- csharp, !.
guess(cplusplus) :- cplusplus, !.
guess(cobol) :- cobol, !.
guess(d) :- d, !.
guess(dyalect) :- dyalect, !.
guess(ela) :- ela, !.
guess(fortran) :- fortran, !.
guess(go) :- go, !.
guess(gosu) :- gosu, !.
guess(groovy) :- groovy, !.
guess(haskell) :- haskell, !.
guess(java) :- java, !.
guess(javascript) :- javascript, !.
guess(kotlin) :- kotlin, !.
guess(ldpl) :- ldpl, !.
guess(logo) :- logo, !.
% guess(luck) :- luck, !.
guess(oberon2) :- oberon2, !.
guess(objeck) :- objeck, !.
guess(objectivec) :- objectivec, !.
guess(ocaml) :- ocaml, !.
guess(oz) :- oz, !.
guess(pari) :- pari, !.
guess(perl) :- perl, !.
guess(phix) :- phix, !.
guess(pop11) :- pop11, !.
guess(prolog) :- prolog, !.
guess(python) :- python, !.
guess(r) :- r, !.
guess(ruby) :- ruby, !.
guess(scala) :- scala, !.
guess(scheme) :- scheme, !.
guess(swift) :- swift, !.

guess_lang :-
    (
        repeat,
        guess(PL),
        write("I suggest you use "), write(PL), write("."),nl,
        check_answer
    ) ; (
        write("Sorry, I could not find a language."),nl,
        write("Perhaps my creator should have consulted me before building me!"), nl
    ).


/* Classification rules */
c :- 
	(is_true('Will imperative paradigm work?'), not(is_true('Will object-oriented paradigm work?')), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need weak typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Are you building a(n) System program?').
csharp :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	(is_true('Do you need strong type safety?');not(is_true('Do you need strong type safety?'))),
	is_true('Should be type declaration be exclusively implicit?'),
	(is_true('Is static type checking okay?');is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
cplusplus :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	(is_true('Do you need strong type safety?');not(is_true('Do you need strong type safety?'))),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) System  program?')).
cobol :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Are you building a(n) Financial program?').
d :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) System  program?')).
dyalect :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
ela :- 
	(not(is_true('Will imperative paradigm work?')), not(is_true('Will object-oriented paradigm work?')), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
fortran :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Are you building a(n) Mathematics program?').
go :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) System program?').
gosu :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
groovy :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
haskell :- 
	(not(is_true('Will imperative paradigm work?')), not(is_true('Will object-oriented paradigm work?')), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application program?').
java :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
javascript :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need weak typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Web Development program?').
kotlin :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
ldpl :- 
	(is_true('Will imperative paradigm work?'), not(is_true('Will object-oriented paradigm work?')), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Are you building a(n) Application program?').
logo :- 
	(not(is_true('Will imperative paradigm work?')), not(is_true('Will object-oriented paradigm work?')), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Education  program?').
oberon2 :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Education program?');is_true('Are you building a(n) System  program?')).
objeck :- 
	(not(is_true('Will imperative paradigm work?')), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Education  program?').
objectivec :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need weak typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively explicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
ocaml :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').
oz :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Will logic paradigm work?')), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) Education program?')).
pari :- 
	(is_true('Will imperative paradigm work?'), not(is_true('Will object-oriented paradigm work?')), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need weak typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Mathematics program?').
perl :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need weak typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Scripting  program?').
phix :- 
	(is_true('Will imperative paradigm work?'), not(is_true('Will object-oriented paradigm work?')), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) Scripting program?')).
pop11 :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) Education  program?')).
prolog :- 
	(not(is_true('Will imperative paradigm work?')), not(is_true('Will object-oriented paradigm work?')), not(is_true('Will functional paradigm work?')), is_true('Will logic paradigm work?')), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Linguistics program?').
python :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) Education program?');is_true('Are you building a(n) Scripting  program?')).
r :- 
	(is_true('Will imperative paradigm work?'), not(is_true('Will object-oriented paradigm work?')), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Mathematics program?');is_true('Are you building a(n) Education program?')).
ruby :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Application program?');is_true('Are you building a(n) Scripting  program?')).
scala :- 
	(not(is_true('Will imperative paradigm work?')), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	(is_true('Are you building a(n) Education program?');is_true('Are you building a(n) Scripting program?')).
scheme :- 
	(not(is_true('Will imperative paradigm work?')), not(is_true('Will object-oriented paradigm work?')), is_true('Will functional paradigm work?'), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be exclusively implicit?'),
	(not(is_true('Is static type checking okay?'));is_true('Is dynamic type checking okay?')), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Education  program?').
swift :- 
	(is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), not(is_true('Will functional paradigm work?')), not(is_true('Will logic paradigm work?'))), 
	is_true('Do you need strong typing?'),
	is_true('Do you need strong type safety?'),
	is_true('Should be type declaration be explicit and implicit?'),
	(is_true('Is static type checking okay?');not(is_true('Is dynamic type checking okay?'))), 
	is_true('Do you need built in garbage collection?'), 
	is_true('Are you building a(n) Application  program?').

/* Asking questions */
ask(Q) :-
    write(Q), nl,
    read(A), nl,
    (
        (A == yes ; A == y) ->
            assert(yes(Q));
            assert(no(Q)), fail
    ).

/* Checking for a trait */
:- dynamic yes/1,no/1.

is_true(T) :- 
    (
        yes(T) -> true;
        (
            no(T) -> fail;
            ask(T)
        )
    ).

/* Verifying the answer */
check_answer :-
    write("Does this language work for you? "), nl,
    read(yes) ->
        write("Excellent! Good luck on your project!"), nl;
        write("Uh oh! How about? "), guess(PL), write(PL), nl;
        write("Uh oh!"), nl, fail.

/* Start new query */
play_again :-
    write("Would you like to find another language? "), nl,
    read(yes) ->
        (new_query, begin) ;
        (write("Tchau!"), nl).

/* Clear assertations to prep for next query */
new_query :- retract(yes(_)),fail.
new_query :- retract(no(_)),fail.
new_query.

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
        guess(PL),
        write("I suggest you use "), write(PL), write("."),nl,
        check_answer
    ) ; (
        write("Sorry, I could not find a language."),nl,
        write("Perhaps my creator should have consulted me before building me!"), nl
    ).


/* Classification rules */
c :- is_true('Will imperative paradigm work?'), is_true('Do you need weak typing?'), is_true('Should it be type unsafe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Are you using it for System?').
csharp :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe (unsafe allowed)?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is static,dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
cplusplus :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe (unsafe allowed)?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static,dynamic  type checking okay?'), is_true('Are you using it for Application or System ?').
cobol :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Are you using it for Financial?').
d :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static,dynamic  type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or System ?').
dyalect :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
ela :- is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
fortran :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static,dynamic  type checking okay?'), is_true('Are you using it for Mathematics?').
go :- is_true('Will object-oriented paradigm work?'), is_true('Will imperative paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for System?').
gosu :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
groovy :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
haskell :- is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application?').
java :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
javascript :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need weak typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Web Development?').
kotlin :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static,dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
ldpl :- is_true('Will imperative paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Are you using it for Application?').
logo :- is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Education ?').
oberon2 :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Education or System ?').
objeck :- is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Education ?').
objectivec :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need weak typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively explicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
ocaml :- is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Will imperative paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').
oz :- is_true('Will logic paradigm work?'), is_true('Will functional paradigm work?'), is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or Education?').
pari :- is_true('Will imperative paradigm work?'), is_true('Do you need weak typing?'), is_true('Should it be type unsafe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Mathematics?').
perl :- is_true('Will imperative paradigm work?'), is_true('Will functional paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need weak typing?'), is_true('Should it be type unsafe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic,static  type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Scripting ?').
phix :- is_true('Will imperative paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is dynamic,static  type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or Scripting?').
pop11 :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or Education ?').
prolog :- is_true('Will logic paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Linguistics?').
python :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or Education or Scripting ?').
r :- is_true('Will functional paradigm work?'), is_true('Will imperative paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Mathematics or Education?').
ruby :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type unsafe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application or Scripting ?').
scala :- is_true('Will object-oriented paradigm work?'), is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Education or Scripting?').
scheme :- is_true('Will functional paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: exclusively implicit'), is_true('Is dynamic type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Education ?').
swift :- is_true('Will imperative paradigm work?'), is_true('Will object-oriented paradigm work?'), is_true('Do you need strong typing?'), is_true('Should it be type safe?'), is_true('Type declaration should be: explicit or implicit'), is_true('Is static type checking okay?'), is_true('Do you need built in garbage collection?'), is_true('Are you using it for Application ?').

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






% askUse :-
%     write("Is it used in: ")
%     web_design(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(web_design(Q))
%             assert(web_design)
%         ),
%     applications(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     system(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),

%     financial(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     education(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     mathematics(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     scripting(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     linguistics(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ).
% askParadigms :-
%     write("Does it use the programming paradigm:")
%     object_oriented(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     imperative(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     functional(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ),
%     logic(Q) :-
%         format("~w?\n", [Q]),
%         Answer = read(yes),
%         (
%             assert(applications(Q))
%             assert(applications)
%         ).
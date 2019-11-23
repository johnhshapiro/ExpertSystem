:- dynamic paradigms/0.
:- dynamic paradigms/1.
:- dynamic strength/0.
:- dynamic strength/1.
:- dynamic safety/0.
:- dynamic safety/1.
:- dynamic expression/0.
:- dynamic expression/1.
:- dynamic checking/0.
:- dynamic checking/1.
:- dynamic garbage/0.
:- dynamic garbage/1.
:- dynamic use/0.
:- dynamic use/1.

has_paradigms(Q) :-
    ( paradigms(Q) ->
        true;
        ( paradigms ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(paradigms(Q)),
              assert(paradigms)
          )
        )
    ).

type_strength(Q) :-
    ( strength(Q) ->
        true;
        ( strength ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(strength(Q)),
              assert(strength)
          )
        )
    ).

type_safety(Q) :-
    ( safety(Q) ->
        true;
        ( safety ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(safety(Q)),
              assert(safety)
          )
        )
    ).

type_expression(Q) :-
    ( expression(Q) ->
        true;
        ( expression ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(expression(Q)),
              assert(expression)
          )
        )
    ).

type_checking(Q) :-
    ( checking(Q) ->
        true;
        ( checking ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(checking(Q)),
              assert(checking)
          )
        )
    ).

garbage_collection(Q) :-
    ( garbage(Q) ->
        true;
        ( garbage ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(garbage(Q)),
              assert(garbage)
          )
        )
    ).

intended_uses(Q) :-
    ( use(Q) ->
        true;
        ( use ->
          false;
          format('~w?~n', [Q]),
          Answer = read(yes),
          (
            Answer ->
              assert(use(Q)),
              assert(use)
          )
        )
    ).

language(c )  :- has_paradigms('imperative'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Optional through external tools '), intended_uses('System').
language(csharp )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe (unsafe allowed) '), type_expression('Type expression: implicit '), type_checking('type checking: static, dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(cplusplus )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe (unsafe allowed) '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: Optional through external tools '), intended_uses('Application, System ').
language(cobol )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: No '), intended_uses('Financial').
language(d )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optional inferred '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, System ').
language(dyalect )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(ela )  :- has_paradigms('functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(fortran )  :- has_paradigms('imperative,procedural,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: No '), intended_uses('Mathematics').
language(go )  :- has_paradigms('Object-oriented,imperative'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('System').
language(gosu )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(groovy )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(haskell )  :- has_paradigms('functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application').
language(java )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(javascript )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('weak  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Web Development').
language(kotlin )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static, dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(ldpl )  :- has_paradigms('imperative'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: No '), intended_uses('Application').
language(logo )  :- has_paradigms('functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(luck )  :- has_paradigms('imperative,functional'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: explicit, partially inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('system').
language(oberon2 )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education, System ').
language(objeck )  :- has_paradigms('object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(objectivec )  :- has_paradigms('imperative,object-oriented'), type_strength('weak  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes'), intended_uses('Application ').
language(ocaml )  :- has_paradigms('object-oriented,functional,imperative'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(oz )  :- has_paradigms('logic,functional,imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education').
language(pari/gp )  :- has_paradigms('imperative'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Mathematics').
language(perl )  :- has_paradigms('imperative,functional,object-oriented'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic, static '), garbage_collection('garbage collection: yes'), intended_uses('Scripting ').
language(phix )  :- has_paradigms('imperative'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: dynamic, static '), garbage_collection('garbage collection: yes'), intended_uses('Application, Scripting').
language(pop11 )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education ').
language(prolog )  :- has_paradigms('logic'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Linguistics').
language(python )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education, Scripting ').
language(r )  :- has_paradigms('functional,imperative'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Mathematics, Education').
language(ruby )  :- has_paradigms('imperative,object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Scripting ').
language(scala )  :- has_paradigms('object-oriented,functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: partially implicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education, Scripting').
language(scheme )  :- has_paradigms('functional'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(swift )  :- has_paradigms('imperative,object-oriented'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: yes'), intended_uses('Application ').
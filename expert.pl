begin :- write("Working on a project? Let me help you choose a programming language!"),
    askUse,
    askParadigms,
    askTyping,
    askGarbageCollection,
    guess,
    retractall.a

askUse :-
    write("Is it used in: ")
    web_design(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(web_design(Q))
            assert(web_design)
        ),
    applications(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    system(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),

    financial(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    education(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    mathematics(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    scripting(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    linguistics(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ).
askParadigms :-
    write("Does it use the programming paradigm:")
    object_oriented(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    imperative(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    functional(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ),
    logic(Q) :-
        format("~w?\n", [Q]),
        Answer = read(yes),
        (
            assert(applications(Q))
            assert(applications)
        ).
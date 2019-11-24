language(c )  :- is_imperative('imperative?'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Optional through external tools '), intended_uses('System').
language(csharp )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe (unsafe allowed) '), type_expression('Type expression: implicit '), type_checking('type checking: static, dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(cplusplus )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe (unsafe allowed) '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: Optional through external tools '), intended_uses('Application, System ').
language(cobol )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: No '), intended_uses('Financial').
language(d )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optional inferred '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, System ').
language(dyalect )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(ela )  :- is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(fortran )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: static, dynamic '), garbage_collection('garbage collection: No '), intended_uses('Mathematics').
language(go )  :- is_object_oriented('object_oriented?'), is_imperative('imperative?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('System').
language(gosu )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(groovy )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(haskell )  :- is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application').
language(java )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(javascript )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('weak  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Web Development').
language(kotlin )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, optionally inferred '), type_checking('type checking: static, dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(ldpl )  :- is_imperative('imperative?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: No '), intended_uses('Application').
language(logo )  :- is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(luck )  :- is_imperative('imperative?'), is_functional('functional?'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: explicit, partially inferred '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('system').
language(oberon2 )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education, System ').
language(objeck )  :- is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(objectivec )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('weak  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes'), intended_uses('Application ').
language(ocaml )  :- is_object_oriented('object_oriented?'), is_functional('functional?'), is_imperative('imperative?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Application ').
language(oz )  :- is_logic('logic?'), is_functional('functional?'), is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education').
language(pari/gp )  :- is_imperative('imperative?'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Mathematics').
language(perl )  :- is_imperative('imperative?'), is_functional('functional?'), is_object_oriented('object_oriented?'), type_strength('weak  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic, static '), garbage_collection('garbage collection: yes'), intended_uses('Scripting ').
language(phix )  :- is_imperative('imperative?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: explicit, partially implicit '), type_checking('type checking: dynamic, static '), garbage_collection('garbage collection: yes'), intended_uses('Application, Scripting').
language(pop11 )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education ').
language(prolog )  :- is_logic('logic?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Linguistics').
language(python )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Education, Scripting ').
language(r )  :- is_functional('functional?'), is_imperative('imperative?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Mathematics, Education').
language(ruby )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: unsafe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic '), garbage_collection('garbage collection: Yes '), intended_uses('Application, Scripting ').
language(scala )  :- is_object_oriented('object_oriented?'), is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: partially implicit '), type_checking('type checking: static '), garbage_collection('garbage collection: Yes '), intended_uses('Education, Scripting').
language(scheme )  :- is_functional('functional?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: implicit '), type_checking('type checking: dynamic'), garbage_collection('garbage collection: Yes '), intended_uses('Education ').
language(swift )  :- is_imperative('imperative?'), is_object_oriented('object_oriented?'), type_strength('strong  typing'), type_safety('type safety: safe '), type_expression('Type expression: inferred, optional explicit annotations '), type_checking('type checking: static '), garbage_collection('garbage collection: yes'), intended_uses('Application ').
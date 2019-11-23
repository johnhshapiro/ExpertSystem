:- dynamic shape/0.
:- dynamic shape/1.
:- dynamic color/0.
:- dynamic color/1.

is_shape(Type) :-
  ( shape(Type) ->
      true;
      ( shape ->
        false;
        format('~w?~n', [Type]),
        Answer = read(yes),
        (
          Answer ->
            assert(shape(Type)),
            assert(shape)
        )
      )
  ).

is_color(Type) :-
  ( color(Type) ->
      true;
      ( color ->
        false;
        format('~w?~n', [Type]),
        Answer = read(yes),
        (
          Answer ->
            assert(color(Type)),
            assert(color)
        )
      )
  ).

object(green_triangle) :- is_shape('triangle'), is_color('green').
object(red_green_square) :- is_shape('square'), is_color('green'),is_color('red').
object(red_square) :- is_shape('square'), is_color('red').
object(something_else) :- true.
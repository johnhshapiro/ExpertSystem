implicit_typing(python).
explicit_typing(java).
optional_explicit_typing(haskell).
optional_explicit_typing(X):-implicit_typing(X);explicit_typing(X).
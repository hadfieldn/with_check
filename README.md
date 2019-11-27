# WithCheck

This is a simple project to demonstrate that the Elixir `with` statement functions differently depending on whether it
includes an `else` clause. 

It also demonstrates that [credo](credo) (v1.1.5, default configuration) does not complain when a 
`with` statement includes only one conditional, IF the statement does NOT include an `else` clause.

#### Without an `else` clause
- Unmatched values are returned as the result of the statement.
- If the statement includes only one conditional, credo does not complain.

#### With an `else` clause
- Unmatched values raise a `WithClauseError`
- If the statement includes only one conditional, credo [warns](credo_warning) that the statement is equivalent to a `case`  statement 
  and should be rewritten as such. 


[credo]: https://github.com/rrrene/credo
[credo_warning]: https://github.com/rrrene/credo/blob/master/lib/credo/check/refactor/with_clauses.ex#L32

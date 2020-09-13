-module(daptoy_fact).

-export([ fact/1 ]).

fact(1) ->
  1;
fact(N) ->
  M = 1,
  ok = dummy(),
  timer:sleep(500),
  N * fact(N - M).

dummy() ->
  dummy2().

dummy2() ->
  ok.

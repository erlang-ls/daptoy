-module(daptoy_fact).

-export([ fact/1, dummy/1 ]).

fact(1) ->
  1;
fact(N) ->
  M = 1,
  ok = dummy(M),
  timer:sleep(500),
  N * fact(N - M).

dummy(_A) ->
  dummy2().

dummy2() ->
  ok.

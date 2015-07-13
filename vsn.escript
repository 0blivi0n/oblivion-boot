#!/usr/bin/env escript
%% -*- erlang -*-
		
main([File]) ->
	{ok, Content} = file:script(File),
	{_, _App, Props} = Content,
	Vsn = proplists:get_value(vsn, Props),
	io:format("~s", [Vsn]);
main(_) ->
	io:format("ERROR: you must provide the path to the .src file~n").

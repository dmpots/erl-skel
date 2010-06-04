%%%-------------------------------------------------------------------
%%% @author David M Peixotto
%%% @doc This is a skeleton implementation of an application callback
%%%      module.
%%% @end 
%%%-------------------------------------------------------------------
-module(application_skel).
-behaviour(application).

%% API Exports
%%-export([
%%        ]).

%% Gen Server Exports
-export([  start/2
         , stop/1
        ]).

%%%==================================================================
%%% API
%%%==================================================================

%%%==================================================================
%%% Application Callbacks
%%%==================================================================
start(_Type, _StartArgs) ->
  case root_sup:start_link() of
    {ok, Pid} ->
      {ok, Pid};
    Error ->
      Error
  end.

stop(_State) ->
  ok.

%%%==================================================================
%%% Internal Functions
%%%==================================================================


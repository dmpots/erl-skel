%%%-------------------------------------------------------------------
%%% @author David M Peixotto
%%% @doc This is a skeleton implementation of a gen_event callback
%%%      module.
%%% @end 
%%%-------------------------------------------------------------------
-module(gen_event_skel).
-behaviour(gen_event).

%% API Exports
-export([
              start_link/0
%%          , my_fun/1
        ]).

%% Gen Event Exports
-export([  init/1
         , handle_event/2
         , handle_call/2
         , handle_info/2
         , terminate/2
         , code_change/3]).

-record(state, { }).
-define(NAME, ?MODULE).

%%%==================================================================
%%% API
%%%==================================================================
start_link() ->
  gen_event:start_link({local, ?NAME}).

%%%==================================================================
%%% Gen Event Callbacks
%%%==================================================================
init([]) ->
    {ok, #state{}}.

handle_event(_Event, State) ->
  {ok, State}.

handle_call(_Request, State) ->
    Reply = ok,
    {reply, Reply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%==================================================================
%%% Internal Functions
%%%==================================================================


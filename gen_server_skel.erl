%%%-------------------------------------------------------------------
%%% @author David M Peixotto
%%% @doc This is a skeleton implementation of a gen_server callback
%%%      module.
%%% @end 
%%%-------------------------------------------------------------------
-module(gen_server_skel).
-behaviour(gen_server).

%% API Exports
-export([
              start_link/0
%%          , my_fun/1
        ]).

%% Gen Server Exports
-export([  init/1
         , handle_call/3
         , handle_cast/2
         , handle_info/2
         , terminate/2
         , code_change/3]).

-record(state, { }).
-define(NAME, ?MODULE).

%%%==================================================================
%%% API
%%%==================================================================
start_link() ->
  gen_server:start_link({local, ?NAME}, ?MODULE, [], []).

%%%==================================================================
%%% Gen Server Callbacks
%%%==================================================================
init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    Reply = ok,
    {reply, Reply, State}.

handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%==================================================================
%%% Internal Functions
%%%==================================================================


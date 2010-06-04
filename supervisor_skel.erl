%%%-------------------------------------------------------------------
%%% @author David M Peixotto
%%% @doc This is a skeleton implementation of a superviosr callback
%%%      module.
%%% @end 
%%%-------------------------------------------------------------------
-module(supervisor_skel).
-behaviour(supervisor).

%% API Exports
-export([
              start_link/0
%%          , my_fun/1
        ]).

%% Gen Server Exports
-export([ init/1 ]).
-define(NAME, ?MODULE).

%%%==================================================================
%%% API
%%%==================================================================
start_link() ->
  supervisor:start_link({local, ?NAME}, ?MODULE, []).

%%%==================================================================
%%% Supervisor Callbacks
%%%==================================================================
init([]) ->
    Id       = my_module,
    MFA      = {my_module, start_link, []},
    Restart  = permanent,
    Shutdown = brutal_kill,
    Type     = worker,
    Modules  = [my_module],
    Child    = {Id, MFA, Restart, Shutdown, Type, Modules},

    RestartStrategy = one_for_one,
    MaxRestarts     = 0,
    RestartInterval = 1, % seconds

    {ok, {{RestartStrategy, MaxRestarts, RestartInterval}, [Child]}}.

%%%==================================================================
%%% Internal Functions
%%%==================================================================


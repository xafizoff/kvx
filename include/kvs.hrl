-ifndef(KVS_HRL).
-define(KVS_HRL, true).
-record(id_seq, { thing = [] :: term(),
                  id    =  0 :: integer() } ).
-record(writer, { id    = [] :: term(),
                  count =  0 :: integer(),
                  cache = [] :: [] | tuple(),
                  args  = [] :: term(),
                  first = [] :: [] | tuple() } ).
-record(reader, { id    = [] :: integer(),
                  pos   =  0 :: [] | integer(),
                  cache = [] :: [] | integer(),
                  args  = [] :: term(),
                  feed  = [] :: term(),
                  dir   =  0 :: 0 | 1 } ).
-record(iter,   { id    = [] :: [] | integer(),
                  next  = [] :: [] | integer(),
                  prev  = [] :: [] | integer() } ).
-record(emails, { id    = [] :: [] | integer(),
                  next  = [] :: [] | integer(),
                  prev  = [] :: [] | integer(),
                  email = [] :: [] | binary() }).
-record(kvs,    { mod   = store_mnesia :: store_mnesia | store_redis | store_fs,
                  cx    = [] :: term() }).
-endif.

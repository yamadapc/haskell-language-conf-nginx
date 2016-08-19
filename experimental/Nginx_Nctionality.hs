-- Generated at 2016-08-19 20:05:12.856044 UTC
{-# LANGUAGE OverloadedStrings #-}
module Nginx_Nctionality where

import           Prelude (($))
import qualified Prelude (map)

import           Data.Conf.Types
import           Data.Text       (Text)

import           Nginx_Common

-- | If accept_mutex is enabled, worker processes will accept new connections by turn. Otherwise, all worker processes will be notified about new connections, and if volume of new connections is low, some of the worker processes may just waste system resources. Prior to version 1.11.3, the default value was on.
accept_mutex :: [Text] -> ConfStatement
accept_mutex vs = ConfStatementExpression (Expression "accept_mutex" vs)

-- | Safe version of 'accept_mutex'
accept_mutex_s :: [Text] -> Accept_Mutex
accept_mutex_s vs = Accept_Mutex$ ConfStatementExpression (Expression "accept_mutex" vs)
newtype Accept_Mutex = Accept_Mutex ConfStatement
instance ToConfStatement Accept_Mutex where
    toConfStatement (Accept_Mutex c) = c
instance HasContextEvents
 Accept_Mutex where


-- | If  is enabled, specifies the maximum time during which a worker process will try to restart accepting new connections if another worker process is currently accepting new connections.
accept_mutex_delay :: [Text] -> ConfStatement
accept_mutex_delay vs = ConfStatementExpression (Expression "accept_mutex_delay" vs)

-- | Safe version of 'accept_mutex_delay'
accept_mutex_delay_s :: [Text] -> Accept_Mutex_Delay
accept_mutex_delay_s vs = Accept_Mutex_Delay$ ConfStatementExpression (Expression "accept_mutex_delay" vs)
newtype Accept_Mutex_Delay = Accept_Mutex_Delay ConfStatement
instance ToConfStatement Accept_Mutex_Delay where
    toConfStatement (Accept_Mutex_Delay c) = c
instance HasContextEvents
 Accept_Mutex_Delay where


-- | Determines whether nginx should become a daemon. Mainly used during development.
daemon :: [Text] -> ConfStatement
daemon vs = ConfStatementExpression (Expression "daemon" vs)

-- | Safe version of 'daemon'
daemon_s :: [Text] -> Daemon
daemon_s vs = Daemon$ ConfStatementExpression (Expression "daemon" vs)
newtype Daemon = Daemon ConfStatement
instance ToConfStatement Daemon where
    toConfStatement (Daemon c) = c
instance HasContextMain
 Daemon where


-- | Enables debugging log for selected client connections. Other connections will use logging level set by the directive. Debugged connections are specified by IPv4 or IPv6 (1.3.0, 1.2.1) address or network. A connection may also be specified using a hostname. For connections using UNIX-domain sockets (1.3.0, 1.2.1), debugging log is enabled by the “unix:” parameter. events { debug_connection 127.0.0.1; debug_connection localhost; debug_connection 192.0.2.0/24; debug_connection ::1; debug_connection 2001:0db8::/32; debug_connection unix:; ... } For this directive to work, nginx needs to be built with --with-debug, see “”.
debug_connection :: [Text] -> ConfStatement
debug_connection vs = ConfStatementExpression (Expression "debug_connection" vs)

-- | Safe version of 'debug_connection'
debug_connection_s :: [Text] -> Debug_Connection
debug_connection_s vs = Debug_Connection$ ConfStatementExpression (Expression "debug_connection" vs)
newtype Debug_Connection = Debug_Connection ConfStatement
instance ToConfStatement Debug_Connection where
    toConfStatement (Debug_Connection c) = c
instance HasContextEvents
 Debug_Connection where


-- | This directive is used for debugging.
debug_points :: [Text] -> ConfStatement
debug_points vs = ConfStatementExpression (Expression "debug_points" vs)

-- | Safe version of 'debug_points'
debug_points_s :: [Text] -> Debug_Points
debug_points_s vs = Debug_Points$ ConfStatementExpression (Expression "debug_points" vs)
newtype Debug_Points = Debug_Points ConfStatement
instance ToConfStatement Debug_Points where
    toConfStatement (Debug_Points c) = c
instance HasContextMain
 Debug_Points where


-- | Configures logging. Several logs can be specified on the same level (1.5.2).
error_log :: [Text] -> ConfStatement
error_log vs = ConfStatementExpression (Expression "error_log" vs)

-- | Safe version of 'error_log'
error_log_s :: [Text] -> Error_Log
error_log_s vs = Error_Log$ ConfStatementExpression (Expression "error_log" vs)
newtype Error_Log = Error_Log ConfStatement
instance ToConfStatement Error_Log where
    toConfStatement (Error_Log c) = c
instance HasContextMain
 Error_Log where
instance HasContextHttp
 Error_Log where
instance HasContextMail
 Error_Log where
instance HasContextStream
 Error_Log where
instance HasContextServer
 Error_Log where
instance HasContextLocation
 Error_Log where


-- | By default, nginx removes all environment variables inherited from its parent process except the TZ variable. This directive allows preserving some of the inherited variables, changing their values, or creating new environment variables. These variables are then: inherited during a live upgrade of an executable file; used by the ngx_http_perl_module module; used by worker processes. One should bear in mind that controlling system libraries in this way is not always possible as it is common for libraries to check variables only during initialization, well before they can be set using this directive. An exception from this is an above mentioned live upgrade of an executable file.
env :: [Text] -> ConfStatement
env vs = ConfStatementExpression (Expression "env" vs)

-- | Safe version of 'env'
env_s :: [Text] -> Env
env_s vs = Env$ ConfStatementExpression (Expression "env" vs)
newtype Env = Env ConfStatement
instance ToConfStatement Env where
    toConfStatement (Env c) = c
instance HasContextMain
 Env where

-- | Provides the configuration file context in which the directives that affect connection processing are specified.
events :: [Text] -> [ConfStatement] -> ConfStatement
events more ss = ConfStatementBlock (Block ("events":more) ss)
-- | Safe version of 'events'
events_s :: (HasContextEvents f, ToConfStatement f) => [Text] -> [f] -> ConfStatement
events_s more ss = ConfStatementBlock (Block ("events":more) (Prelude.map toConfStatement ss))

-- | Includes another file, or files matching the specified mask, into configuration. Included files should consist of syntactically correct directives and blocks.
include :: [Text] -> ConfStatement
include vs = ConfStatementExpression (Expression "include" vs)

-- | Safe version of 'include'
include_s :: [Text] -> Include
include_s vs = Include$ ConfStatementExpression (Expression "include" vs)
newtype Include = Include ConfStatement
instance ToConfStatement Include where
    toConfStatement (Include c) = c


-- | Loads a dynamic module.
load_module :: [Text] -> ConfStatement
load_module vs = ConfStatementExpression (Expression "load_module" vs)

-- | Safe version of 'load_module'
load_module_s :: [Text] -> Load_Module
load_module_s vs = Load_Module$ ConfStatementExpression (Expression "load_module" vs)
newtype Load_Module = Load_Module ConfStatement
instance ToConfStatement Load_Module where
    toConfStatement (Load_Module c) = c
instance HasContextMain
 Load_Module where


-- | nginx uses the locking mechanism to implement and serialize access to shared memory. On most systems the locks are implemented using atomic operations, and this directive is ignored. On other systems the “lock file” mechanism is used. This directive specifies a prefix for the names of lock files.
lock_file :: [Text] -> ConfStatement
lock_file vs = ConfStatementExpression (Expression "lock_file" vs)

-- | Safe version of 'lock_file'
lock_file_s :: [Text] -> Lock_File
lock_file_s vs = Lock_File$ ConfStatementExpression (Expression "lock_file" vs)
newtype Lock_File = Lock_File ConfStatement
instance ToConfStatement Lock_File where
    toConfStatement (Lock_File c) = c
instance HasContextMain
 Lock_File where


-- | Determines whether worker processes are started. This directive is intended for nginx developers.
master_process :: [Text] -> ConfStatement
master_process vs = ConfStatementExpression (Expression "master_process" vs)

-- | Safe version of 'master_process'
master_process_s :: [Text] -> Master_Process
master_process_s vs = Master_Process$ ConfStatementExpression (Expression "master_process" vs)
newtype Master_Process = Master_Process ConfStatement
instance ToConfStatement Master_Process where
    toConfStatement (Master_Process c) = c
instance HasContextMain
 Master_Process where


-- | If multi_accept is disabled, a worker process will accept one new connection at a time. Otherwise, a worker process will accept all new connections at a time. The directive is ignored if connection processing method is used, because it reports the number of new connections waiting to be accepted.
multi_accept :: [Text] -> ConfStatement
multi_accept vs = ConfStatementExpression (Expression "multi_accept" vs)

-- | Safe version of 'multi_accept'
multi_accept_s :: [Text] -> Multi_Accept
multi_accept_s vs = Multi_Accept$ ConfStatementExpression (Expression "multi_accept" vs)
newtype Multi_Accept = Multi_Accept ConfStatement
instance ToConfStatement Multi_Accept where
    toConfStatement (Multi_Accept c) = c
instance HasContextEvents
 Multi_Accept where


-- | Enables or disables the use of “just-in-time compilation” (PCRE JIT) for the regular expressions known by the time of configuration parsing.
pcre_jit :: [Text] -> ConfStatement
pcre_jit vs = ConfStatementExpression (Expression "pcre_jit" vs)

-- | Safe version of 'pcre_jit'
pcre_jit_s :: [Text] -> Pcre_Jit
pcre_jit_s vs = Pcre_Jit$ ConfStatementExpression (Expression "pcre_jit" vs)
newtype Pcre_Jit = Pcre_Jit ConfStatement
instance ToConfStatement Pcre_Jit where
    toConfStatement (Pcre_Jit c) = c
instance HasContextMain
 Pcre_Jit where


-- | Defines a file that will store the process ID of the main process.
pid :: [Text] -> ConfStatement
pid vs = ConfStatementExpression (Expression "pid" vs)

-- | Safe version of 'pid'
pid_s :: [Text] -> Pid
pid_s vs = Pid$ ConfStatementExpression (Expression "pid" vs)
newtype Pid = Pid ConfStatement
instance ToConfStatement Pid where
    toConfStatement (Pid c) = c
instance HasContextMain
 Pid where


-- | Defines the name of the hardware SSL accelerator.
ssl_engine :: [Text] -> ConfStatement
ssl_engine vs = ConfStatementExpression (Expression "ssl_engine" vs)

-- | Safe version of 'ssl_engine'
ssl_engine_s :: [Text] -> Ssl_Engine
ssl_engine_s vs = Ssl_Engine$ ConfStatementExpression (Expression "ssl_engine" vs)
newtype Ssl_Engine = Ssl_Engine ConfStatement
instance ToConfStatement Ssl_Engine where
    toConfStatement (Ssl_Engine c) = c
instance HasContextMain
 Ssl_Engine where


-- | Defines named thread pools used for multi-threaded reading and sending of files without blocking worker processes.
thread_pool :: [Text] -> ConfStatement
thread_pool vs = ConfStatementExpression (Expression "thread_pool" vs)

-- | Safe version of 'thread_pool'
thread_pool_s :: [Text] -> Thread_Pool
thread_pool_s vs = Thread_Pool$ ConfStatementExpression (Expression "thread_pool" vs)
newtype Thread_Pool = Thread_Pool ConfStatement
instance ToConfStatement Thread_Pool where
    toConfStatement (Thread_Pool c) = c
instance HasContextMain
 Thread_Pool where


-- | Reduces timer resolution in worker processes, thus reducing the number of gettimeofday system calls made. By default, gettimeofday is called each time a kernel event is received. With reduced resolution, gettimeofday is only called once per specified interval.
timer_resolution :: [Text] -> ConfStatement
timer_resolution vs = ConfStatementExpression (Expression "timer_resolution" vs)

-- | Safe version of 'timer_resolution'
timer_resolution_s :: [Text] -> Timer_Resolution
timer_resolution_s vs = Timer_Resolution$ ConfStatementExpression (Expression "timer_resolution" vs)
newtype Timer_Resolution = Timer_Resolution ConfStatement
instance ToConfStatement Timer_Resolution where
    toConfStatement (Timer_Resolution c) = c
instance HasContextMain
 Timer_Resolution where


-- | Specifies the connection processing method to use. There is normally no need to specify it explicitly, because nginx will by default use the most efficient method.
use :: [Text] -> ConfStatement
use vs = ConfStatementExpression (Expression "use" vs)

-- | Safe version of 'use'
use_s :: [Text] -> Use
use_s vs = Use$ ConfStatementExpression (Expression "use" vs)
newtype Use = Use ConfStatement
instance ToConfStatement Use where
    toConfStatement (Use c) = c
instance HasContextEvents
 Use where


-- | Defines user and group credentials used by worker processes. If group is omitted, a group whose name equals that of user is used.
user :: [Text] -> ConfStatement
user vs = ConfStatementExpression (Expression "user" vs)

-- | Safe version of 'user'
user_s :: [Text] -> User
user_s vs = User$ ConfStatementExpression (Expression "user" vs)
newtype User = User ConfStatement
instance ToConfStatement User where
    toConfStatement (User c) = c
instance HasContextMain
 User where


-- | When using with the connection processing method, sets the maximum number of outstanding asynchronous I/O operations for a single worker process.
worker_aio_requests :: [Text] -> ConfStatement
worker_aio_requests vs = ConfStatementExpression (Expression "worker_aio_requests" vs)

-- | Safe version of 'worker_aio_requests'
worker_aio_requests_s :: [Text] -> Worker_Aio_Requests
worker_aio_requests_s vs = Worker_Aio_Requests$ ConfStatementExpression (Expression "worker_aio_requests" vs)
newtype Worker_Aio_Requests = Worker_Aio_Requests ConfStatement
instance ToConfStatement Worker_Aio_Requests where
    toConfStatement (Worker_Aio_Requests c) = c
instance HasContextEvents
 Worker_Aio_Requests where


-- | Sets the maximum number of simultaneous connections that can be opened by a worker process.
worker_connections :: [Text] -> ConfStatement
worker_connections vs = ConfStatementExpression (Expression "worker_connections" vs)

-- | Safe version of 'worker_connections'
worker_connections_s :: [Text] -> Worker_Connections
worker_connections_s vs = Worker_Connections$ ConfStatementExpression (Expression "worker_connections" vs)
newtype Worker_Connections = Worker_Connections ConfStatement
instance ToConfStatement Worker_Connections where
    toConfStatement (Worker_Connections c) = c
instance HasContextEvents
 Worker_Connections where


-- | Binds worker processes to the sets of CPUs. Each CPU set is represented by a bitmask of allowed CPUs. There should be a separate set defined for each of the worker processes. By default, worker processes are not bound to any specific CPUs.
worker_cpu_affinity :: [Text] -> ConfStatement
worker_cpu_affinity vs = ConfStatementExpression (Expression "worker_cpu_affinity" vs)

-- | Safe version of 'worker_cpu_affinity'
worker_cpu_affinity_s :: [Text] -> Worker_Cpu_Affinity
worker_cpu_affinity_s vs = Worker_Cpu_Affinity$ ConfStatementExpression (Expression "worker_cpu_affinity" vs)
newtype Worker_Cpu_Affinity = Worker_Cpu_Affinity ConfStatement
instance ToConfStatement Worker_Cpu_Affinity where
    toConfStatement (Worker_Cpu_Affinity c) = c
instance HasContextMain
 Worker_Cpu_Affinity where


-- | Defines the scheduling priority for worker processes like it is done by the nice command: a negative number means higher priority. Allowed range normally varies from -20 to 20.
worker_priority :: [Text] -> ConfStatement
worker_priority vs = ConfStatementExpression (Expression "worker_priority" vs)

-- | Safe version of 'worker_priority'
worker_priority_s :: [Text] -> Worker_Priority
worker_priority_s vs = Worker_Priority$ ConfStatementExpression (Expression "worker_priority" vs)
newtype Worker_Priority = Worker_Priority ConfStatement
instance ToConfStatement Worker_Priority where
    toConfStatement (Worker_Priority c) = c
instance HasContextMain
 Worker_Priority where


-- | Defines the number of worker processes.
worker_processes :: [Text] -> ConfStatement
worker_processes vs = ConfStatementExpression (Expression "worker_processes" vs)

-- | Safe version of 'worker_processes'
worker_processes_s :: [Text] -> Worker_Processes
worker_processes_s vs = Worker_Processes$ ConfStatementExpression (Expression "worker_processes" vs)
newtype Worker_Processes = Worker_Processes ConfStatement
instance ToConfStatement Worker_Processes where
    toConfStatement (Worker_Processes c) = c
instance HasContextMain
 Worker_Processes where


-- | Changes the limit on the largest size of a core file (RLIMIT_CORE) for worker processes. Used to increase the limit without restarting the main process.
worker_rlimit_core :: [Text] -> ConfStatement
worker_rlimit_core vs = ConfStatementExpression (Expression "worker_rlimit_core" vs)

-- | Safe version of 'worker_rlimit_core'
worker_rlimit_core_s :: [Text] -> Worker_Rlimit_Core
worker_rlimit_core_s vs = Worker_Rlimit_Core$ ConfStatementExpression (Expression "worker_rlimit_core" vs)
newtype Worker_Rlimit_Core = Worker_Rlimit_Core ConfStatement
instance ToConfStatement Worker_Rlimit_Core where
    toConfStatement (Worker_Rlimit_Core c) = c
instance HasContextMain
 Worker_Rlimit_Core where


-- | Changes the limit on the maximum number of open files (RLIMIT_NOFILE) for worker processes. Used to increase the limit without restarting the main process.
worker_rlimit_nofile :: [Text] -> ConfStatement
worker_rlimit_nofile vs = ConfStatementExpression (Expression "worker_rlimit_nofile" vs)

-- | Safe version of 'worker_rlimit_nofile'
worker_rlimit_nofile_s :: [Text] -> Worker_Rlimit_Nofile
worker_rlimit_nofile_s vs = Worker_Rlimit_Nofile$ ConfStatementExpression (Expression "worker_rlimit_nofile" vs)
newtype Worker_Rlimit_Nofile = Worker_Rlimit_Nofile ConfStatement
instance ToConfStatement Worker_Rlimit_Nofile where
    toConfStatement (Worker_Rlimit_Nofile c) = c
instance HasContextMain
 Worker_Rlimit_Nofile where


-- | Defines the current working directory for a worker process. It is primarily used when writing a core-file, in which case a worker process should have write permission for the specified directory.
working_directory :: [Text] -> ConfStatement
working_directory vs = ConfStatementExpression (Expression "working_directory" vs)

-- | Safe version of 'working_directory'
working_directory_s :: [Text] -> Working_Directory
working_directory_s vs = Working_Directory$ ConfStatementExpression (Expression "working_directory" vs)
newtype Working_Directory = Working_Directory ConfStatement
instance ToConfStatement Working_Directory where
    toConfStatement (Working_Directory c) = c
instance HasContextMain
 Working_Directory where


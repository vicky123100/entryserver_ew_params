
# This is NCREEdata's parameter file

#  Basic Earthworm setup:
#
MyModuleId         MOD_NCREE   # module id for this instance of NCREEdata
RingName           RWAVE_RING  # shared memory ring for input/output
LogFile            1           # 0 to turn off disk log file; 1 to turn it on
                               # to log to module log but not stderr/stdout
HeartBeatInterval  15          # seconds between heartbeats

MaxMsgSize        1024         # maximum size (bytes) for input/output msgs
QueueSize         1000         # max# messages in internal circular msg buffer

LocalPort         15000        # local port of reciving socket

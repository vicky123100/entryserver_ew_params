#
#                     Configuration File for slink2ew
#
MyModuleId       MOD_SLINK2EW_BATS
RingName         RWAVE_RING      # Transport ring to write data to.

HeartBeatInterval     30         # Heartbeat interval, in seconds.
LogFile               1          # 1 -> Keep log, 0 -> no log file
                                 # 2 -> write to module log but not stderr/stdout
Verbosity      0		 # Set level of verbosity.

SLhost         140.109.82.114   # Host address of the SeedLink server
SLport         18000                         # Port number of the SeedLink server

#StateFile                        # If this flag is specified (uncommented) a 
                                 # file with a list of sequence numbers is
                                 # written, during a clean module shutdown,
                                 # to the parameter directory with the name
                                 # "slink<mod id>.state". During module startup 
                                 # these sequence numbers are used to resume
                                 # data streams from the last received data.
                                 # Using this functionality is highly
                                 # recommended.

#StateFileInt   100              # This controls the interval (in packets 
	                         # received) at which the state is saved in
                                 # the state file.  Default is 100 packets,
                                 # 0 to disable.

#NetworkTimeout 600              # Network timeout, after this many idle
                                 # seconds the connection will be reset.
                                 # Default is 600 seconds, 0 to disable.

#NetworkDelay   30               # Network re-connect delay in seconds.

#KeepAlive      0                # Send keepalive packets (when idle) at this
                                 # interval in seconds.  Default is 0 (disabled).

#ForceTraceBuf1 0                # On systems that support TRACEBUF2
                                 # messages this flag will force the module
                                 # to create TRACEBUF messages instead.
                                 # Most people will never need this.

# Selectors and Stream's.  If any Stream lines are specified the connection
# to the SeedLink server will be configured in multi-station mode using
# Selectors, if any, as defaults.  If no Stream lines are specified the
# connection will be configured in uni-station mode using Selectors, if any.

#Selectors      "BH?.D"          # SeedLink selectors.  These selectors are used
                                 # for a uni-station mode connection.  If one
                                 # or more 'Stream' entries are given these are
                                 # used as default selectors for multi-station
                                 # mode data streams.  See description of
                                 # SeedLink selectors below.  Multiple selectors
                                 # must be enclosed in quotes.

# List each data stream (a network and station code pair) that you
# wish to request from the server with a "Stream" command.  If one or
# more Stream commands are given the connection will be configured in
# multi-station mode (multiple station data streams over a single
# network connection).  If no Stream commands are specified the
# connection will be configured in uni-station mode, optionally using
# any specified "Selectors".  A Stream command should be followed by a
# stream key, a network code followed by a station code separated by
# an underscore (i.e. IU_KONO).  SeedLink selectors for a specific
# stream may optionally be specified after the stream key.  Multiple
# selectors must be enclosed in quotes.  Any selectors specified with
# the Selectors command above are used as defaults when no selectors
# are specified for a given stream.

#Stream  GE_DSB   "BH?.D HH?.D"
#Stream  II_KONO  00BH?.D
#Stream  JP_YOJ   BH?.D
#Stream  IU_TATO  ?0BH?.D

#Stream  TW_CHGB "HH?.D"
#Stream  TW_CHGB "HL?.D"
#Stream  TW_FUSB "HH?.D"
#Stream  TW_FUSB "HL?.D"
#Stream  TW_HGSD "HH?.D"
#Stream  TW_HGSD "HL?.D"
#Stream  TW_KMNB "HH?.D"
#Stream  TW_KMNB "HL?.D"
#Stream  TW_LATB "HH?.D"
#Stream  TW_LYUB "HH?.D"
#Stream  TW_LYUB "HL?.D"
#Stream  TW_MASB "HH?.D"
#Stream  TW_MASB "HL?.D"
#Stream  TW_MATB "HH?.D"
#Stream  TW_MATB "HL?.D"
#Stream  TW_NACB "HH?.D"
#Stream  TW_NACB "HL?.D"
#Stream  TW_NNSB "HH?.D"
#Stream  TW_NNSB "HL?.D"
#Stream  TW_PHUB "HH?.D"
#Stream  TW_PHUB "HL?.D"
#Stream  TW_RLNB "HH?.D"
#Stream  TW_RLNB "HL?.D"
#Stream  TW_SBCB "HH?.D"
#Stream  TW_SBCB "HL?.D"
#Stream  TW_SSLB "HH?.D"
#Stream  TW_SSLB "HL?.D"
#Stream  TW_SXI1 "HH?.D"
#Stream  TW_TDCB "HH?.D"
#Stream  TW_TDCB "HL?.D"
#Stream  TW_TPUB "HH?.D"
#Stream  TW_TPUB "HL?.D"
#Stream  TW_TWGB "HH?.D"
#Stream  TW_TWGB "HL?.D"
#Stream  TW_TWKB "HH?.D"
#Stream  TW_TWKB "HL?.D"
#Stream  TW_VWDT "HH?.D"
#Stream  TW_VWUC "HH?.D"
#Stream  TW_WARB "HH?.D"
#Stream  TW_WFSB "HH?.D"
#Stream  TW_WUSB "HH?.D"
#Stream  TW_WUSB "HL?.D"
#Stream  TW_YD07 "HH?.D"
#Stream  TW_YHNB "HH?.D"
#Stream  TW_YHNB "HL?.D"
#Stream  TW_YULB "HH?.D"
#Stream  TW_YULB "HL?.D"
#Stream  FJ_AXDP "HH?.D"
#Stream  FJ_DHTZ "HH?.D"
#Stream  FJ_DSXP "HH?.D"
#Stream  FJ_LYJJ "HH?.D"
#Stream  FJ_MHZQ "HH?.D"
#Stream  FJ_NPDK "HH?.D"
#Stream  FJ_PCNP "HH?.D"
#Stream  FJ_PNTK "HH?.D"
#Stream  FJ_PTMZ "HH?.D"
#Stream  FJ_SXFK "HH?.D"
#Stream  FJ_XPSS "HH?.D"
#Stream  FJ_YDFS "HH?.D"
#Stream  FJ_YXBM "HH?.D"
#Stream  FJ_ZPLA "HH?.D"
#Stream  FJ_ZPXH "HH?.D"

Stream  TW_* HL?.D
Stream  TW_* HH?.D
Stream  TW_* BL?.D
Stream  TW_* BH?.D
Stream  FJ_* HL?.D
Stream  FJ_* HH?.D


#(notes regarding "selectors" from a SeedLink configuration file)
#
#   The "selectors" parameter tells to request packets that match given
#   selectors. This helps to reduce network traffic. A packet is sent to
#   client if it matches any positive selector (without leading "!") and
#   doesn't match any negative selectors (with "!"). General format of
#   selectors is LLSSS.T, where LL is location, SSS is channel, and T is
#   type (one of DECOTL for data, event, calibration, blockette, timing,
#   and log records). "LL", ".T", and "LLSSS." can be omitted, meaning
#   "any". It is also possible to use "?" in place of L and S.
#
#   Some examples:
#   BH?            - BHZ, BHN, BHE (all record types)
#   00BH?          - BHZ, BHN, BHE with location code '00' (all record types)
#   BH?.D          - BHZ, BHN, BHE (data records)
#   BH? !E         - BHZ, BHN, BHE (excluding detection records)
#   BH? E          - BHZ, BHN, BHE plus detection records of all channels
#   !LCQ !LEP      - exclude LCQ and LEP channels
#   !L !T          - exclude log and timing records
#
#
# For slink2ew no record types except data records will be written to
# the ring.  In other words, requesting any records in addition to
# data records is a waste.

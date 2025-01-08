#
#       Startstop (Unix Version -- Linux) Configuration File
#
#    <nRing> is the number of transport rings to create.
#    <Ring> specifies the name of a ring followed by it's size
#    in kilobytes, eg        Ring    WAVE_RING 1024
#    The maximum size of a ring depends on your operating system,
#    amount of physical RAM and configured virtual (paging) memory
#    available. A good place to start is 1024 kilobytes.
#    Ring names are listed in file earthworm.d.
#
# refer to the wiki for how to change your specific system's shared memory
# size - if you encounter problems with large or too many rings, this is probably
# the issue.


 nRing               6
 Ring   WAVE_RING    16384 
 Ring   RWAVE_RING   16384
 Ring   PICK_RING     1024
 Ring   RPALERT_RING  8192
 Ring   EEW_RING      1024
 Ring   PEAK_RING     1024 

#
 MyModuleId    MOD_STARTSTOP  # Module Id for this program
 HeartbeatInt  50             # Heartbeat interval in seconds
 MyClassName   OTHER          # For this program
 MyPriority     0             # For this program
 LogFile        1             # 1=write a log file to disk, 0=don't
 KillDelay      30            # seconds to wait before killing modules on
                              #  shutdown
 HardKillDelay  5             # number of seconds to wait on hard shutdown
                              #  for a child to respond to KILL signal
                              #  If missing or 0, no KILL signal will be sent
# maxStatusLineLen   80     # Uncomment to specify length of lines in status
# statmgrDelay       2      # Uncomment to specify the number of seconds
					# to wait after starting statmgr
					# default is 1 second

#
#
# Process          "copystatus WAVE_RING HYPO_RING"
# Class/Priority    OTHER 5
# Class/Priority    OTHER 0
#
 Process          "palert2ew palert2ew.d"
 Class/Priority    OTHER 0
#
 Process          "palert2ew palert2ew_vvn.d"
 Class/Priority    OTHER 0
#
 Process          "slink2ew slink2ew.d"
 Class/Priority    OTHER 0
#  
 Process          "slink2ew slink2ew_BATS.d"
 Class/Priority    OTHER 0
#
 Process          "NCREEdata NCREEdata.d"
 Class/Priority    OTHER 0
#
#
#
 Process          "wftimefilter wftimefilter.d"
 Class/Priority    OTHER 0
#
#
#
 Process          "pick_eew_new pick_eew_new.d"
 Class/Priority    OTHER 0
#
 Process          "tcpd_new tcpd_new.d"
 Class/Priority    OTHER 0
#
#
#
# Process          "wave_serverV wave_serverV_Z1.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_Z2.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_Z3.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_N1.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_N2.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_N3.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_E1.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_E2.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_E3.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_BN.d"
# Class/Priority    OTHER 0
#
# Process          "wave_serverV wave_serverV_FJ.d"
# Class/Priority    OTHER 0
#
#
#
# Process          "wave_serverV wave_serverV_T.d"
# Class/Priority    OTHER 0
#
#
 Process          "export_scnl export_scnl.d"
 Class/Priority    OTHER 0
#
 Process          "ew2ringserver ew2ringserver.d"
 Class/Priority    OTHER 0
#

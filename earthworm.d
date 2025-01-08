#  1999/07/28
#  The working copy of earthworm.d should live in your EW_PARAMS directory.
#
#  An example copy of earthworm.d resides in the vX.XX/environment
#  directory of this Earthworm distribution.

#                       earthworm.d

#              Earthworm administrative setup:
#              Installation-specific info on
#                    shared memory rings
#                    module ids
#                    message types

#   Please read all comments before making changes to this file.
#   The character string <-> numerical value mapping for certain
#   module id's and message types are sacred to earthworm.d
#   and must not be changed!!!

#--------------------------------------------------------------------------
#                      Shared Memory Ring Keys
#
# Define unique keys for shared memory regions (transport rings).
# All string/value mappings for shared memory keys may be locally altered.
#
# The maximum length of ring string is 32 characters.
#--------------------------------------------------------------------------

 Ring   WAVE_RING        1000    # public waveform data
 Ring   RWAVE_RING       1001
 Ring   PICK_RING        1002
 Ring   RPALERT_RING     1003

 Ring   WAVE_RING2       1004
 Ring   PEAK_RING        1005

 Ring   EEW_RING         1006

# Do not put FLAG_RING in starstop*.d  This is a hidden ring used for termination flags.
 Ring   FLAG_RING        2000    # a private ring for Startstop 7.5 and later to use
                                 # for flags. If this doesn't exist, startstop will
                                 # create the ring automatically at key 9999
                                 # If you run multiple startstops, you'll need to change
                                 # all ring keys values here in earthworm.d, including
                                 # this one. Do NOT include this private ring in
                                 # the ring area in startstop*d

 Ring   NAMED_EVENT_RING 2001    # this is a ring used for the tsunami ATWC programs for
                                 # a named event API (see src/libsrc/util/ew_nevent_message.c)
			    	 # this does not need to be declared, but it is if you wish
				 # to have multiple earthworms running on the same host computer


#--------------------------------------------------------------------------
#                           Module IDs
#
#  Define all module name/module id pairs for this installation
#  Except for MOD_WILDCARD, all string/value mappings for module ids
#  may be locally altered. The character strings themselves may also
#  be changed to be more meaningful for your installation.
#
#  0-255 are the only valid module ids.
#
# The maximum length of the module string is 32 characters.
#
# This list is in alphabetical order but doesn't need to be. Go ahead and
# add new modules and module IDs at the end.
#--------------------------------------------------------------------------

 Module   MOD_WILDCARD          0   # Sacred wildcard value - DO NOT CHANGE!!!
 Module   MOD_STARTSTOP         1
 Module   MOD_STATUS            2
 Module   MOD_WFTIMEFILTER      3
 Module   MOD_PALERT2EW         4
 Module   MOD_SLINK2EW          5
 Module   MOD_NCREE             6
 Module   MOD_TCPD_NEW          7
 Module   MOD_PICK_EEW_NEW      8
 Module   MOD_EW2RINGSERVER     9
 Module   MOD_EXPORT_SCNL      10
 Module   MOD_WAVESERVERV_E1   11
 Module   MOD_WAVESERVERV_E2   12
 Module   MOD_WAVESERVERV_E3   13
 Module   MOD_WAVESERVERV_N1   14
 Module   MOD_WAVESERVERV_N2   15
 Module   MOD_WAVESERVERV_N3   16
 Module   MOD_WAVESERVERV_Z1   17
 Module   MOD_WAVESERVERV_Z2   18
 Module   MOD_WAVESERVERV_Z3   19
 Module   MOD_WAVESERVERV_BN   20
 Module   MOD_WAVESERVERV_FJ   21
 Module   MOD_WAVESERVERV_T    22
 Module   MOD_PALERT2EW_VVN    23
 Module   MOD_SLINK2EW_BATS    24

#--------------------------------------------------------------------------
#                          Message Types
#
#     !!!  DO NOT USE message types 0 thru 99 in earthworm.d !!!
#
#  Define all message name/message-type pairs for this installation.
#
#  VALID numbers are:
#
# 100-255 Message types 100-255 are defined in each installation's
#         earthworm.d file, under the control of each Earthworm
#         installation. These values should be used to label messages
#         which remain internal to an Earthworm system or installation.
#         The character strings themselves should not be changed because
#         the strings are often hard-coded into the modules.
#         However, the string/value mappings can be locally altered.
#         Any message types for locally-produced code may be defined here.
#
#
#  OFF-LIMITS numbers:
#
#   0- 99 Message types 0-99 are defined in the file earthworm_global.d.
#         These numbers are reserved by Earthworm Central to label types
#         of messages which may be exchanged between installations. These
#         string/value mappings must be global to all Earthworm systems
#         in order for exchanged messages to be properly interpreted.
#
# The maximum length of the type string is 32 characters.
#
#--------------------------------------------------------------------------

# Installation-specific message-type mappings (100-255):
 Message  TYPE_SPECTRA       100
 Message  TYPE_QUAKE2K       101
 Message  TYPE_LINK          102
 Message  TYPE_EVENT2K       103
 Message  TYPE_PAGE          104
 Message  TYPE_KILL          105
 Message  TYPE_DSTDRINK      106
 Message  TYPE_RESTART       107
 Message  TYPE_REQSTATUS     108
 Message  TYPE_STATUS        109
 Message  TYPE_EQDELETE      110
 Message  TYPE_EVENT_SCNL    111
 Message  TYPE_RECONFIG      112
 Message  TYPE_STOP          113  # stop a child. same as kill, except statmgr
                          # should not restart it
 Message  TYPE_PALERTRAW     114
 Message  TYPE_EEW_PVALUE    115
 Message  TYPE_EEW           116
 Message  Type_EEW_record    117

#   !!!  DO NOT USE message types 0 thru 99 in earthworm.d !!!

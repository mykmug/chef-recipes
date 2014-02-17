default['freeswitch']['source']['origin'] = "git" # or tar

default['freeswitch']['source']['tar_repo'] = "http://files.freeswitch.org"
default['freeswitch']['source']['tar_filename'] = "freeswitch-1.4.0.latest.tar.bz2"
default['freeswitch']['source']['tar_sha256'] = "e08731d5d30e3ddde5b1d7030636c4e0d6a121f318aecf9a88274d4b6cefd75e"

default['freeswitch']['source']['git_uri'] = "git://git.freeswitch.org/freeswitch.git"
default['freeswitch']['source']['git_branch'] = "v1.2.stable"
default['freeswitch']['source']['dependencies'] = case node['platform']
when 'ubuntu', 'debian'
  %w[
    autoconf
    automake
    g++
    git-core
    libjpeg62-dev
    libncurses5-dev
    libtool
    make
    python-dev
    gawk
    pkg-config
    gnutls-bin
    libsqlite3-dev
    bison
    libasound2-dev
  ]
when 'redhat', 'centos', 'fedora'
  %w[
    autoconf
    automake
    gcc-c++
    git-core
    libjpeg-devel
    libtool
    make
    ncurses-devel
  ]
end

default['freeswitch']['source']['modules'] = %w[
loggers/mod_console
loggers/mod_logfile
applications/mod_cluechoo
applications/mod_commands
applications/mod_conference
applications/mod_dptools
applications/mod_enum
applications/mod_db
applications/mod_fifo
applications/mod_hash
applications/mod_httapi
applications/mod_expr
applications/mod_esf
applications/mod_fsv
applications/mod_spandsp
applications/mod_valet_parking
applications/mod_voicemail
codecs/mod_g723_1
codecs/mod_amr
codecs/mod_g729
codecs/mod_h26x
codecs/mod_speex
dialplans/mod_dialplan_xml
dialplans/mod_dialplan_asterisk
endpoints/mod_sofia
endpoints/mod_loopback
event_handlers/mod_event_socket
event_handlers/mod_cdr_csv
formats/mod_native_file
formats/mod_sndfile
formats/mod_local_stream
formats/mod_tone_stream
languages/mod_lua
say/mod_say_en
]

#!/bin/sh
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

case "$(uname -s)" in

    Darwin)
        # echo 'Mac OS X'
        alias ls='ls -G'
        ;;

    Linux)
        alias ls='ls --color=auto'
        alias ll='ls -l'
        alias l='ls -la'
        if [[ -d /opt/CIC ]]; then
            alias cic-mount='
            sudo mount -t nfs CASGPU:VOL1/Shared/CIC /opt/CIC -o ro
            '
        else
            alias 'cic-mount'='
            sudo mkdir -p /opt/CIC
            sudo mount -t nfs CASGPU:VOL1/Shared/CIC /opt/CIC -o ro
            sudo mkdir -p /usr/cad/CBDK
            sudo ln -s /opt/CIC/Cell_Libraries/CBDK018_UMC_Faraday_v1.0 /usr/cad/CBDK
            sudo ln -s /opt/CIC/Cell_Libraries/CBDK_IC_Contest_v2.1 /usr/cad/CBDK
            sudo ln -s /opt/CIC/Cell_Libraries/CBDK_IC_Contest_v2.5 /usr/cad/CBDK
            '
        fi

        alias 'cic-start'='
        source /opt/CIC/exec/vcs.shrc
        source /opt/CIC/exec/Verdi.shrc
        source /opt/CIC/exec/Synthesis.shrc
        source /opt/CIC/exec/IES.shrc
        source /opt/CIC/exec/Jasper.shrc
        source /opt/CIC/exec/Innovus.shrc
        source /opt/CIC/exec/Primetime.shrc
        '

        alias 'cic-stop'='unset LD_LIBRARY_PATH'
        ;;

    CYGWIN* | MINGW32* | MSYS* | MINGW*)
        # echo 'MS Windows'
        ;;
    *)
        # echo 'Other OS'
        ;;
esac

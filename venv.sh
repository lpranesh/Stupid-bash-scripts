_OLD_VIRTUAL_PATH="$PATH"
_OLD_VIRTUAL_PS1="$PS1"

VIRTUAL_ENV="/path/to/project/venv"
export VIRTUAL_ENV

PATH="$VIRTUAL_ENV/bin:$PATH"
export PATH

if [ "x$PS1" != "x" ]; then
    PS1="(`basename \"$VIRTUAL_ENV\"`) $PS1"
    export PS1
fi

deactivate () {
    # Restore PATH
    if [ -n "$_OLD_VIRTUAL_PATH" ] ; then
        PATH="$_OLD_VIRTUAL_PATH"
        export PATH
        unset _OLD_VIRTUAL_PATH
    fi

    if [ -n "$_OLD_VIRTUAL_PS1" ] ; then
        PS1="$_OLD_VIRTUAL_PS1"
        export PS1
        unset _OLD_VIRTUAL_PS1
    fi

    unset VIRTUAL_ENV
    
}

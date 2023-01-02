
TOGGLE=/tmp/toggle_titlebar

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xprop \
	-f _MOTIF_WM_HINTS 32c \
	-set _MOTIF_WM_HINTS 2
else
    rm $TOGGLE
    xprop \
	-f _MOTIF_WM_HINTS 32c \
	-set _MOTIF_WM_HINTS 1
fi

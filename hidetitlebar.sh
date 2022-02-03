
TOGGLE=/tmp/toggle_titlebar

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xprop \
	-id $(xdotool getactivewindow) \
	-f _MOTIF_WM_HINTS 32c \
	-set _MOTIF_WM_HINTS "0x2, 0x0, 0x0, 0x0, 0x0"
else
    rm $TOGGLE
    xprop \
	-id $(xdotool getactivewindow) \
	-f _MOTIF_WM_HINTS 32c \
	-set _MOTIF_WM_HINTS "0x2, 0x0, 0x1, 0x0, 0x0"
fi


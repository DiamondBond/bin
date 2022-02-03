url="/usr/local/bin/acpi_call_GUI_systemd"
#pkexec insmod /usr/local/bin/acpi_call/acpi_call.ko #root
B=$(sed -n '1p' $url/codes/off)
pkexec sh -c "insmod /usr/local/bin/acpi_call/acpi_call.ko ; chmod 644 /proc/acpi/call ; echo '$B' > /proc/acpi/call" #root
cat /proc/acpi/call


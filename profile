if [ -z "$XDG_RUNTIME_DIR" ]; then
	XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"

	mkdir -pm 0700 "$XDG_RUNTIME_DIR"
	export XDG_RUNTIME_DIR
	. ~/.dbus/dbus.sh
fi

export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/cifr/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

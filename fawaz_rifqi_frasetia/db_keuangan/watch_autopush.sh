WATCH_PATH="/home/fras/keuangan_harian/keuangan_harian.sql"
SCRIPT_PATH="/home/fras/keuangan_harian/autopush.sh"

echo "👀 Memantau perubahan pada $WATCH_PATH ..."
while inotifywait -e modify "$WATCH_PATH"; do
    "$SCRIPT_PATH"
done

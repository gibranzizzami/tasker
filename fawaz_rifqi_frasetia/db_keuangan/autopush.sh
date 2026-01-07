#!/bin/bash

# === KONFIGURASI ===
DB_NAME="keuangan_harian"
DB_USER="root"
BACKUP_PATH="/home/fras/keuangan_harian"
SQL_FILE="$BACKUP_PATH/$DB_NAME.sql"
LOG_FILE="$BACKUP_PATH/autopush.log"

cd $BACKUP_PATH

# === 1. Backup database ===
/usr/bin/mariadb-dump -u $DB_USER -p"$MYSQL_PWD" $DB_NAME > "$SQL_FILE"

# === 2. Tambahkan ke Git ===
git add "$SQL_FILE"

# === 3. Cek perubahan ===
if ! git diff --cached --quiet; then
    COMMIT_MSG="Auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MSG"
    git push origin main >> "$LOG_FILE" 2>&1
    echo "$(date '+%Y-%m-%d %H:%M:%S') ✅ Backup & push berhasil" >> "$LOG_FILE"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') ℹ️ Tidak ada perubahan" >> "$LOG_FILE"
fi


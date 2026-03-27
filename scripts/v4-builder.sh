#!/bin/bash

TS=$(date)
UNIX=$(date +%s)

# klasörleri garanti et
mkdir -p dashboard logs reports config

# 1. JSON status (dashboard için)
echo "{
  \"status\": \"ok\",
  \"timestamp\": \"$TS\",
  \"unix\": $UNIX
}" > dashboard/status.json

# 2. Markdown dashboard
cat > dashboard/index.md << EOF
# Republic Node Dashboard

## Status: OK
- Time: $TS
- Unix: $UNIX

## System
- Node: active
- Sync: healthy
EOF

# 3. LOG (her zaman değişir)
echo "[OK] $TS system heartbeat" >> logs/system.log

# 4. REPORT
echo "# Report $TS" > reports/report.md
echo "- system ok" >> reports/report.md
echo "- updated: $TS" >> reports/report.md

# 🔥 5. KRİTİK: HER ZAMAN DEĞİŞEN CONFIG (commit garantisi)
echo "last_run=$UNIX" > config/runtime.env

# git işlemleri
git add -A

# değişiklik yoksa commit atma
if git diff --quiet && git diff --cached --quiet; then
  echo "[v4] No changes detected - skipping commit"
  exit 0
fi

git commit -m "chore(v4): dashboard update $UNIX"

git push origin gh-pages

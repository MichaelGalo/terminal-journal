#!/bin/bash

JOURNAL_DIR="$HOME/journal"

YEAR=$(date +"%Y")
MONTH=$(date +"%m")
DAY=$(date +"%d")
TIME=$(date +"%H:%M:%S")
DATE="$YEAR-$MONTH-$DAY"

ENTRY_DIR="$JOURNAL_DIR/$YEAR/$MONTH"

mkdir -p "$ENTRY_DIR"

ENTRY_FILE="$ENTRY_DIR/$DATE.md"

if [[ ! -f "$ENTRY_FILE" ]]; then
    echo "# Journal Entry - $DATE" > "$ENTRY_FILE"
    echo "" >> "$ENTRY_FILE"
fi

echo "[$(date '+%Y-%m-%d %H:%M:%S')] Enter your journal entry."
echo "Tip: Press CTRL+D when you're done writing. May require to press CTRL+D twice, if not ending on a new line."
echo "-------------------------------------------------------------"

{
    echo "## $TIME"
    cat
    echo ""
} >> "$ENTRY_FILE"

cd "$JOURNAL_DIR" || exit
git add "$ENTRY_FILE"
git commit -m "Journal entry for $DATE at $TIME"
git push
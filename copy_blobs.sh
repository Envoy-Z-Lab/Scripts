{
  echo "=== TARGET_BOARD_PLATFORM ==="
  grep -rn "TARGET_BOARD_PLATFORM" .

  echo "=== ifneq ==="
  grep -rn "ifneq" .

  echo "=== filter ==="
  grep -rn "filter" .

  echo "=== sdm660 ==="
  grep -rn "sdm660" .
} > filters.txt

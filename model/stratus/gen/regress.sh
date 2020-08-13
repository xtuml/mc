while read -r TEST; do
  echo $TEST
  if [[ -d $TEST ]]; then
    bash gen/run.sh -d $TEST
  fi
done;

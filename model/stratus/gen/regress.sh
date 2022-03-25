while read -r TEST; do
  echo $TEST
  if [[ -d $TEST ]]; then
    java -jar target/stratus-1.0.1-SNAPSHOT-jar-with-dependencies.jar -d $TEST
  fi
done;

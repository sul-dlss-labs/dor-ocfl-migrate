$JAVA_HOME/bin/java -jar migration-utils-6.2.0-SNAPSHOT-driver.jar \
  --source-type akubra \
  --datastreams-dir /home/lyberadmin/apps/fedora/home/data/datastreamStore \
  --objects-dir /home/lyberadmin/apps/fedora/home/data/objectStore \
  --target-dir ocfl \
  --id-prefix '' \
  --limit 50000 \
  --continue-on-error \
  --migration-type PLAIN_OCFL \
  --foxml-file \
  --debug \
  > convert.log

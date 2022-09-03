 #!/usr/bin/env bash

bin/plugin/sosistab/init.sh &&
  bin/plugin/sosistab/armeabi-v7a.sh &&
  bin/plugin/sosistab/arm64-v8a.sh &&
  bin/plugin/sosistab/x86.sh &&
  bin/plugin/sosistab/x86_64.sh &&
  bin/plugin/sosistab/end.sh

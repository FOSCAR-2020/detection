#!/bin/bash
# Download latest models from https://github.com/ultralytics/yolov5/releases
# Usage:
#    $ bash weights/download_weights.sh

python - <<EOF
from utils.google_utils import attempt_download


attempt_download('yolov5l.pt')

EOF
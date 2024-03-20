#!/bin/sh
# Copyright 2020 The Emscripten Authors.  All rights reserved.
# Emscripten is available under two separate licenses, the MIT license and the
# University of Illinois/NCSA Open Source License.  Both these licenses can be
# found in the LICENSE file.
#
# Entry point for running python scripts on UNIX systems.
#
# Automatically generated by `create_entry_points.py`; DO NOT EDIT.
#
# To make modifications to this file, edit `tools/run_python.sh` and then run
# `tools/create_entry_points.py`

if [ -z "$PYTHON" ]; then
  PYTHON=$EMSDK_PYTHON
fi

if [ -z "$PYTHON" ]; then
  PYTHON=$(command -v python3 2> /dev/null)
fi

if [ -z "$PYTHON" ]; then
  PYTHON=$(command -v python 2> /dev/null)
fi

if [ -z "$PYTHON" ]; then
  echo 'unable to find python in $PATH'
  exit 1
fi

exec "$PYTHON" "$0.py" "$@"

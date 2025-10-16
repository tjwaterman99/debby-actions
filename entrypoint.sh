#!/bin/bash

set -e

# Get additional arguments from input
ARGS="${INPUT_ARGS:-}"

# Execute debby run with any additional arguments
debby run $ARGS

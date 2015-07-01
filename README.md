# Bash Modules

This repository consists of few bash scripts (called _modules_ here) which can be easily reused when writing shell scripts.

## Usage

Module is loaded (_sourced_) into a script like this.

```bash
. modules/module_name.sh
```

### Available modules

- Lock
- Log
- Magic variables

### Example script

```bash
#!/usr/bin/env bash
#
# Example script
#
# Version 1.0.0

# load magic variables module
. modules/magic_variables.sh

# load log module
. modules/log.sh

# load lock module
. modules/lock.sh

lock || { log "Only one instance of script $__FILE can run at one time."; exit 1; }

# your script starts here

sleep 10
```

## License

Copyright (c) 2015 Samir Djellil

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE

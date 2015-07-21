# Bash Modules

This repository consists of few bash scripts (called _modules_ here) which can be easily reused when writing shell scripts.

## Usage

Module is loaded (sourced) into a script like this.

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

MIT © [Samir Djellil](http://samirdjellil.com)

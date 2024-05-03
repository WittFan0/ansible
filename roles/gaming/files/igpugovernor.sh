#! /bin/bash

# workaround identified in https://github.com/FeralInteractive/gamemode/issues/337

for NAME_PATH in $(find /sys/class/powercap/intel-rapl/intel-rapl\:0/intel-rapl\:0\:* -name name || true); do
    NAME=$(cat "${NAME_PATH}")
    if [[ "${NAME}" == "core" ]] || [[ "${NAME}" == "uncore" ]]; then
         DIR_NAME=$(dirname "${NAME_PATH}")
         chown root:gamemode "${DIR_NAME}/energy_uj"
         chmod g+r "${DIR_NAME}/energy_uj"
    fi
done

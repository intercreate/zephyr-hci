# Zephyr HCI

CI build repository for assorted Zephyr HCI firmware.

## Development Environment Setup (local)

1. Make sure this repo is cloned as a child of your workspace, e.g.:

   ```
   zephyr-hci-workspace/
   └── zephyr-hci
   ```
2. Setup west environment:
   ```
   pipx install west
   west init -l .
   west update
   python -m venv ../.venv
   source ../.venv/bin/activate
   pip install -r ../zephyr/scripts/requirements.txt
   west packages pip --install
   west sdk install -t arm-zephyr-eabi
   ```

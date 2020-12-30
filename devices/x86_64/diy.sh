#!/bin/bash

echo '
CONFIG_CRYPTO_CHACHA20_X86_64=y
CONFIG_CRYPTO_POLY1305_X86_64=y
' >> ./target/linux/x86/64/config-5.4

sed -i 's/10.0.0.1/192.168.1.1/g' package/base-files/files/bin/config_generate

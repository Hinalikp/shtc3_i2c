# Install script for directory: /home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/veggeterian/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/lms.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/build_info.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_config.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_types.h"
    "/home/veggeterian/esp4/esp-idf/components/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()


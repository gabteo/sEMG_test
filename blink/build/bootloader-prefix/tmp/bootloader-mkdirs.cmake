# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/gabte/esp/esp-idf/components/bootloader/subproject"
  "G:/code/sEMG_test/blink/build/bootloader"
  "G:/code/sEMG_test/blink/build/bootloader-prefix"
  "G:/code/sEMG_test/blink/build/bootloader-prefix/tmp"
  "G:/code/sEMG_test/blink/build/bootloader-prefix/src/bootloader-stamp"
  "G:/code/sEMG_test/blink/build/bootloader-prefix/src"
  "G:/code/sEMG_test/blink/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "G:/code/sEMG_test/blink/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "G:/code/sEMG_test/blink/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()

file(REMOVE_RECURSE
  "bootloader/bootloader.bin"
  "bootloader/bootloader.elf"
  "bootloader/bootloader.map"
  "config/sdkconfig.cmake"
  "config/sdkconfig.h"
  "mqtt_eclipse_org.pem.S"
  "mqtt_publish.bin"
  "mqtt_publish.map"
  "project_elf_src.c"
  "CMakeFiles/mqtt_publish.elf.dir/mqtt_eclipse_org.pem.S.obj"
  "CMakeFiles/mqtt_publish.elf.dir/project_elf_src.c.obj"
  "mqtt_eclipse_org.pem.S"
  "mqtt_publish.elf"
  "mqtt_publish.elf.pdb"
  "project_elf_src.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang ASM C)
  include(CMakeFiles/mqtt_publish.elf.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()

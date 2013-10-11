# Memory support

# RAM type

ifeq ($(CONFIG_SDRAM),y)
CPPFLAGS += -DCONFIG_SDRAM
endif

ifeq ($(CONFIG_SDDRC),y)
CPPFLAGS += -DCONFIG_SDDRC
endif

ifeq ($(CONFIG_DDR2),y)
CPPFLAGS += -DCONFIG_DDR2
endif

# Support for PSRAM on SAM9263EK EBI1

ifeq ($(CONFIG_PSRAM),y)
CPPFLAGS += -DCONFIG_PSRAM
endif

# 16 bit operation

ifeq ($(CONFIG_SDRAM_16BIT),y)
CPPFLAGS += -DCONFIG_SDRAM_16BIT
endif

# SDRAM/DDR/DDR2 size

ifeq ($(CONFIG_RAM_32MB),y)
CPPFLAGS += -DCONFIG_RAM_32MB
endif

ifeq ($(CONFIG_RAM_64MB),y)
CPPFLAGS += -DCONFIG_RAM_64MB
endif

ifeq ($(CONFIG_RAM_128MB),y)
CPPFLAGS += -DCONFIG_RAM_128MB
endif

ifeq ($(CONFIG_RAM_256MB),y)
CPPFLAGS += -DCONFIG_RAM_256MB
endif

ifeq ($(CONFIG_RAM_512MB),y)
CPPFLAGS += -DCONFIG_RAM_512MB
endif

# Boot flash type

ifeq ($(CONFIG_DATAFLASH),y)
CPPFLAGS += -DCONFIG_DATAFLASH
endif

ifeq ($(CONFIG_NANDFLASH),y)
CPPFLAGS += -DCONFIG_NANDFLASH
endif

ifeq ($(CONFIG_SDCARD),y)
CPPFLAGS += -DCONFIG_SDCARD
endif

ifeq ($(CONFIG_FLASH),y)
CPPFLAGS += -DCONFIG_FLASH
endif

ifeq ($(CONFIG_LOAD_LINUX),y)
CPPFLAGS += -DCONFIG_LOAD_LINUX
endif

ifeq ($(CONFIG_LOAD_ANDROID),y)
CPPFLAGS += -DCONFIG_LOAD_ANDROID
endif

ifeq ($(CONFIG_SDCARD_HS),y)
CPPFLAGS += -DCONFIG_SDCARD_HS
endif

ifeq ($(CONFIG_OF_LIBFDT),y)
CPPFLAGS += -DCONFIG_OF_LIBFDT
endif

# Dataflash support
ifeq ($(CONFIG_DATAFLASH_RECOVERY),y)
CPPFLAGS += -DCONFIG_DATAFLASH_RECOVERY
endif

ifeq ($(CONFIG_SMALL_DATAFLASH),y)
CPPFLAGS += -DCONFIG_SMALL_DATAFLASH
endif

ifeq ($(MEMORY),dataflash)
CPPFLAGS += -DAT91C_SPI_CLK=$(SPI_CLK)
CPPFLAGS += -DAT91C_SPI_PCS_DATAFLASH=$(SPI_BOOT) 
endif

ifeq ($(MEMORY),dataflashcard)
CPPFLAGS += -DAT91C_SPI_CLK=$(SPI_CLK)
CPPFLAGS += -DAT91C_SPI_PCS_DATAFLASH=$(SPI_BOOT) 
endif

# NAND flash support

ifeq ($(CONFIG_NANDFLASH_SMALL_BLOCKS),y)
CPPFLAGS += -DCONFIG_NANDFLASH_SMALL_BLOCKS
endif

ifeq ($(CONFIG_ENABLE_SW_ECC), y)
CPPFLAGS += -DCONFIG_ENABLE_SW_ECC
endif

ifeq ($(CONFIG_USE_PMECC), y)
CPPFLAGS += -DCONFIG_USE_PMECC
endif

ifeq ($(CONFIG_ON_DIE_ECC), y)
CPPFLAGS += -DCONFIG_ON_DIE_ECC
endif

ifeq ($(CONFIG_NANDFLASH_RECOVERY),y)
CPPFLAGS += -DCONFIG_NANDFLASH_RECOVERY
endif

ifeq ($(CONFIG_PMECC_CORRECT_BITS_2), y)
CPPFLAGS += -DPMECC_ERROR_CORR_BITS=2
endif

ifeq ($(CONFIG_PMECC_CORRECT_BITS_4), y)
CPPFLAGS += -DPMECC_ERROR_CORR_BITS=4
endif

ifeq ($(CONFIG_PMECC_CORRECT_BITS_8), y)
CPPFLAGS += -DPMECC_ERROR_CORR_BITS=8
endif

ifeq ($(CONFIG_PMECC_CORRECT_BITS_12), y)
CPPFLAGS += -DPMECC_ERROR_CORR_BITS=12
endif

ifeq ($(CONFIG_PMECC_CORRECT_BITS_24), y)
CPPFLAGS += -DPMECC_ERROR_CORR_BITS=24
endif

ifeq ($(CONFIG_PMECC_SECTOR_SIZE_512), y)
CPPFLAGS += -DPMECC_SECTOR_SIZE=512
endif

ifeq ($(CONFIG_PMECC_SECTOR_SIZE_1024), y)
CPPFLAGS += -DPMECC_SECTOR_SIZE=1024
endif

ifeq ($(CONFIG_ONFI_DETECT_SUPPORT), y)
CPPFLAGS += -DCONFIG_ONFI_DETECT_SUPPORT
endif

# Debug related stuff
ifeq ($(CONFIG_DEBUG_INFO),y)
CPPFLAGS += -DBOOTSTRAP_DEBUG_LEVEL=DEBUG_INFO
endif

ifeq ($(CONFIG_DEBUG_LOUD),y)
CPPFLAGS += -DBOOTSTRAP_DEBUG_LEVEL=DEBUG_LOUD
endif

ifeq ($(CONFIG_DEBUG_VERY_LOUD),y)
CPPFLAGS += -DBOOTSTRAP_DEBUG_LEVEL=DEBUG_VERY_LOUD
endif

ifeq ($(CONFIG_DISABLE_WATCHDOG),y)
CPPFLAGS += -DCONFIG_DISABLE_WATCHDOG
endif

ifeq ($(CONFIG_LONG_FILENAME), y)
CPPFLAGS += -DCONFIG_LONG_FILENAME
endif

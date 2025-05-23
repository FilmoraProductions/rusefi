# Combine the related files for a specific platform and MCU.

# Target ECU board design
BOARDCPPSRC = $(BOARD_DIR)/board_configuration.cpp
# Set this if you want a default engine type other than normal
ifeq ($(VAR_DEF_ENGINE_TYPE),)
  VAR_DEF_ENGINE_TYPE = -DDEFAULT_ENGINE_TYPE=engine_type_e::HELLEN_154_HYUNDAI_COUPE_BK2
endif










# Add them all together
DDEFS += $(VAR_DEF_ENGINE_TYPE)
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE -DSTM32_ADC_USE_ADC3=TRUE
DDEFS += -DSTATIC_BOARD_ID=STATIC_BOARD_ID_HELLEN_154_HYUNDAI

include $(BOARDS_DIR)/hellen/hellen-common144.mk
DDEFS += -DHW_HELLEN_HYUNDAI=1

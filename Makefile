vendor := $(srctree)/$(src)
include $(vendor)/oplus/dtb-selection.mk

ifneq ($(oplus-dtb-selected),)
ifneq "$(wildcard $(vendor)/qcom)" ""
	subdir-y += qcom/audio/oplus
	subdir-y += qcom/camera/oplus
	subdir-y += qcom/display/oplus
	subdir-y += qcom/eva
	subdir-y += qcom/mmrm
	subdir-y += qcom/video
endif
subdir-y += oplus
endif

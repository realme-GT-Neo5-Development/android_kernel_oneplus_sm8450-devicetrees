# SPDX-License-Identifier: GPL-2.0-only
# Family requests are Make inputs, including command-line CONFIG_*_DTB=y.
oplus-dtb-families := OVALTINE SENNA UDON FERRARI WLY
oplus-dtb-selected := $(strip $(foreach family,$(oplus-dtb-families),$(if $(filter y,$(CONFIG_$(family)_DTB)),$(family))))
oplus-dtb-opt-out := $(strip $(filter y,$(CONFIG_OPLUS_DEVICE_DTBS)) $(oplus-dtb-selected))

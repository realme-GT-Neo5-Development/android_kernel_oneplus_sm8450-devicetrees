# SPDX-License-Identifier: GPL-2.0-only
# Family requests are Make inputs, including command-line CONFIG_*_DTB=y.
oplus-dtb-families := OVALTINE SENNA UDON FERRARI WLY
oplus-dtb-selected := $(strip $(foreach family,$(oplus-dtb-families),$(if $(filter y,$(CONFIG_$(family)_DTB)),$(family))))
oplus-dtb-cape := $(filter OVALTINE SENNA UDON,$(oplus-dtb-selected))
oplus-dtb-waipio := $(filter FERRARI WLY,$(oplus-dtb-selected))
oplus-dtb-ukee := $(filter SENNA,$(oplus-dtb-selected))
# Retain the first occurrence when requests share a common SoC overlay.
oplus-dtb-uniq = $(if $(strip $1),$(firstword $1) $(call oplus-dtb-uniq,$(filter-out $(firstword $1),$1)))

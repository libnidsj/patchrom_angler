#
## Makefile for nexus 6P
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

PORT_PRODUCT = bullhead_global

# All vendor apks needed
local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller KeyChain Stk qcrilmsgtunnel \
	TimeService UserDictionaryProvider talkback Bluetooth BluetoothMidiService \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider TagGoogle \
	SharedStorageBackup DMService ConnMO DiagMon DCMO InputDevices CellBroadcastReceiver \
	BackupRestoreConfirmation

local-density := XXXHDPI

local-miui-modified-apps := InCallUI

local-miui-removed-apps := SogouInput FM MiuiSuperMarket Email GameCenter Updater BugReport Mipay

local-target-bit := 64

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
	@echo copy files
	cp -rf extras/system/* $(ZIP_DIR)/system/
	cp -rf extras/data/* $(ZIP_DIR)/data/miui/



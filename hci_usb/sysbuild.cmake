if(SB_CONFIG_NET_CORE_IMAGE_HCI_IPC)
	set(net_app hci_ipc)
	ExternalZephyrProject_Add(
		APPLICATION ${net_app}
		SOURCE_DIR  ${ZEPHYR_BASE}/samples/bluetooth/${net_app}
		BOARD       ${SB_CONFIG_NET_CORE_BOARD}
	)
	native_simulator_set_child_images(${DEFAULT_IMAGE} ${net_app})
endif()

native_simulator_set_final_executable(${DEFAULT_IMAGE})

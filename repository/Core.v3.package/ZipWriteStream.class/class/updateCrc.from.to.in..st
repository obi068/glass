crc
updateCrc: oldCrc from: start to: stop in: aCollection
	| newCrc |
	newCrc := oldCrc.
	start to: stop do:[:i|
		newCrc := (CrcTable at: ((newCrc bitXor: (aCollection byteAt: i)) 
				bitAnd: 255) + 1) bitXor: (newCrc bitShift: -8).
	].
	^newCrc
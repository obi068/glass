private
addOverridersOf: aSelector inClass: aClass to: aCollection
	aClass subclasses do: 
		[:ea | (ea includesSelector: aSelector)
					ifTrue: [aCollection add: ea]
					ifFalse: [self addOverridersOf: aSelector inClass: ea to: aCollection]]
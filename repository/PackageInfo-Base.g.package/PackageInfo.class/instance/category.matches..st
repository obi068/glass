testing
category: categoryName matches: prefix
	| prefixSize catSize |
	categoryName ifNil: [ ^false ].
	catSize _ categoryName size.
	prefixSize _ prefix size.
	catSize < prefixSize ifTrue: [ ^false ].
	(categoryName findString: prefix startingAt: 1 caseSensitive: false) = 1
		ifFalse: [ ^false ].
	^(categoryName at: prefix size + 1 ifAbsent: [ ^true ]) = $-
Class {
	#name : #Pair,
	#superclass : #Object,
	#instVars : [
		'from',
		'to'
	],
	#category : #'Examples-TDD'
}

{ #category : #comparing }
Pair >> = aPair [
	^ self from = aPair from and: (self to = aPair to)
]

{ #category : #accessing }
Pair >> from [
	^ from
]

{ #category : #comparing }
Pair >> hash [
	^ 0
]

{ #category : #initialization }
Pair >> setFrom: aCurrency to: anotherCurrency [
	from := aCurrency.
	to := anotherCurrency.
	^ self
]

{ #category : #accessing }
Pair >> to [
	^ to
]

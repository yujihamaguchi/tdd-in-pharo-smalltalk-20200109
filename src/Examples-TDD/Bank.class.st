Class {
	#name : #Bank,
	#superclass : #Object,
	#instVars : [
		'rates'
	],
	#category : #'Examples-TDD'
}

{ #category : #adding }
Bank >> addRate: aRate from: aCurrency to: anotherCurrency [
	rates ifNil: [ rates := Dictionary new ].
	rates at: (Pair new setFrom: aCurrency to: anotherCurrency) put: aRate
]

{ #category : #acccessing }
Bank >> rateFrom: aCurrency to: anotherCurrency [
	^ aCurrency = anotherCurrency
		ifTrue: [ 1 ]
		ifFalse: [ rates at: (Pair new setFrom: aCurrency to: anotherCurrency) ]
]

{ #category : #converting }
Bank >> reduce: anExpression to: aCurrency [
	^ anExpression reducedTo: aCurrency at: self
]

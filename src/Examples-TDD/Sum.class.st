Class {
	#name : #Sum,
	#superclass : #Object,
	#instVars : [
		'augend',
		'addend'
	],
	#category : #'Examples-TDD'
}

{ #category : #accessing }
Sum >> addend [ 
	^ addend
]

{ #category : #accessing }
Sum >> augend [ 
	^ augend 
]

{ #category : #converting }
Sum >> reducedTo: aCurrency at: aBank [
	| amount |
	amount := (augend reducedTo: aCurrency at: aBank) amount
		+ (addend reducedTo: aCurrency at: aBank) amount.
	^ Money new setAmount: amount currency: aCurrency
]

{ #category : #initialization }
Sum >> setAugend: aMoney addend: anotherMoney [
	augend := aMoney.
	addend := anotherMoney.
	^ self
]

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

{ #category : #'as yet unclassified' }
Sum >> reducedTo: aCurrency [
	| amount |
	amount := augend amount + addend amount.
	^ Money new setAmount: amount currency: aCurrency
]

{ #category : #initialization }
Sum >> setAugend: aMoney addend: anotherMoney [
	augend := aMoney.
	addend := anotherMoney.
	^ self
]

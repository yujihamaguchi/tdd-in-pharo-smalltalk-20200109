Class {
	#name : #Dollar,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Examples-TDD'
}

{ #category : #accessing }
Dollar >> amount [ 
	^ amount
]

{ #category : #initialization }
Dollar >> setAmount: anInteger [
	amount := anInteger.
	^ self
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	amount := amount * aMultiplier
]

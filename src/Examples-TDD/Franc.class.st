Class {
	#name : #Franc,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Examples-TDD'
}

{ #category : #comparing }
Franc >> = other [
	^ amount = other amount
]

{ #category : #accessing }
Franc >> amount [ 
	^ amount
]

{ #category : #initialization }
Franc >> setAmount: anInteger [
	amount := anInteger.
	^ self
]

{ #category : #arithmetic }
Franc >> times: aMultiplier [
	^ Franc new setAmount: amount * aMultiplier
]

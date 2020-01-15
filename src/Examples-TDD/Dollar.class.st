Class {
	#name : #Dollar,
	#superclass : #Money,
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
	^ Dollar new setAmount: amount * aMultiplier
]

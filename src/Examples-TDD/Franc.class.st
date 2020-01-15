Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #'Examples-TDD'
}

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

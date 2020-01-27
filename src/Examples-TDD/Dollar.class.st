Class {
	#name : #Dollar,
	#superclass : #Money,
	#category : #'Examples-TDD'
}

{ #category : #accessing }
Dollar >> amount [ 
	^ amount
]

{ #category : #arithmetic }
Dollar >> times: aMultiplier [
	^ Money dollar: amount * aMultiplier
]

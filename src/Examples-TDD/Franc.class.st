Class {
	#name : #Franc,
	#superclass : #Money,
	#category : #'Examples-TDD'
}

{ #category : #accessing }
Franc >> amount [ 
	^ amount
]

{ #category : #arithmetic }
Franc >> times: aMultiplier [
	^ Money franc: amount * aMultiplier
]

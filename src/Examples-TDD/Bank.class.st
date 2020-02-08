Class {
	#name : #Bank,
	#superclass : #Object,
	#category : #'Examples-TDD'
}

{ #category : #converting }
Bank >> reduce: anExpression to: aCurrency [
	^ Money dollar: 10
]

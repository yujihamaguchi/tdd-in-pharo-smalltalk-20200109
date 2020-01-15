Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Examples-TDD'
}

{ #category : #comparing }
Money >> = other [
	^ amount = other amount
]

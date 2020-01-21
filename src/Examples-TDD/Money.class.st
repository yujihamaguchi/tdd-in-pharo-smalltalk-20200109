Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount'
	],
	#category : #'Examples-TDD'
}

{ #category : #'instance creation' }
Money class >> dollar: anAmount [
	^ Dollar new setAmount: anAmount
]

{ #category : #'instance creation' }
Money class >> franc: anAmount [
	^ Franc new setAmount: anAmount
]

{ #category : #comparing }
Money >> = other [
	^ amount = other amount and: self class = other class
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ self subclassResponsibility 
]

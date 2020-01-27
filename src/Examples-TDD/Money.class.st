Class {
	#name : #Money,
	#superclass : #Object,
	#instVars : [
		'amount',
		'currency'
	],
	#category : #'Examples-TDD'
}

{ #category : #'instance creation' }
Money class >> dollar: anAmount [
	^ Dollar new setAmount: anAmount currency: 'USD'
]

{ #category : #'instance creation' }
Money class >> franc: anAmount [
	^ Franc new setAmount: anAmount currency: 'CHF'
]

{ #category : #comparing }
Money >> = other [
	^ amount = other amount and: self class = other class
]

{ #category : #accessing }
Money >> currency [
	^ currency.
]

{ #category : #initialization }
Money >> setAmount: anInteger currency: aString [
	amount := anInteger.
	currency := aString.
	^ self
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ self subclassResponsibility 
]

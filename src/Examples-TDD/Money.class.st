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
	^ Money new setAmount: anAmount currency: 'USD'
]

{ #category : #'instance creation' }
Money class >> franc: anAmount [
	^ Money new setAmount: anAmount currency: 'CHF'
]

{ #category : #comparing }
Money >> = other [
	^ amount = other amount and: currency = other currency 
]

{ #category : #accessing }
Money >> amount [ 
	^ amount
]

{ #category : #accessing }
Money >> currency [
	^ currency.
]

{ #category : #arithmetic }
Money >> plus: anAddend [
	^ Sum new setAugend: self addend: anAddend
]

{ #category : #printing }
Money >> printString [
	^ amount asString , ' ' , currency
]

{ #category : #converting }
Money >> reducedTo: toCurrency at: aBank [
	| rate |
	rate := aBank rateFrom: self currency to: toCurrency.
	^ Money new setAmount: self amount / rate currency: toCurrency
]

{ #category : #initialization }
Money >> setAmount: anInteger currency: aString [
	amount := anInteger.
	currency := aString.
	^ self
]

{ #category : #arithmetic }
Money >> times: aMultiplier [
	^ Money new setAmount: amount * aMultiplier currency: currency
]

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
	^ Money new setAmount: (amount + anAddend amount)  currency: currency 
]

{ #category : #printing }
Money >> printString [
	^ amount asString , ' ' , currency
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

Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Examples-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testEquality [
	self
		assert: (Dollar new setAmount: 5) = (Dollar new setAmount: 5)
		equals: true.
	self
		assert: (Dollar new setAmount: 5) = (Dollar new setAmount: 6)
		equals: false
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five product |
	five := Dollar new setAmount: 5.
	product := five times: 2.
	self assert: product amount equals: 10.
	product := five times: 3.
	self assert: product amount equals: 15
]

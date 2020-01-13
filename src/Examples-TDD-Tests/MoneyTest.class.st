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
	| five |
	five := Dollar new setAmount: 5.
	self assert: (five times: 2) equals: (Dollar new setAmount: 10).
	self assert: (five times: 3) equals: (Dollar new setAmount: 15)
]

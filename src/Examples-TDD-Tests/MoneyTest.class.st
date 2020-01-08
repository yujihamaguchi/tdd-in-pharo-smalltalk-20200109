Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Examples-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Dollar new setAmount: 5.
	five times: 2.
	self assert: five amount equals: 10
]

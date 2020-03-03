Class {
	#name : #MoneyTest,
	#superclass : #TestCase,
	#category : #'Examples-TDD-Tests'
}

{ #category : #tests }
MoneyTest >> testCurrency [
	self assert: ((Money dollar: 1) currency) equals: 'USD'.
	self assert: ((Money franc: 1) currency) equals: 'CHF'
]

{ #category : #tests }
MoneyTest >> testEquality [
	self assert: (Money dollar: 5) = (Money dollar: 5) equals: true.
	self deny: (Money dollar: 5) = (Money dollar: 6) equals: true.
	self deny: (Money franc: 5) = (Money dollar: 5) equals: true
]

{ #category : #tests }
MoneyTest >> testIdentityRate [
	self assert: (Bank new rateFrom: 'USD' to: 'USD') equals: 1
]

{ #category : #tests }
MoneyTest >> testMixedAddtion [
	| reduced sum bank |
	sum := (Money dollar: 5) plus: (Money franc: 10).
	bank := Bank new.
	bank addRate: 2 from: 'CHF' to: 'USD'.
	reduced := bank reduce: sum to: 'USD'.
	self assert: reduced equals: (Money dollar: 10)
]

{ #category : #tests }
MoneyTest >> testMultiplication [
	| five |
	five := Money dollar: 5.
	self assert: (five times: 2) equals: (Money dollar: 10).
	self assert: (five times: 3) equals: (Money dollar: 15)
]

{ #category : #tests }
MoneyTest >> testPlusReturnsSum [
	| sum |
	sum := (Money dollar: 4) plus: (Money dollar: 6).
	self assert: sum augend equals: (Money dollar: 4).
	self assert: sum addend equals: (Money dollar: 6)
]

{ #category : #tests }
MoneyTest >> testReduceMoney [
	| bank reduced |
	bank := Bank new.
	reduced := bank reduce: (Money dollar: 1) to: 'USD'.
	self assert: reduced equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testReduceSum [
	| sum bank reduced |
	sum := (Money dollar: 3) plus: (Money dollar: 4).
	bank := Bank new.
	reduced := bank reduce: sum to: 'USD'.
	self assert: reduced equals: (Money dollar: 7)
]

{ #category : #tests }
MoneyTest >> testResuceMoneyDifferentCurrency [
	| bank reduced |
	bank := Bank new.
	bank addRate: 2 from: 'CHF' to: 'USD'.
	reduced := bank reduce: (Money franc: 2) to: 'USD'.
	self assert: reduced equals: (Money dollar: 1)
]

{ #category : #tests }
MoneyTest >> testSimpleAddtion [
	| five sum bank reduced |
	five := Money dollar: 5.
	sum := five plus: five.
	bank := Bank new.
	reduced := bank reduce: sum to: 'USD'.
	self assert: reduced equals: (Money dollar: 10)
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `condition` | `FASTSCSSElseIfClause` | `elseIfClauseConditionOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSElseIfClause',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#condition => FMMany type: #FASTSCSSEntity opposite: #elseIfClauseConditionOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSElseIfClause class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ElseIfClause super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSElseIfClause >> addCondition: anObject [

	<ignoreForCoverage>
	<generated>
	^ self condition add: anObject
]

{ #category : 'accessing' }
FASTSCSSElseIfClause >> condition [
	"Relation named: #condition type: #FASTSCSSEntity opposite: #elseIfClauseConditionOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ condition
]

{ #category : 'accessing' }
FASTSCSSElseIfClause >> condition: anObject [

	<ignoreForCoverage>
	<generated>
	condition value: anObject
]

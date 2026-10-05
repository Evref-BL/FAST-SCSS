"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `condition` | `FASTSCSSIfStatement` | `ifStatementConditionOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSIfStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#condition => FMMany type: #FASTSCSSEntity opposite: #ifStatementConditionOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSIfStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #IfStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSIfStatement >> addCondition: anObject [

	<ignoreForCoverage>
	<generated>
	^ self condition add: anObject
]

{ #category : 'accessing' }
FASTSCSSIfStatement >> condition [
	"Relation named: #condition type: #FASTSCSSEntity opposite: #ifStatementConditionOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ condition
]

{ #category : 'accessing' }
FASTSCSSIfStatement >> condition: anObject [

	<ignoreForCoverage>
	<generated>
	condition value: anObject
]

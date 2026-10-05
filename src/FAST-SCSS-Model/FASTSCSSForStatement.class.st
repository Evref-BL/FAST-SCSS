"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `from` | `FASTSCSSForStatement` | `forStatementFromOwner` | `FASTSCSSEntity` | |
| `through` | `FASTSCSSForStatement` | `forStatementThroughOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSForStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#from => FMMany type: #FASTSCSSEntity opposite: #forStatementFromOwner',
		'#through => FMMany type: #FASTSCSSEntity opposite: #forStatementThroughOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSForStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ForStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSForStatement >> addFrom: anObject [

	<ignoreForCoverage>
	<generated>
	^ self from add: anObject
]

{ #category : 'adding' }
FASTSCSSForStatement >> addThrough: anObject [

	<ignoreForCoverage>
	<generated>
	^ self through add: anObject
]

{ #category : 'accessing' }
FASTSCSSForStatement >> from [
	"Relation named: #from type: #FASTSCSSEntity opposite: #forStatementFromOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ from
]

{ #category : 'accessing' }
FASTSCSSForStatement >> from: anObject [

	<ignoreForCoverage>
	<generated>
	from value: anObject
]

{ #category : 'accessing' }
FASTSCSSForStatement >> through [
	"Relation named: #through type: #FASTSCSSEntity opposite: #forStatementThroughOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ through
]

{ #category : 'accessing' }
FASTSCSSForStatement >> through: anObject [

	<ignoreForCoverage>
	<generated>
	through value: anObject
]

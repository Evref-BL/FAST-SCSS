"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSParenthesizedValue` | `parenthesizedValueOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSParenthesizedValue',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #parenthesizedValueOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSParenthesizedValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ParenthesizedValue super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSParenthesizedValue >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSParenthesizedValue >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #parenthesizedValueOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSParenthesizedValue >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

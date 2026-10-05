"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSParenthesizedQuery` | `parenthesizedQueryOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSParenthesizedQuery',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #parenthesizedQueryOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSParenthesizedQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ParenthesizedQuery super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSParenthesizedQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #parenthesizedQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSParenthesizedQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

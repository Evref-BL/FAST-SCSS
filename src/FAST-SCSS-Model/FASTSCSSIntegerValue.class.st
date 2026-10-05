"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSIntegerValue` | `integerValueOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSIntegerValue',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #integerValueOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSIntegerValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #IntegerValue super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSIntegerValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #integerValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSIntegerValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

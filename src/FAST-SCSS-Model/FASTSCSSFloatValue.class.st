"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSFloatValue` | `floatValueOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSFloatValue',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #floatValueOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSFloatValue class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FloatValue super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSFloatValue >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #floatValueOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSFloatValue >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSUnaryQuery` | `unaryQueryOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSUnaryQuery',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #unaryQueryOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSUnaryQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #UnaryQuery super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSUnaryQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #unaryQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSUnaryQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

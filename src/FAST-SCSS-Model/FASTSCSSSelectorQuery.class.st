"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSSelectorQuery` | `selectorQueryOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSSelectorQuery',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #selectorQueryOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSSelectorQuery class >> annotation [

	<ignoreForCoverage>
	<FMClass: #SelectorQuery super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSSelectorQuery >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #selectorQueryOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSSelectorQuery >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

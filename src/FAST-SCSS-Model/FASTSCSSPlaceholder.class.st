"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSPlaceholder` | `placeholderOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSPlaceholder',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #placeholderOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSPlaceholder class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Placeholder super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSPlaceholder >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #placeholderOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSPlaceholder >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSIdSelector` | `idSelectorOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSIdSelector',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #idSelectorOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSIdSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #IdSelector super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSIdSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSIdSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #idSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSIdSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

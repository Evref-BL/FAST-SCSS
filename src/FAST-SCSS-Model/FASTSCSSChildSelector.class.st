"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSChildSelector` | `childSelectorOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSChildSelector',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #childSelectorOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSChildSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ChildSelector super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSChildSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSChildSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #childSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSChildSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

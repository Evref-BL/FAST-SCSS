"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSAdjacentSiblingSelector` | `adjacentSiblingSelectorOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSAdjacentSiblingSelector',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #adjacentSiblingSelectorOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSAdjacentSiblingSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #AdjacentSiblingSelector super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSAdjacentSiblingSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSAdjacentSiblingSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #adjacentSiblingSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSAdjacentSiblingSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

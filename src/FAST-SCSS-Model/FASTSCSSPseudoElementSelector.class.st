"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSPseudoElementSelector` | `pseudoElementSelectorOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSPseudoElementSelector',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #pseudoElementSelectorOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSPseudoElementSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PseudoElementSelector super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSPseudoElementSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSPseudoElementSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #pseudoElementSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSPseudoElementSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

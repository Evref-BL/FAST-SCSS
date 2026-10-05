"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSPseudoClassSelector` | `pseudoClassSelectorOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSPseudoClassSelector',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #pseudoClassSelectorOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSPseudoClassSelector class >> annotation [

	<ignoreForCoverage>
	<FMClass: #PseudoClassSelector super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSPseudoClassSelector >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSPseudoClassSelector >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #pseudoClassSelectorOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSPseudoClassSelector >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

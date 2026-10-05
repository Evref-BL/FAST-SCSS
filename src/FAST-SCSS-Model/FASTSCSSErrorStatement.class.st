"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSErrorStatement` | `errorStatementOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSErrorStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #errorStatementOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSErrorStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ErrorStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSErrorStatement >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSErrorStatement >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #errorStatementOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSErrorStatement >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

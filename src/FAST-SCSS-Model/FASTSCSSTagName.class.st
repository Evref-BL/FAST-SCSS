"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSTagName` | `tagNameOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSTagName',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #tagNameOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSTagName class >> annotation [

	<ignoreForCoverage>
	<FMClass: #TagName super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSTagName >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSTagName >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #tagNameOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSTagName >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

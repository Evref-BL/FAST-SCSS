"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSKeyframeBlockList` | `keyframeBlockListOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSKeyframeBlockList',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #keyframeBlockListOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSKeyframeBlockList class >> annotation [

	<ignoreForCoverage>
	<FMClass: #KeyframeBlockList super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSKeyframeBlockList >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSKeyframeBlockList >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #keyframeBlockListOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSKeyframeBlockList >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNodes` | `FASTSCSSInterpolation` | `interpolationOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSInterpolation',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNodes => FMMany type: #FASTSCSSEntity opposite: #interpolationOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSInterpolation class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Interpolation super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSInterpolation >> addChildrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	^ self childrenNodes add: anObject
]

{ #category : 'accessing' }
FASTSCSSInterpolation >> childrenNodes [
	"Relation named: #childrenNodes type: #FASTSCSSEntity opposite: #interpolationOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ childrenNodes
]

{ #category : 'accessing' }
FASTSCSSInterpolation >> childrenNodes: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNodes value: anObject
]

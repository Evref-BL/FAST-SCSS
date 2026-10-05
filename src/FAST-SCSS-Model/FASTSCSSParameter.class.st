"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `default` | `FASTSCSSParameter` | `parameterDefaultOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSParameter',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#default => FMMany type: #FASTSCSSEntity opposite: #parameterDefaultOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSParameter class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Parameter super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSParameter >> addDefault: anObject [

	<ignoreForCoverage>
	<generated>
	^ self default add: anObject
]

{ #category : 'accessing' }
FASTSCSSParameter >> default [
	"Relation named: #default type: #FASTSCSSEntity opposite: #parameterDefaultOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ default
]

{ #category : 'accessing' }
FASTSCSSParameter >> default: anObject [

	<ignoreForCoverage>
	<generated>
	default value: anObject
]

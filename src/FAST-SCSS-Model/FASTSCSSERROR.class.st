"
## Relations
======================

### Other
| Relation | Origin | Opposite | Type | Comment |
|---|
| `element` | `FamixTSourceAnchor` | `sourceAnchor` | `FamixTSourceEntity` | Enable the accessibility to the famix entity that this class is a source pointer for|


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `source` | `String` | nil | Actual source code of the source entity|

"
Class {
	#name : 'FASTSCSSERROR',
	#superclass : 'FASTSCSSEntity',
	#traits : 'FamixTHasImmediateSource',
	#classTraits : 'FamixTHasImmediateSource classTrait',
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSERROR class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ERROR super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSERROR >> sourceText [

	"^ self source"
	^ self source ifNil: [
		  self parentNode
			  ifNotNil: [ :parent | parent sourceText ]
			  ifNil: [ '' ] ]
]

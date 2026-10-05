"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `nameRef` | `FASTSCSSArgument` | `argumentNameRefOwner` | `FASTSCSSVariable` | |
| `value` | `FASTSCSSArgument` | `argumentValueOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSArgument',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#nameRef => FMOne type: #FASTSCSSVariable opposite: #argumentNameRefOwner',
		'#value => FMMany type: #FASTSCSSEntity opposite: #argumentValueOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSArgument class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Argument super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'adding' }
FASTSCSSArgument >> addValue: anObject [

	<ignoreForCoverage>
	<generated>
	^ self value add: anObject
]

{ #category : 'accessing' }
FASTSCSSArgument >> nameRef [
	"Relation named: #nameRef type: #FASTSCSSVariable opposite: #argumentNameRefOwner"

	<ignoreForCoverage>
	<generated>
	^ nameRef
]

{ #category : 'accessing' }
FASTSCSSArgument >> nameRef: anObject [

	<ignoreForCoverage>
	<generated>
	nameRef := anObject
]

{ #category : 'accessing' }
FASTSCSSArgument >> value [
	"Relation named: #value type: #FASTSCSSEntity opposite: #argumentValueOwner"

	<ignoreForCoverage>
	<generated>
	<derived>
	^ value
]

{ #category : 'accessing' }
FASTSCSSArgument >> value: anObject [

	<ignoreForCoverage>
	<generated>
	value value: anObject
]

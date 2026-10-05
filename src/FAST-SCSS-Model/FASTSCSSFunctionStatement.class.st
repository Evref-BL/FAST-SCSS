"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `nameRef` | `FASTSCSSFunctionStatement` | `functionStatementNameRefOwner` | `FASTSCSSIdentifier` | |



"
Class {
	#name : 'FASTSCSSFunctionStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#nameRef => FMOne type: #FASTSCSSIdentifier opposite: #functionStatementNameRefOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSFunctionStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #FunctionStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSFunctionStatement >> nameRef [
	"Relation named: #nameRef type: #FASTSCSSIdentifier opposite: #functionStatementNameRefOwner"

	<ignoreForCoverage>
	<generated>
	^ nameRef
]

{ #category : 'accessing' }
FASTSCSSFunctionStatement >> nameRef: anObject [

	<ignoreForCoverage>
	<generated>
	nameRef := anObject
]

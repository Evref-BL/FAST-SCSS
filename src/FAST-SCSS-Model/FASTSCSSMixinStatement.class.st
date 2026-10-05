"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `nameRef` | `FASTSCSSMixinStatement` | `mixinStatementNameRefOwner` | `FASTSCSSIdentifier` | |



"
Class {
	#name : 'FASTSCSSMixinStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#nameRef => FMOne type: #FASTSCSSIdentifier opposite: #mixinStatementNameRefOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSMixinStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #MixinStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSMixinStatement >> nameRef [
	"Relation named: #nameRef type: #FASTSCSSIdentifier opposite: #mixinStatementNameRefOwner"

	<ignoreForCoverage>
	<generated>
	^ nameRef
]

{ #category : 'accessing' }
FASTSCSSMixinStatement >> nameRef: anObject [

	<ignoreForCoverage>
	<generated>
	nameRef := anObject
]

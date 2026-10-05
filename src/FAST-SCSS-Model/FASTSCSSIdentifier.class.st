"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `functionStatementNameRefOwner` | `FASTSCSSIdentifier` | `nameRef` | `FASTSCSSFunctionStatement` | |
| `mixinStatementNameRefOwner` | `FASTSCSSIdentifier` | `nameRef` | `FASTSCSSMixinStatement` | |



"
Class {
	#name : 'FASTSCSSIdentifier',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#functionStatementNameRefOwner => FMOne type: #FASTSCSSFunctionStatement opposite: #nameRef',
		'#mixinStatementNameRefOwner => FMOne type: #FASTSCSSMixinStatement opposite: #nameRef'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSIdentifier class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Identifier super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSIdentifier >> functionStatementNameRefOwner [
	"Relation named: #functionStatementNameRefOwner type: #FASTSCSSFunctionStatement opposite: #nameRef"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ functionStatementNameRefOwner
]

{ #category : 'accessing' }
FASTSCSSIdentifier >> functionStatementNameRefOwner: anObject [

	<ignoreForCoverage>
	<generated>
	functionStatementNameRefOwner := anObject
]

{ #category : 'accessing' }
FASTSCSSIdentifier >> mixinStatementNameRefOwner [
	"Relation named: #mixinStatementNameRefOwner type: #FASTSCSSMixinStatement opposite: #nameRef"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ mixinStatementNameRefOwner
]

{ #category : 'accessing' }
FASTSCSSIdentifier >> mixinStatementNameRefOwner: anObject [

	<ignoreForCoverage>
	<generated>
	mixinStatementNameRefOwner := anObject
]

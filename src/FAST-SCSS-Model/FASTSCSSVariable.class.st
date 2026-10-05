"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `argumentNameRefOwner` | `FASTSCSSVariable` | `nameRef` | `FASTSCSSArgument` | |
| `eachStatementKeyOwner` | `FASTSCSSVariable` | `key` | `FASTSCSSEachStatement` | |
| `eachStatementValueOwner` | `FASTSCSSVariable` | `value` | `FASTSCSSEachStatement` | |



"
Class {
	#name : 'FASTSCSSVariable',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#argumentNameRefOwner => FMOne type: #FASTSCSSArgument opposite: #nameRef',
		'#eachStatementKeyOwner => FMOne type: #FASTSCSSEachStatement opposite: #key',
		'#eachStatementValueOwner => FMOne type: #FASTSCSSEachStatement opposite: #value'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSVariable class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Variable super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSVariable >> argumentNameRefOwner [
	"Relation named: #argumentNameRefOwner type: #FASTSCSSArgument opposite: #nameRef"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ argumentNameRefOwner
]

{ #category : 'accessing' }
FASTSCSSVariable >> argumentNameRefOwner: anObject [

	<ignoreForCoverage>
	<generated>
	argumentNameRefOwner := anObject
]

{ #category : 'accessing' }
FASTSCSSVariable >> eachStatementKeyOwner [
	"Relation named: #eachStatementKeyOwner type: #FASTSCSSEachStatement opposite: #key"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ eachStatementKeyOwner
]

{ #category : 'accessing' }
FASTSCSSVariable >> eachStatementKeyOwner: anObject [

	<ignoreForCoverage>
	<generated>
	eachStatementKeyOwner := anObject
]

{ #category : 'accessing' }
FASTSCSSVariable >> eachStatementValueOwner [
	"Relation named: #eachStatementValueOwner type: #FASTSCSSEachStatement opposite: #value"

	<ignoreForCoverage>
	<generated>
	<container>
	<derived>
	^ eachStatementValueOwner
]

{ #category : 'accessing' }
FASTSCSSVariable >> eachStatementValueOwner: anObject [

	<ignoreForCoverage>
	<generated>
	eachStatementValueOwner := anObject
]

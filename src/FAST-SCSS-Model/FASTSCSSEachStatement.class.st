"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `key` | `FASTSCSSEachStatement` | `eachStatementKeyOwner` | `FASTSCSSVariable` | |
| `value` | `FASTSCSSEachStatement` | `eachStatementValueOwner` | `FASTSCSSVariable` | |



"
Class {
	#name : 'FASTSCSSEachStatement',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#key => FMOne type: #FASTSCSSVariable opposite: #eachStatementKeyOwner',
		'#value => FMOne type: #FASTSCSSVariable opposite: #eachStatementValueOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSEachStatement class >> annotation [

	<ignoreForCoverage>
	<FMClass: #EachStatement super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSEachStatement >> key [
	"Relation named: #key type: #FASTSCSSVariable opposite: #eachStatementKeyOwner"

	<ignoreForCoverage>
	<generated>
	^ key
]

{ #category : 'accessing' }
FASTSCSSEachStatement >> key: anObject [

	<ignoreForCoverage>
	<generated>
	key := anObject
]

{ #category : 'accessing' }
FASTSCSSEachStatement >> value [
	"Relation named: #value type: #FASTSCSSVariable opposite: #eachStatementValueOwner"

	<ignoreForCoverage>
	<generated>
	^ value
]

{ #category : 'accessing' }
FASTSCSSEachStatement >> value: anObject [

	<ignoreForCoverage>
	<generated>
	value := anObject
]

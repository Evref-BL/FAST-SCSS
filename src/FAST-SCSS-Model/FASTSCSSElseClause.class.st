"
## Relations
======================

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `childrenNode` | `FASTSCSSElseClause` | `elseClauseOwner` | `FASTSCSSEntity` | |



"
Class {
	#name : 'FASTSCSSElseClause',
	#superclass : 'FASTSCSSEntity',
	#instVars : [
		'#childrenNode => FMOne type: #FASTSCSSEntity opposite: #elseClauseOwner'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSElseClause class >> annotation [

	<ignoreForCoverage>
	<FMClass: #ElseClause super: #FASTSCSSEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'accessing' }
FASTSCSSElseClause >> childrenNode [
	"Relation named: #childrenNode type: #FASTSCSSEntity opposite: #elseClauseOwner"

	<ignoreForCoverage>
	<generated>
	^ childrenNode
]

{ #category : 'accessing' }
FASTSCSSElseClause >> childrenNode: anObject [

	<ignoreForCoverage>
	<generated>
	childrenNode := anObject
]

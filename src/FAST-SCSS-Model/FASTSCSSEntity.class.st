"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericParent` | `FASTSCSSEntity` | `genericChildren` | `FASTSCSSEntity` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTSCSSEntity` | `genericParent` | `FASTSCSSEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTSCSSEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity',
	#classTraits : 'FASTTEntity classTrait',
	#instVars : [
		'#genericChildren => FMMany type: #FASTSCSSEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTSCSSEntity opposite: #genericChildren'
	],
	#category : 'FAST-SCSS-Model-Entities',
	#package : 'FAST-SCSS-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTSCSSEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-SCSS-Model'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FASTSCSSEntity class >> isAbstract [

	<generated>
	^ self == FASTSCSSEntity
]

{ #category : 'meta' }
FASTSCSSEntity class >> metamodel [

	<generated>
	^ FASTSCSSModel metamodel
]

{ #category : 'adding' }
FASTSCSSEntity >> addGenericChildren: anObject [
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTSCSSEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTSCSSEntity opposite: #genericParent"

	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTSCSSEntity >> genericChildren: anObject [

	<generated>
	genericChildren value: anObject
]

{ #category : 'navigation' }
FASTSCSSEntity >> genericChildrenGroup [
	<generated>
	<navigation: 'GenericChildren'>
	^ MooseSpecializedGroup withAll: self genericChildren asSet
]

{ #category : 'accessing' }
FASTSCSSEntity >> genericParent [
	"Relation named: #genericParent type: #FASTSCSSEntity opposite: #genericChildren"

	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTSCSSEntity >> genericParent: anObject [

	<generated>
	genericParent := anObject
]

{ #category : 'navigation' }
FASTSCSSEntity >> genericParentGroup [
	<generated>
	<navigation: 'GenericParent'>
	^ MooseSpecializedGroup with: self genericParent
]

{ #category : 'testing' }
FASTSCSSEntity >> isQueryable [

	<generated>
	^ false
]

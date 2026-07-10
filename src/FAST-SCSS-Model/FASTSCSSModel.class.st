Class {
	#name : 'FASTSCSSModel',
	#superclass : 'MooseModel',
	#traits : 'FASTSCSSTEntityCreator + FASTTEntityCreator',
	#classTraits : 'FASTSCSSTEntityCreator classTrait + FASTTEntityCreator classTrait',
	#category : 'FAST-SCSS-Model-Model',
	#package : 'FAST-SCSS-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FASTSCSSModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTSCSSModel class >> annotation [
	<FMClass: #FASTSCSSModel super: #MooseModel>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

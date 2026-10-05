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

	<ignoreForCoverage>
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTSCSSModel class >> annotation [

	<ignoreForCoverage>
	<FMClass: #Model super: #MooseModel>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

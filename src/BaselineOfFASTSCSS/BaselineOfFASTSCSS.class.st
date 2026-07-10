Class {
	#name : 'BaselineOfFASTSCSS',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFASTSCSS',
	#package : 'BaselineOfFASTSCSS'
}

{ #category : 'baselines' }
BaselineOfFASTSCSS >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec description:
			'Developement version of FAST SCSS using TreeSitter for Pharo'.
		spec author: 'AlessHosry'.
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : 'accessing' }
BaselineOfFASTSCSS >> customProjectAttributes [

	^ PackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfFamix' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ]
]

{ #category : 'baselines' }
BaselineOfFASTSCSS >> defineDependencies: spec [

	spec baseline: 'FAST' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST:v3/src' ].
	spec
		project: 'FASTTool'
		copyFrom: 'FAST'
		with: [ spec loads: #( 'core' 'tools' ) ].
		
	spec for: #NeedsMoose do: [
		spec baseline: 'Famix' with: [
			spec
				loads: #( 'Core' 'Basic' );
				repository: 'github://moosetechnology/Famix:development/src' ] ].

	spec baseline: 'TreeSitter' with: [
		spec
			loads: #( 'default' 'scss' );
			repository: 'github://Evref-BL/Pharo-Tree-Sitter:main/src' ]

]

{ #category : 'baselines' }
BaselineOfFASTSCSS >> defineGroups: spec [

	spec
		group: 'core'
		with: #( 'FAST-SCSS-Model' 
			   'FAST-SCSS-Model-Generator' );
		group: 'tools' with: #( 'core' 'FAST-SCSS-Tools' )
]

{ #category : 'baselines' }
BaselineOfFASTSCSS >> definePackages: spec [

	spec
		package: 'FAST-SCSS-Model'
		with: [ spec requires: #( 'FAST' ) ];
		package: 'FAST-SCSS-Model-Generator'; 
		package: 'FAST-SCSS-Tools'
		with: [ spec requires: #( 'TreeSitter' ) ].

	"In case of no Famix loaded"
	spec for: #NeedsMoose do: [
		spec
			package: 'FAST-SCSS-Model'
			with: [ spec requires: #( 'FAST' 'Famix' ) ] ]
]

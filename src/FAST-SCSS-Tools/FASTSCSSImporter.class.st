Class {
	#name : 'FASTSCSSImporter',
	#superclass : 'TSFASTAbstractImporter',
	#instVars : [
		'representations'
	],
	#category : 'FAST-SCSS-Tools',
	#package : 'FAST-SCSS-Tools'
}

{ #category : 'initialization' }
FASTSCSSImporter >> deleteTreeSitterParser [
	
	self tsParser delete 
]

{ #category : 'as yet unclassified' }
FASTSCSSImporter >> editTree: aFastTree using: inputEdit [

	| treeRepresentation |
	"1- create a parser"
	self initialiseTreeSitterParser.

	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [ :each |
		                       each fastTree mooseID = aFastTree mooseID ])
		                      first.

	"3- edit treeSitterTree using inputEdits"
	self tsParser
		editTree: treeRepresentation treeSitterTree
		usingInputEdit: inputEdit.

	"4- delete the TreeSitter Parser"
	self deleteTreeSitterParser
]

{ #category : 'as yet unclassified' }
FASTSCSSImporter >> importToFAST: tsTree usingSourceCode: aString [

	| tsLanguage importer |
	"needs cleaning"
	tsLanguage := TSLanguage scss.
	importer := TSFASTImporter new.
	importer tsLanguage: tsLanguage.
	importer languageName: 'SCSS'.
	importer originString: aString.

	^ importer import: tsTree
]

{ #category : 'initialization' }
FASTSCSSImporter >> initialiseTreeSitterParser [

	"Still doing it the old wy ithout using the new importer coded by Cyril; until I find a moment to focus on it."
	
	self tsParser: TSParser new.
	self tsParser language: TSLanguage scss
]

{ #category : 'initialization' }
FASTSCSSImporter >> initialize [
	
	super initialize. 
	
	self representations: OrderedCollection new.
]

{ #category : 'parsing' }
FASTSCSSImporter >> parse: aString [
	
	|tsTree fastTree|
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- parseString"
	tsTree := self tsParser parseString: aString.
	
	"3- Convert it to FAST"
	fastTree := self importToFAST: tsTree rootNode usingSourceCode: aString.
		
	"4- store the TSTree + FAST tree in the treeRepresantion object and store it in collection"
	self representations add: ( TreeRepresentation new
											treeSitterTree:tsTree;
											fastTree: fastTree).
	
	"5- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"6- return fastTree"
	"^ self getASTFromString: aString "
	^ fastTree 		
]

{ #category : 'parsing' }
FASTSCSSImporter >> parse: aString usingOldTree: aFastTree [

	| treeRepresentation newFastTree newTreeSitterTree |
	
	"1- create a parser"
	self initialiseTreeSitterParser.
	
	"2- find treeSitter tree in representation collection"
	treeRepresentation := (self representations select: [:each | each fastTree mooseID = aFastTree mooseID]) first.
		
	"3- parseString using treeSitter tree"
	newTreeSitterTree := self tsParser parseString: aString usingTree: treeRepresentation treeSitterTree.
	
	"4- convert treeSitter tree to fast"
	newFastTree := self importToFAST: newTreeSitterTree rootNode usingSourceCode: aString.
	
	"5- update the representation collection: fill both new trees"
	treeRepresentation treeSitterTree: newTreeSitterTree; fastTree: newFastTree.
	
	"6- delete the TreeSitter Parser"
	self deleteTreeSitterParser.
	
	"7- return fastTree"
	^ newFastTree.
]

{ #category : 'accessing' }
FASTSCSSImporter >> representations [

	^ representations
]

{ #category : 'accessing' }
FASTSCSSImporter >> representations: anObject [

	representations := anObject
]

{ #category : 'as yet unclassified' }
FASTSCSSImporter >> tsLanguage [

	^ TSLanguage scss
]

{ #category : 'accessing' }
FASTSCSSImporter >> tsParser [

	^ tsParser
]

{ #category : 'accessing' }
FASTSCSSImporter >> tsParser: anObject [

	tsParser := anObject
]

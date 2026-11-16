Class {
	#name : 'FASTSCSSImporter',
	#superclass : 'TSFASTAbstractImporter',
	#category : 'FAST-SCSS-Tools',
	#package : 'FAST-SCSS-Tools'
}

{ #category : 'accessing' }
FASTSCSSImporter class >> extensions [
	"File extensions without the dot that the importer handles"

	^ #( 'scss' )
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

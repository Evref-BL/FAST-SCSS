"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTSCSSTEntityCreator',
	#category : 'FAST-SCSS-Model-Model',
	#package : 'FAST-SCSS-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTSCSSTEntityCreator classSide >> annotation [

	<ignoreForCoverage>
	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-SCSS-Model'>
	<generated>
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAdjacentSiblingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAdjacentSiblingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newArgument [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSArgument new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newArguments [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSArguments new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtKeyword [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAtKeyword new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtRootStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAtRootStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtRule [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAtRule new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAttributeName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAttributeName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAttributeSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSAttributeSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBinaryExpression [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSBinaryExpression new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBinaryQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSBinaryQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBlock [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSBlock new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newCallExpression [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSCallExpression new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newCharsetStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSCharsetStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newChildSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSChildSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newClassName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSClassName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newClassSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSClassSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newColorValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSColorValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSComment new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDebugStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSDebugStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDeclaration [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSDeclaration new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDescendantSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSDescendantSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newERROR [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSERROR new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newEachStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSEachStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newElseClause [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSElseClause new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newElseIfClause [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSElseIfClause new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newErrorStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSErrorStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newExtendStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSExtendStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFeatureName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFeatureName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFeatureQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFeatureQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFloatValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFloatValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newForStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSForStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newForwardStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSForwardStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFrom [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFrom new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFunctionName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFunctionName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFunctionStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSFunctionStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newGridValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSGridValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIdName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIdSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdentifier [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIdentifier new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIfStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIfStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newImportStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSImportStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newImportant [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSImportant new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIncludeStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIncludeStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIntegerValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSIntegerValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newInterpolation [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSInterpolation new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newJsComment [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSJsComment new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframeBlock [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSKeyframeBlock new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframeBlockList [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSKeyframeBlockList new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframesName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSKeyframesName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframesStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSKeyframesStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeywordQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSKeywordQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newListValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSListValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newMediaStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSMediaStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newMixinStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSMixinStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSNamespaceName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSNamespaceSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSNamespaceStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNestingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSNestingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParameter [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSParameter new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParameters [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSParameters new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParenthesizedQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSParenthesizedQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParenthesizedValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSParenthesizedValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPlaceholder [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPlaceholder new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPlainValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPlainValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPostcssStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPostcssStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPropertyName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPropertyName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPseudoClassSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPseudoClassSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPseudoElementSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSPseudoElementSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newReturnStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSReturnStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newRuleSet [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSRuleSet new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSelectorQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSSelectorQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSelectors [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSSelectors new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSiblingSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSSiblingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newStringValue [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSStringValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newStylesheet [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSStylesheet new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSupportsStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSSupportsStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newTagName [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSTagName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newTo [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSTo new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUnaryQuery [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSUnaryQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUnit [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSUnit new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUniversalSelector [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSUniversalSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUseStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSUseStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newVariable [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSVariable new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newWarnStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSWarnStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newWhileStatement [

	<ignoreForCoverage>
	<generated>
	^ self add: FASTSCSSWhileStatement new
]

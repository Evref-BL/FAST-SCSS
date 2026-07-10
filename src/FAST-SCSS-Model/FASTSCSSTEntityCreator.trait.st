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

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-SCSS-Model'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAdjacentSiblingSelector [

	<generated>
	^ self add: FASTSCSSAdjacentSiblingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newArgument [

	<generated>
	^ self add: FASTSCSSArgument new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newArguments [

	<generated>
	^ self add: FASTSCSSArguments new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtKeyword [

	<generated>
	^ self add: FASTSCSSAtKeyword new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtRootStatement [

	<generated>
	^ self add: FASTSCSSAtRootStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAtRule [

	<generated>
	^ self add: FASTSCSSAtRule new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAttributeName [

	<generated>
	^ self add: FASTSCSSAttributeName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newAttributeSelector [

	<generated>
	^ self add: FASTSCSSAttributeSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBinaryExpression [

	<generated>
	^ self add: FASTSCSSBinaryExpression new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBinaryQuery [

	<generated>
	^ self add: FASTSCSSBinaryQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newBlock [

	<generated>
	^ self add: FASTSCSSBlock new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newCallExpression [

	<generated>
	^ self add: FASTSCSSCallExpression new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newCharsetStatement [

	<generated>
	^ self add: FASTSCSSCharsetStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newChildSelector [

	<generated>
	^ self add: FASTSCSSChildSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newClassName [

	<generated>
	^ self add: FASTSCSSClassName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newClassSelector [

	<generated>
	^ self add: FASTSCSSClassSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newColorValue [

	<generated>
	^ self add: FASTSCSSColorValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newComment [

	<generated>
	^ self add: FASTSCSSComment new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDebugStatement [

	<generated>
	^ self add: FASTSCSSDebugStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDeclaration [

	<generated>
	^ self add: FASTSCSSDeclaration new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newDescendantSelector [

	<generated>
	^ self add: FASTSCSSDescendantSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newERROR [

	<generated>
	^ self add: FASTSCSSERROR new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newEachStatement [

	<generated>
	^ self add: FASTSCSSEachStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newElseClause [

	<generated>
	^ self add: FASTSCSSElseClause new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newElseIfClause [

	<generated>
	^ self add: FASTSCSSElseIfClause new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newErrorStatement [

	<generated>
	^ self add: FASTSCSSErrorStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newExtendStatement [

	<generated>
	^ self add: FASTSCSSExtendStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFeatureName [

	<generated>
	^ self add: FASTSCSSFeatureName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFeatureQuery [

	<generated>
	^ self add: FASTSCSSFeatureQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFloatValue [

	<generated>
	^ self add: FASTSCSSFloatValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newForStatement [

	<generated>
	^ self add: FASTSCSSForStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newForwardStatement [

	<generated>
	^ self add: FASTSCSSForwardStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFrom [

	<generated>
	^ self add: FASTSCSSFrom new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFunctionName [

	<generated>
	^ self add: FASTSCSSFunctionName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newFunctionStatement [

	<generated>
	^ self add: FASTSCSSFunctionStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newGridValue [

	<generated>
	^ self add: FASTSCSSGridValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdName [

	<generated>
	^ self add: FASTSCSSIdName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdSelector [

	<generated>
	^ self add: FASTSCSSIdSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIdentifier [

	<generated>
	^ self add: FASTSCSSIdentifier new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIfStatement [

	<generated>
	^ self add: FASTSCSSIfStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newImportStatement [

	<generated>
	^ self add: FASTSCSSImportStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newImportant [

	<generated>
	^ self add: FASTSCSSImportant new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIncludeStatement [

	<generated>
	^ self add: FASTSCSSIncludeStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newIntegerValue [

	<generated>
	^ self add: FASTSCSSIntegerValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newInterpolation [

	<generated>
	^ self add: FASTSCSSInterpolation new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newJsComment [

	<generated>
	^ self add: FASTSCSSJsComment new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframeBlock [

	<generated>
	^ self add: FASTSCSSKeyframeBlock new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframeBlockList [

	<generated>
	^ self add: FASTSCSSKeyframeBlockList new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframesName [

	<generated>
	^ self add: FASTSCSSKeyframesName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeyframesStatement [

	<generated>
	^ self add: FASTSCSSKeyframesStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newKeywordQuery [

	<generated>
	^ self add: FASTSCSSKeywordQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newListValue [

	<generated>
	^ self add: FASTSCSSListValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newMediaStatement [

	<generated>
	^ self add: FASTSCSSMediaStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newMixinStatement [

	<generated>
	^ self add: FASTSCSSMixinStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceName [

	<generated>
	^ self add: FASTSCSSNamespaceName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceSelector [

	<generated>
	^ self add: FASTSCSSNamespaceSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNamespaceStatement [

	<generated>
	^ self add: FASTSCSSNamespaceStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newNestingSelector [

	<generated>
	^ self add: FASTSCSSNestingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParameter [

	<generated>
	^ self add: FASTSCSSParameter new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParameters [

	<generated>
	^ self add: FASTSCSSParameters new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParenthesizedQuery [

	<generated>
	^ self add: FASTSCSSParenthesizedQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newParenthesizedValue [

	<generated>
	^ self add: FASTSCSSParenthesizedValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPlaceholder [

	<generated>
	^ self add: FASTSCSSPlaceholder new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPlainValue [

	<generated>
	^ self add: FASTSCSSPlainValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPostcssStatement [

	<generated>
	^ self add: FASTSCSSPostcssStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPropertyName [

	<generated>
	^ self add: FASTSCSSPropertyName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPseudoClassSelector [

	<generated>
	^ self add: FASTSCSSPseudoClassSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newPseudoElementSelector [

	<generated>
	^ self add: FASTSCSSPseudoElementSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newReturnStatement [

	<generated>
	^ self add: FASTSCSSReturnStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newRuleSet [

	<generated>
	^ self add: FASTSCSSRuleSet new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSelectorQuery [

	<generated>
	^ self add: FASTSCSSSelectorQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSelectors [

	<generated>
	^ self add: FASTSCSSSelectors new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSiblingSelector [

	<generated>
	^ self add: FASTSCSSSiblingSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newStringValue [

	<generated>
	^ self add: FASTSCSSStringValue new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newStylesheet [

	<generated>
	^ self add: FASTSCSSStylesheet new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newSupportsStatement [

	<generated>
	^ self add: FASTSCSSSupportsStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newTagName [

	<generated>
	^ self add: FASTSCSSTagName new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newTo [

	<generated>
	^ self add: FASTSCSSTo new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUnaryQuery [

	<generated>
	^ self add: FASTSCSSUnaryQuery new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUnit [

	<generated>
	^ self add: FASTSCSSUnit new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUniversalSelector [

	<generated>
	^ self add: FASTSCSSUniversalSelector new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newUseStatement [

	<generated>
	^ self add: FASTSCSSUseStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newVariable [

	<generated>
	^ self add: FASTSCSSVariable new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newWarnStatement [

	<generated>
	^ self add: FASTSCSSWarnStatement new
]

{ #category : 'entity creation' }
FASTSCSSTEntityCreator >> newWhileStatement [

	<generated>
	^ self add: FASTSCSSWhileStatement new
]

Class {
	#name : 'FASTSCSSMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'_ERROR',
		'tEntity',
		'adjacentSiblingSelector',
		'argument',
		'arguments',
		'atKeyword',
		'atRootStatement',
		'atRule',
		'attributeName',
		'attributeSelector',
		'binaryExpression',
		'binaryQuery',
		'block',
		'callExpression',
		'charsetStatement',
		'childSelector',
		'className',
		'classSelector',
		'colorValue',
		'comment',
		'debugStatement',
		'declaration',
		'descendantSelector',
		'eachStatement',
		'elseClause',
		'elseIfClause',
		'errorStatement',
		'extendStatement',
		'featureName',
		'featureQuery',
		'floatValue',
		'forStatement',
		'forwardStatement',
		'from',
		'functionName',
		'functionStatement',
		'gridValue',
		'idName',
		'idSelector',
		'identifier',
		'ifStatement',
		'importStatement',
		'important',
		'includeStatement',
		'integerValue',
		'interpolation',
		'jsComment',
		'keyframeBlock',
		'keyframeBlockList',
		'keyframesName',
		'keyframesStatement',
		'keywordQuery',
		'listValue',
		'mediaStatement',
		'mixinStatement',
		'namespaceName',
		'namespaceSelector',
		'namespaceStatement',
		'nestingSelector',
		'parameter',
		'parameters',
		'parenthesizedQuery',
		'parenthesizedValue',
		'placeholder',
		'plainValue',
		'postcssStatement',
		'propertyName',
		'pseudoClassSelector',
		'pseudoElementSelector',
		'returnStatement',
		'ruleSet',
		'selectorQuery',
		'selectors',
		'siblingSelector',
		'stringValue',
		'stylesheet',
		'supportsStatement',
		'tagName',
		'to',
		'unaryQuery',
		'unit',
		'universalSelector',
		'useStatement',
		'variable',
		'warnStatement',
		'whileStatement'
	],
	#category : 'FAST-SCSS-Model-Generator',
	#package : 'FAST-SCSS-Model-Generator'
}

{ #category : 'accessing' }
FASTSCSSMetamodelGenerator class >> packageName [

	^ #'FAST-SCSS-Model'
]

{ #category : 'accessing' }
FASTSCSSMetamodelGenerator class >> prefix [

	^ #FASTSCSS
]

{ #category : 'accessing' }
FASTSCSSMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineClasses [
	super defineClasses.
	entity := builder newClassNamed: #Entity.
	_ERROR := builder newClassNamed: #ERROR.
	adjacentSiblingSelector := builder newClassNamed: #AdjacentSiblingSelector.
	argument := builder newClassNamed: #Argument.
	arguments := builder newClassNamed: #Arguments.
	atKeyword := builder newClassNamed: #AtKeyword.
	atRootStatement := builder newClassNamed: #AtRootStatement.
	atRule := builder newClassNamed: #AtRule.
	attributeName := builder newClassNamed: #AttributeName.
	attributeSelector := builder newClassNamed: #AttributeSelector.
	binaryExpression := builder newClassNamed: #BinaryExpression.
	binaryQuery := builder newClassNamed: #BinaryQuery.
	block := builder newClassNamed: #Block.
	callExpression := builder newClassNamed: #CallExpression.
	charsetStatement := builder newClassNamed: #CharsetStatement.
	childSelector := builder newClassNamed: #ChildSelector.
	className := builder newClassNamed: #ClassName.
	classSelector := builder newClassNamed: #ClassSelector.
	colorValue := builder newClassNamed: #ColorValue.
	comment := builder newClassNamed: #Comment.
	debugStatement := builder newClassNamed: #DebugStatement.
	declaration := builder newClassNamed: #Declaration.
	descendantSelector := builder newClassNamed: #DescendantSelector.
	eachStatement := builder newClassNamed: #EachStatement.
	elseClause := builder newClassNamed: #ElseClause.
	elseIfClause := builder newClassNamed: #ElseIfClause.
	errorStatement := builder newClassNamed: #ErrorStatement.
	extendStatement := builder newClassNamed: #ExtendStatement.
	featureName := builder newClassNamed: #FeatureName.
	featureQuery := builder newClassNamed: #FeatureQuery.
	floatValue := builder newClassNamed: #FloatValue.
	forStatement := builder newClassNamed: #ForStatement.
	forwardStatement := builder newClassNamed: #ForwardStatement.
	from := builder newClassNamed: #From.
	functionName := builder newClassNamed: #FunctionName.
	functionStatement := builder newClassNamed: #FunctionStatement.
	gridValue := builder newClassNamed: #GridValue.
	idName := builder newClassNamed: #IdName.
	idSelector := builder newClassNamed: #IdSelector.
	identifier := builder newClassNamed: #Identifier.
	ifStatement := builder newClassNamed: #IfStatement.
	importStatement := builder newClassNamed: #ImportStatement.
	important := builder newClassNamed: #Important.
	includeStatement := builder newClassNamed: #IncludeStatement.
	integerValue := builder newClassNamed: #IntegerValue.
	interpolation := builder newClassNamed: #Interpolation.
	jsComment := builder newClassNamed: #JsComment.
	keyframeBlock := builder newClassNamed: #KeyframeBlock.
	keyframeBlockList := builder newClassNamed: #KeyframeBlockList.
	keyframesName := builder newClassNamed: #KeyframesName.
	keyframesStatement := builder newClassNamed: #KeyframesStatement.
	keywordQuery := builder newClassNamed: #KeywordQuery.
	listValue := builder newClassNamed: #ListValue.
	mediaStatement := builder newClassNamed: #MediaStatement.
	mixinStatement := builder newClassNamed: #MixinStatement.
	namespaceName := builder newClassNamed: #NamespaceName.
	namespaceSelector := builder newClassNamed: #NamespaceSelector.
	namespaceStatement := builder newClassNamed: #NamespaceStatement.
	nestingSelector := builder newClassNamed: #NestingSelector.
	parameter := builder newClassNamed: #Parameter.
	parameters := builder newClassNamed: #Parameters.
	parenthesizedQuery := builder newClassNamed: #ParenthesizedQuery.
	parenthesizedValue := builder newClassNamed: #ParenthesizedValue.
	placeholder := builder newClassNamed: #Placeholder.
	plainValue := builder newClassNamed: #PlainValue.
	postcssStatement := builder newClassNamed: #PostcssStatement.
	propertyName := builder newClassNamed: #PropertyName.
	pseudoClassSelector := builder newClassNamed: #PseudoClassSelector.
	pseudoElementSelector := builder newClassNamed: #PseudoElementSelector.
	returnStatement := builder newClassNamed: #ReturnStatement.
	ruleSet := builder newClassNamed: #RuleSet.
	selectorQuery := builder newClassNamed: #SelectorQuery.
	selectors := builder newClassNamed: #Selectors.
	siblingSelector := builder newClassNamed: #SiblingSelector.
	stringValue := builder newClassNamed: #StringValue.
	stylesheet := builder newClassNamed: #Stylesheet.
	supportsStatement := builder newClassNamed: #SupportsStatement.
	tagName := builder newClassNamed: #TagName.
	to := builder newClassNamed: #To.
	unaryQuery := builder newClassNamed: #UnaryQuery.
	unit := builder newClassNamed: #Unit.
	universalSelector := builder newClassNamed: #UniversalSelector.
	useStatement := builder newClassNamed: #UseStatement.
	variable := builder newClassNamed: #Variable.
	warnStatement := builder newClassNamed: #WarnStatement.
	whileStatement := builder newClassNamed: #WhileStatement.
]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"

	super defineHierarchy.

	entity --|> tEntity.
	stylesheet --|> #THasImmediateSource. 
	_ERROR --|> #THasImmediateSource. 
]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineRelations [

	super defineRelations.
	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').
]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineTraits [

	super defineTraits.

	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.

]

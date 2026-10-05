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
	entity --|> #TEntityMetaLevelDependency.
	
	stylesheet --|> #THasImmediateSource.
	
	_ERROR --|> #THasImmediateSource.


]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineRelations [
	super defineRelations.

	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').


	" ADJACENT_SIBLING_SELECTOR (COLLECTION) "
	((adjacentSiblingSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #adjacentSiblingSelectorOwner) comment: '').


	" ARGUMENT "
	((argument property: #nameRef) comment: '')
		<>- ((variable property: #argumentNameRefOwner) comment: '').

	((argument property: #value) comment: '')
		<>-* ((entity property: #argumentValueOwner) comment: '').


	" ARGUMENTS (COLLECTION) "
	((arguments property: #childrenNodes) comment: '')
		<>-* ((entity property: #argumentsOwner) comment: '').


	" AT_ROOT_STATEMENT (COLLECTION) "
	((atRootStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #atRootStatementOwner) comment: '').


	" AT_RULE (COLLECTION) "
	((atRule property: #childrenNodes) comment: '')
		<>-* ((entity property: #atRuleOwner) comment: '').


	" ATTRIBUTE_NAME (COLLECTION) "
	((attributeName property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeNameOwner) comment: '').


	" ATTRIBUTE_SELECTOR (COLLECTION) "
	((attributeSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #attributeSelectorOwner) comment: '').


	" BINARY_EXPRESSION (COLLECTION) "
	((binaryExpression property: #childrenNodes) comment: '')
		<>-* ((entity property: #binaryExpressionOwner) comment: '').


	" BINARY_QUERY (COLLECTION) "
	((binaryQuery property: #childrenNodes) comment: '')
		<>-* ((entity property: #binaryQueryOwner) comment: '').


	" BLOCK (COLLECTION) "
	((block property: #childrenNodes) comment: '')
		<>-* ((entity property: #blockOwner) comment: '').


	" CALL_EXPRESSION (COLLECTION) "
	((callExpression property: #childrenNodes) comment: '')
		<>-* ((entity property: #callExpressionOwner) comment: '').


	" CHARSET_STATEMENT (COLLECTION) "
	((charsetStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #charsetStatementOwner) comment: '').


	" CHILD_SELECTOR (COLLECTION) "
	((childSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #childSelectorOwner) comment: '').


	" CLASS_NAME (COLLECTION) "
	((className property: #childrenNodes) comment: '')
		<>-* ((entity property: #classNameOwner) comment: '').


	" CLASS_SELECTOR (COLLECTION) "
	((classSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #classSelectorOwner) comment: '').


	" DEBUG_STATEMENT (COLLECTION) "
	((debugStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #debugStatementOwner) comment: '').


	" DECLARATION (COLLECTION) "
	((declaration property: #childrenNodes) comment: '')
		<>-* ((entity property: #declarationOwner) comment: '').


	" DESCENDANT_SELECTOR (COLLECTION) "
	((descendantSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #descendantSelectorOwner) comment: '').


	" EACH_STATEMENT "
	((eachStatement property: #key) comment: '')
		<>- ((variable property: #eachStatementKeyOwner) comment: '').

	((eachStatement property: #value) comment: '')
		<>- ((variable property: #eachStatementValueOwner) comment: '').


	" ELSE_CLAUSE (SINGLE CHILD) "
	((elseClause property: #childrenNode) comment: '')
		<>- ((entity property: #elseClauseOwner) comment: '').


	" ELSE_IF_CLAUSE "
	((elseIfClause property: #condition) comment: '')
		<>-* ((entity property: #elseIfClauseConditionOwner) comment: '').


	" ERROR_STATEMENT (COLLECTION) "
	((errorStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #errorStatementOwner) comment: '').


	" EXTEND_STATEMENT (COLLECTION) "
	((extendStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #extendStatementOwner) comment: '').


	" FEATURE_QUERY (COLLECTION) "
	((featureQuery property: #childrenNodes) comment: '')
		<>-* ((entity property: #featureQueryOwner) comment: '').


	" FLOAT_VALUE (SINGLE CHILD) "
	((floatValue property: #childrenNode) comment: '')
		<>- ((entity property: #floatValueOwner) comment: '').


	" FOR_STATEMENT "
	((forStatement property: #through) comment: '')
		<>-* ((entity property: #forStatementThroughOwner) comment: '').

	((forStatement property: #from) comment: '')
		<>-* ((entity property: #forStatementFromOwner) comment: '').


	" FORWARD_STATEMENT (COLLECTION) "
	((forwardStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #forwardStatementOwner) comment: '').


	" FUNCTION_STATEMENT "
	((functionStatement property: #nameRef) comment: '')
		<>- ((identifier property: #functionStatementNameRefOwner) comment: '').


	" GRID_VALUE (COLLECTION) "
	((gridValue property: #childrenNodes) comment: '')
		<>-* ((entity property: #gridValueOwner) comment: '').


	" ID_SELECTOR (COLLECTION) "
	((idSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #idSelectorOwner) comment: '').


	" IF_STATEMENT "
	((ifStatement property: #condition) comment: '')
		<>-* ((entity property: #ifStatementConditionOwner) comment: '').


	" IMPORT_STATEMENT (COLLECTION) "
	((importStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #importStatementOwner) comment: '').


	" INCLUDE_STATEMENT (COLLECTION) "
	((includeStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #includeStatementOwner) comment: '').


	" INTEGER_VALUE (SINGLE CHILD) "
	((integerValue property: #childrenNode) comment: '')
		<>- ((entity property: #integerValueOwner) comment: '').


	" INTERPOLATION (COLLECTION) "
	((interpolation property: #childrenNodes) comment: '')
		<>-* ((entity property: #interpolationOwner) comment: '').


	" KEYFRAME_BLOCK (COLLECTION) "
	((keyframeBlock property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframeBlockOwner) comment: '').


	" KEYFRAME_BLOCK_LIST (COLLECTION) "
	((keyframeBlockList property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframeBlockListOwner) comment: '').


	" KEYFRAMES_STATEMENT (COLLECTION) "
	((keyframesStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #keyframesStatementOwner) comment: '').


	" LIST_VALUE (COLLECTION) "
	((listValue property: #childrenNodes) comment: '')
		<>-* ((entity property: #listValueOwner) comment: '').


	" MEDIA_STATEMENT (COLLECTION) "
	((mediaStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #mediaStatementOwner) comment: '').


	" MIXIN_STATEMENT "
	((mixinStatement property: #nameRef) comment: '')
		<>- ((identifier property: #mixinStatementNameRefOwner) comment: '').


	" NAMESPACE_SELECTOR (COLLECTION) "
	((namespaceSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #namespaceSelectorOwner) comment: '').


	" NAMESPACE_STATEMENT (COLLECTION) "
	((namespaceStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #namespaceStatementOwner) comment: '').


	" PARAMETER "
	((parameter property: #default) comment: '')
		<>-* ((entity property: #parameterDefaultOwner) comment: '').


	" PARAMETERS (COLLECTION) "
	((parameters property: #childrenNodes) comment: '')
		<>-* ((entity property: #parametersOwner) comment: '').


	" PARENTHESIZED_QUERY (SINGLE CHILD) "
	((parenthesizedQuery property: #childrenNode) comment: '')
		<>- ((entity property: #parenthesizedQueryOwner) comment: '').


	" PARENTHESIZED_VALUE (COLLECTION) "
	((parenthesizedValue property: #childrenNodes) comment: '')
		<>-* ((entity property: #parenthesizedValueOwner) comment: '').


	" PLACEHOLDER (SINGLE CHILD) "
	((placeholder property: #childrenNode) comment: '')
		<>- ((entity property: #placeholderOwner) comment: '').


	" POSTCSS_STATEMENT (COLLECTION) "
	((postcssStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #postcssStatementOwner) comment: '').


	" PROPERTY_NAME (COLLECTION) "
	((propertyName property: #childrenNodes) comment: '')
		<>-* ((entity property: #propertyNameOwner) comment: '').


	" PSEUDO_CLASS_SELECTOR (COLLECTION) "
	((pseudoClassSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #pseudoClassSelectorOwner) comment: '').


	" PSEUDO_ELEMENT_SELECTOR (COLLECTION) "
	((pseudoElementSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #pseudoElementSelectorOwner) comment: '').


	" RETURN_STATEMENT (COLLECTION) "
	((returnStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #returnStatementOwner) comment: '').


	" RULE_SET (COLLECTION) "
	((ruleSet property: #childrenNodes) comment: '')
		<>-* ((entity property: #ruleSetOwner) comment: '').


	" SELECTOR_QUERY (SINGLE CHILD) "
	((selectorQuery property: #childrenNode) comment: '')
		<>- ((entity property: #selectorQueryOwner) comment: '').


	" SELECTORS (COLLECTION) "
	((selectors property: #childrenNodes) comment: '')
		<>-* ((entity property: #selectorsOwner) comment: '').


	" SIBLING_SELECTOR (COLLECTION) "
	((siblingSelector property: #childrenNodes) comment: '')
		<>-* ((entity property: #siblingSelectorOwner) comment: '').


	" STYLESHEET (COLLECTION) "
	((stylesheet property: #childrenNodes) comment: '')
		<>-* ((entity property: #stylesheetOwner) comment: '').


	" SUPPORTS_STATEMENT (COLLECTION) "
	((supportsStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #supportsStatementOwner) comment: '').


	" TAG_NAME (COLLECTION) "
	((tagName property: #childrenNodes) comment: '')
		<>-* ((entity property: #tagNameOwner) comment: '').


	" UNARY_QUERY (SINGLE CHILD) "
	((unaryQuery property: #childrenNode) comment: '')
		<>- ((entity property: #unaryQueryOwner) comment: '').


	" USE_STATEMENT (COLLECTION) "
	((useStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #useStatementOwner) comment: '').


	" WARN_STATEMENT (COLLECTION) "
	((warnStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #warnStatementOwner) comment: '').


	" WHILE_STATEMENT (COLLECTION) "
	((whileStatement property: #childrenNodes) comment: '')
		<>-* ((entity property: #whileStatementOwner) comment: '').


]

{ #category : 'definition' }
FASTSCSSMetamodelGenerator >> defineTraits [
	super defineTraits.
	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.
]

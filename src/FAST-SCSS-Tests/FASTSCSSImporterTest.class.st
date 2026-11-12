Class {
	#name : 'FASTSCSSImporterTest',
	#superclass : 'TSFASTAbstractImporterTest',
	#category : 'FAST-SCSS-Tests',
	#package : 'FAST-SCSS-Tests'
}

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedApplyStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedApplyStatements 	"

	self parse: '@apply fill-red-50 border-black col-span-1;;'.

	self assert: (fast allWithType: FASTSCSSAtKeyword) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPostcssStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@apply fill-red-50 border-black col-span-1;;'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@apply fill-red-50 border-black col-span-1;'.
		self assert: (self topEntity isOfType: FASTSCSSPostcssStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 4.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '@apply'.
			self assert: (self topEntity isOfType: FASTSCSSAtKeyword).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'fill-red-50'.
			self assert: (self topEntity isOfType: FASTSCSSPlainValue).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: 'border-black'.
			self assert: (self topEntity isOfType: FASTSCSSPlainValue).
			stack pop.
		
			stack push: (stack top childrenNodes at: 4).
			self assert: self topEntity sourceCode equals: 'col-span-1'.
			self assert: (self topEntity isOfType: FASTSCSSPlainValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@apply fill-red-50 border-black col-span-1;;'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedAttributeSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedAttributeSelectors 	"

	self parse: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};'.

	self assert: (fast allWithType: FASTSCSSAttributeName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSAttributeSelector) size equals: 4.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 4.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 4.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 5.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '[a] {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[a]'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[a]'.
				self assert: (self topEntity isOfType: FASTSCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSAttributeName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '[b=c] {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[b=c]'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[b=c]'.
				self assert: (self topEntity isOfType: FASTSCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '[d~=e] {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '[d~=e]'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '[d~=e]'.
				self assert: (self topEntity isOfType: FASTSCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'd'.
					self assert: (self topEntity isOfType: FASTSCSSAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: 'a[b] {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a[b]'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a[b]'.
				self assert: (self topEntity isOfType: FASTSCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSAttributeName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '[a] {}
[b=c] {}
[d~=e] {}
a[b] {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedBinaryArithmeticOperators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedBinaryArithmeticOperators 	"

	self parse: 'a {
  width: calc(100% - 80px);
  aspect-ratio: 1/2;
  font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 8.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 11.
	self assert: (fast allWithType: FASTSCSSParenthesizedValue) size equals: 4.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  width: calc(100% - 80px);
  aspect-ratio: 1/2;
  font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  width: calc(100% - 80px);
  aspect-ratio: 1/2;
  font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  width: calc(100% - 80px);
  aspect-ratio: 1/2;
  font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'width: calc(100% - 80px);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'width'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'calc(100% - 80px)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'calc'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(100% - 80px)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '100% - 80px'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '100%'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '%'.
									self assert: (self topEntity isOfType: FASTSCSSUnit).
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '80px'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: 'px'.
									self assert: (self topEntity isOfType: FASTSCSSUnit).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'aspect-ratio: 1/2;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'aspect-ratio'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '1/2'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '1'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '2'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'font-size'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)))'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'calc'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)))'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '10px + (56 - 10) * ((100vw - 320px) / (1920 - 320))'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '10px + (56 - 10)'.
								self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 2.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '10px'.
									self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
									
									"Testing value of monovalue relation childrenNode"
									self assert: self topEntity childrenNode isNotNil.

										stack push: self topEntity childrenNode.
										self assert: self topEntity sourceCode equals: 'px'.
										self assert: (self topEntity isOfType: FASTSCSSUnit).
										stack pop.
									stack pop.
								
									stack push: (stack top childrenNodes at: 2).
									self assert: self topEntity sourceCode equals: '(56 - 10)'.
									self assert: (self topEntity isOfType: FASTSCSSParenthesizedValue).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 1.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '56 - 10'.
										self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
										
										"Testing value of multivalued relation childrenNodes"
										self assert: self topEntity childrenNodes size equals: 2.
										
											stack push: (stack top childrenNodes at: 1).
											self assert: self topEntity sourceCode equals: '56'.
											self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
											stack pop.
										
											stack push: (stack top childrenNodes at: 2).
											self assert: self topEntity sourceCode equals: '10'.
											self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '((100vw - 320px) / (1920 - 320))'.
								self assert: (self topEntity isOfType: FASTSCSSParenthesizedValue).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '(100vw - 320px) / (1920 - 320)'.
									self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
									
									"Testing value of multivalued relation childrenNodes"
									self assert: self topEntity childrenNodes size equals: 2.
									
										stack push: (stack top childrenNodes at: 1).
										self assert: self topEntity sourceCode equals: '(100vw - 320px)'.
										self assert: (self topEntity isOfType: FASTSCSSParenthesizedValue).
										
										"Testing value of multivalued relation childrenNodes"
										self assert: self topEntity childrenNodes size equals: 1.
										
											stack push: (stack top childrenNodes at: 1).
											self assert: self topEntity sourceCode equals: '100vw - 320px'.
											self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 2.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '100vw'.
												self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'vw'.
													self assert: (self topEntity isOfType: FASTSCSSUnit).
													stack pop.
												stack pop.
											
												stack push: (stack top childrenNodes at: 2).
												self assert: self topEntity sourceCode equals: '320px'.
												self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
												
												"Testing value of monovalue relation childrenNode"
												self assert: self topEntity childrenNode isNotNil.

													stack push: self topEntity childrenNode.
													self assert: self topEntity sourceCode equals: 'px'.
													self assert: (self topEntity isOfType: FASTSCSSUnit).
													stack pop.
												stack pop.
											stack pop.
										stack pop.
									
										stack push: (stack top childrenNodes at: 2).
										self assert: self topEntity sourceCode equals: '(1920 - 320)'.
										self assert: (self topEntity isOfType: FASTSCSSParenthesizedValue).
										
										"Testing value of multivalued relation childrenNodes"
										self assert: self topEntity childrenNodes size equals: 1.
										
											stack push: (stack top childrenNodes at: 1).
											self assert: self topEntity sourceCode equals: '1920 - 320'.
											self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
											
											"Testing value of multivalued relation childrenNodes"
											self assert: self topEntity childrenNodes size equals: 2.
											
												stack push: (stack top childrenNodes at: 1).
												self assert: self topEntity sourceCode equals: '1920'.
												self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
												stack pop.
											
												stack push: (stack top childrenNodes at: 2).
												self assert: self topEntity sourceCode equals: '320'.
												self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
												stack pop.
											stack pop.
										stack pop.
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  width: calc(100% - 80px);
  aspect-ratio: 1/2;
  font-size: calc(10px + (56 - 10) * ((100vw - 320px) / (1920 - 320)));
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedCallsWhereEachArgumentHasMultipleValues [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCallsWhereEachArgumentHasMultipleValues 	"

	self parse: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 17.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 17.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background: repeating-linear-gradient(red, orange 50px);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'repeating-linear-gradient(red, orange 50px)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'repeating-linear-gradient'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(red, orange 50px)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'red'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'orange'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '50px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'clip-path'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'polygon'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 16.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '0%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: '100%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 6).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 7).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 8).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 9).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 10).
							self assert: self topEntity sourceCode equals: '100%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 11).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 12).
							self assert: self topEntity sourceCode equals: '60%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 13).
							self assert: self topEntity sourceCode equals: '0%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 14).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 15).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 16).
							self assert: self topEntity sourceCode equals: '40%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div {
  background: repeating-linear-gradient(red, orange 50px);
  clip-path: polygon(50% 0%, 60% 40%, 100% 50%, 60% 60%, 50% 100%, 40% 60%, 0% 50%, 40% 40%);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedCharsetStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCharsetStatements 	"

	self parse: '@charset "utf-8";;'.

	self assert: (fast allWithType: FASTSCSSCharsetStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@charset "utf-8";;'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@charset "utf-8";'.
		self assert: (self topEntity isOfType: FASTSCSSCharsetStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '"utf-8"'.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@charset "utf-8";;'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedChildSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedChildSelectors 	"

	self parse: 'a > b {}
c > d > e {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSChildSelector) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a > b {}
c > d > e {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a > b {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a > b'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a > b'.
				self assert: (self topEntity isOfType: FASTSCSSChildSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'c > d > e {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'c > d > e'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'c > d > e'.
				self assert: (self topEntity isOfType: FASTSCSSChildSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c > d'.
					self assert: (self topEntity isOfType: FASTSCSSChildSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a > b {}
c > d > e {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedClassSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedClassSelectors 	"

	self parse: '.class-a {}
div.class-b, .class-c.class-d {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.class-a {}
div.class-b, .class-c.class-d {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.class-a {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.class-a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.class-a'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'class-a'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'div.class-b, .class-c.class-d {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div.class-b, .class-c.class-d'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div.class-b'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'div'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'class-b'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '.class-c.class-d'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.class-c'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'class-c'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'class-d'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.class-a {}
div.class-b, .class-c.class-d {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedColorLiterals [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedColorLiterals 	"

	self parse: 'a {
  b: #fafd04;
  c: #fafd0401;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSColorValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: #fafd04;
  c: #fafd0401;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: #fafd04;
  c: #fafd0401;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: #fafd04;
  c: #fafd0401;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: #fafd04;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '#fafd04'.
					self assert: (self topEntity isOfType: FASTSCSSColorValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: #fafd0401;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '#fafd0401'.
					self assert: (self topEntity isOfType: FASTSCSSColorValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: #fafd04;
  c: #fafd0401;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedCommentsRightAfterNumbers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedCommentsRightAfterNumbers 	"

	self parse: 'a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSComment) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 7.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 7.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'shape-outside: circle(20em/*=*/at 50% 50%);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'shape-outside'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'circle(20em/*=*/at 50% 50%)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'circle'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(20em/*=*/at 50% 50%)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 5.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '20em'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '/*=*/'.
							self assert: (self topEntity isOfType: FASTSCSSComment).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: 'at'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 5).
							self assert: self topEntity sourceCode equals: '50%'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: '%'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'shape-outside: inset(1em, 1em, 1em, 1em);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'shape-outside'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'inset(1em, 1em, 1em, 1em)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'inset'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(1em, 1em, 1em, 1em)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '1em'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'em'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
	shape-outside: circle(20em/*=*/at 50% 50%);
	shape-outside: inset(1em, 1em, 1em, 1em);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedDeclarationsAtTheTopLevel [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDeclarationsAtTheTopLevel 	"

	self parse: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '--a-variable: -5px;'.
		self assert: (self topEntity isOfType: FASTSCSSDeclaration).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '--a-variable'.
			self assert: (self topEntity isOfType: FASTSCSSPropertyName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '-5px'.
			self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'px'.
				self assert: (self topEntity isOfType: FASTSCSSUnit).
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'a-property: calc(5px + var(--a-variable));'.
		self assert: (self topEntity isOfType: FASTSCSSDeclaration).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a-property'.
			self assert: (self topEntity isOfType: FASTSCSSPropertyName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'calc(5px + var(--a-variable))'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'calc'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(5px + var(--a-variable))'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '5px + var(--a-variable)'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '5px'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'px'.
							self assert: (self topEntity isOfType: FASTSCSSUnit).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'var(--a-variable)'.
						self assert: (self topEntity isOfType: FASTSCSSCallExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'var'.
							self assert: (self topEntity isOfType: FASTSCSSFunctionName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(--a-variable)'.
							self assert: (self topEntity isOfType: FASTSCSSArguments).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '--a-variable'.
								self assert: (self topEntity isOfType: FASTSCSSPlainValue).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '--a-variable: -5px;
a-property: calc(5px + var(--a-variable));;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedDeclarationsWithoutTrailingSemicolons [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDeclarationsWithoutTrailingSemicolons 	"

	self parse: 'a {
  b: c;
  d: e
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: c;
  d: e
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: c;
  d: e
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: c;
  d: e
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: c;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'd: e'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'd'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: c;
  d: e
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedDescendantSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedDescendantSelectors 	"

	self parse: 'a b {}
c d e {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDescendantSelector) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 5.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a b {}
c d e {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a b {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a b'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a b'.
				self assert: (self topEntity isOfType: FASTSCSSDescendantSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'c d e {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'c d e'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'c d e'.
				self assert: (self topEntity isOfType: FASTSCSSDescendantSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c d'.
					self assert: (self topEntity isOfType: FASTSCSSDescendantSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'e'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a b {}
c d e {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedEachStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedEachStatements 	"

	self parse: '@each $size in $sizes {
  .icon-#{$size} {
    font-size: $size;
  }
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSEachStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSInterpolation) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@each $size in $sizes {
  .icon-#{$size} {
    font-size: $size;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@each $size in $sizes {
  .icon-#{$size} {
    font-size: $size;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSEachStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '$sizes'.
			self assert: (self topEntity isOfType: FASTSCSSVariable).
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  .icon-#{$size} {
    font-size: $size;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.icon-#{$size} {
    font-size: $size;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.icon-#{$size}'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.icon-#{$size}'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'icon-#{$size}'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'icon-'.
								self assert: (self topEntity isOfType: FASTSCSSIdentifier).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '#{$size}'.
								self assert: (self topEntity isOfType: FASTSCSSInterpolation).
								
								"Testing value of multivalued relation childrenNodes"
								self assert: self topEntity childrenNodes size equals: 1.
								
									stack push: (stack top childrenNodes at: 1).
									self assert: self topEntity sourceCode equals: '$size'.
									self assert: (self topEntity isOfType: FASTSCSSVariable).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    font-size: $size;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'font-size: $size;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'font-size'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$size'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation value"
		self assert: self topEntity value isNotNil.

			stack push: self topEntity value.
			self assert: self topEntity sourceCode equals: '$size'.
			self assert: (self topEntity isOfType: FASTSCSSVariable).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@each $size in $sizes {
  .icon-#{$size} {
    font-size: $size;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedElseIfStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedElseIfStatements 	"

	self parse: '@mixin triangle($direction) {
  @if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }
};'.

	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 3.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 5.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSElseClause) size equals: 1.
	self assert: (fast allWithType: FASTSCSSElseIfClause) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIfStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 8.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin triangle($direction) {
  @if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin triangle($direction) {
  @if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($direction)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$direction'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$direction'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  @if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSIfStatement).
				
				"Testing value of multivalued relation condition"
				self assert: self topEntity condition size equals: 1.
				
					stack push: (stack top condition at: 1).
					self assert: self topEntity sourceCode equals: '$direction == up'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '$direction'.
						self assert: (self topEntity isOfType: FASTSCSSVariable).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'up'.
						self assert: (self topEntity isOfType: FASTSCSSPlainValue).
						stack pop.
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 4.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '{
    border-bottom-color: $color;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'border-bottom-color: $color;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border-bottom-color'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$color'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top genericChildren at: 2).
					self assert: self topEntity sourceCode equals: '@else if $direction == right {
    border-left-color: $color;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSElseIfClause).
					
					"Testing value of multivalued relation condition"
					self assert: self topEntity condition size equals: 1.
					
						stack push: (stack top condition at: 1).
						self assert: self topEntity sourceCode equals: '$direction == right'.
						self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$direction'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'right'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					
					"Testing value of multivalued relation genericChildren"
					self assert: self topEntity genericChildren size equals: 1.
					
						stack push: (stack top genericChildren at: 1).
						self assert: self topEntity sourceCode equals: '{
    border-left-color: $color;
  }' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTSCSSBlock).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border-left-color: $color;'.
							self assert: (self topEntity isOfType: FASTSCSSDeclaration).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'border-left-color'.
								self assert: (self topEntity isOfType: FASTSCSSPropertyName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$color'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top genericChildren at: 3).
					self assert: self topEntity sourceCode equals: '@else if $direction == down {
    border-top-color: $color;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSElseIfClause).
					
					"Testing value of multivalued relation condition"
					self assert: self topEntity condition size equals: 1.
					
						stack push: (stack top condition at: 1).
						self assert: self topEntity sourceCode equals: '$direction == down'.
						self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$direction'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'down'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					
					"Testing value of multivalued relation genericChildren"
					self assert: self topEntity genericChildren size equals: 1.
					
						stack push: (stack top genericChildren at: 1).
						self assert: self topEntity sourceCode equals: '{
    border-top-color: $color;
  }' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTSCSSBlock).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border-top-color: $color;'.
							self assert: (self topEntity isOfType: FASTSCSSDeclaration).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'border-top-color'.
								self assert: (self topEntity isOfType: FASTSCSSPropertyName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$color'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top genericChildren at: 4).
					self assert: self topEntity sourceCode equals: '@else {
    border-right-color: $color;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSElseClause).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '{
    border-right-color: $color;
  }' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTSCSSBlock).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border-right-color: $color;'.
							self assert: (self topEntity isOfType: FASTSCSSDeclaration).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'border-right-color'.
								self assert: (self topEntity isOfType: FASTSCSSPropertyName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$color'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'triangle'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin triangle($direction) {
  @if $direction == up {
    border-bottom-color: $color;
  } @else if $direction == right {
    border-left-color: $color;
  } @else if $direction == down {
    border-top-color: $color;
  } @else {
    border-right-color: $color;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedElseStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedElseStatements 	"

	self parse: '@mixin theme-colors($light-theme: true) {
  @if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 3.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSElseClause) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIfStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin theme-colors($light-theme: true) {
  @if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin theme-colors($light-theme: true) {
  @if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($light-theme: true)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$light-theme: true'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation default"
				self assert: self topEntity default size equals: 1.
				
					stack push: (stack top default at: 1).
					self assert: self topEntity sourceCode equals: 'true'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$light-theme'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  @if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSIfStatement).
				
				"Testing value of multivalued relation condition"
				self assert: self topEntity condition size equals: 1.
				
					stack push: (stack top condition at: 1).
					self assert: self topEntity sourceCode equals: '$light-theme'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 2.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '{
    color: $light-text;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'color: $light-text;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'color'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$light-text'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top genericChildren at: 2).
					self assert: self topEntity sourceCode equals: '@else {
    color: $dark-text;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSElseClause).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '{
    color: $dark-text;
  }' withPlatformLineEndings.
						self assert: (self topEntity isOfType: FASTSCSSBlock).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'color: $dark-text;'.
							self assert: (self topEntity isOfType: FASTSCSSDeclaration).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'color'.
								self assert: (self topEntity isOfType: FASTSCSSPropertyName).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$dark-text'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'theme-colors'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin theme-colors($light-theme: true) {
  @if $light-theme {
    color: $light-text;
  } @else {
    color: $dark-text;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedExtendStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedExtendStatements 	"

	self parse: '.foo {
  @extend red;
  .bar {
    @extend blue;
    @extend .green;
  }
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSExtendStatement) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.foo {
  @extend red;
  .bar {
    @extend blue;
    @extend .green;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.foo {
  @extend red;
  .bar {
    @extend blue;
    @extend .green;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.foo'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.foo'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'foo'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  @extend red;
  .bar {
    @extend blue;
    @extend .green;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@extend red;'.
				self assert: (self topEntity isOfType: FASTSCSSExtendStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'red'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '.bar {
    @extend blue;
    @extend .green;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.bar'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.bar'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'bar'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    @extend blue;
    @extend .green;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '@extend blue;'.
						self assert: (self topEntity isOfType: FASTSCSSExtendStatement).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'blue'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '@extend .green;'.
						self assert: (self topEntity isOfType: FASTSCSSExtendStatement).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.green'.
							self assert: (self topEntity isOfType: FASTSCSSClassSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'green'.
								self assert: (self topEntity isOfType: FASTSCSSClassName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.foo {
  @extend red;
  .bar {
    @extend blue;
    @extend .green;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedForStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedForStatements 	"

	self parse: '@for $i from 1 through 3 {
  background-color: lighten($base-color, $i * 5%);
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSForStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@for $i from 1 through 3 {
  background-color: lighten($base-color, $i * 5%);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@for $i from 1 through 3 {
  background-color: lighten($base-color, $i * 5%);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSForStatement).
		
		"Testing value of multivalued relation from"
		self assert: self topEntity from size equals: 1.
		
			stack push: (stack top from at: 1).
			self assert: self topEntity sourceCode equals: '1'.
			self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
			stack pop.
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '$i'.
			self assert: (self topEntity isOfType: FASTSCSSVariable).
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  background-color: lighten($base-color, $i * 5%);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background-color: lighten($base-color, $i * 5%);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background-color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'lighten($base-color, $i * 5%)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'lighten'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '($base-color, $i * 5%)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$base-color'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$i * 5%'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '$i'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '5%'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '%'.
									self assert: (self topEntity isOfType: FASTSCSSUnit).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of multivalued relation through"
		self assert: self topEntity through size equals: 1.
		
			stack push: (stack top through at: 1).
			self assert: self topEntity sourceCode equals: '3'.
			self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@for $i from 1 through 3 {
  background-color: lighten($base-color, $i * 5%);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedForwardStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedForwardStatements 	"

	self parse: '@forward ''custom.css'';;'.

	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSForwardStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@forward ''custom.css'';;'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@forward ''custom.css'';'.
		self assert: (self topEntity isOfType: FASTSCSSForwardStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '''custom.css'''.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@forward ''custom.css'';;'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedFunctionCalls [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFunctionCalls 	"

	self parse: 'a {
  color: rgba(0, 255, 0, 0.5);
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFloatValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  color: rgba(0, 255, 0, 0.5);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  color: rgba(0, 255, 0, 0.5);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  color: rgba(0, 255, 0, 0.5);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'color: rgba(0, 255, 0, 0.5);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'rgba(0, 255, 0, 0.5)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'rgba'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(0, 255, 0, 0.5)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 4.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '255'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '0'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							stack pop.
						
							stack push: (stack top childrenNodes at: 4).
							self assert: self topEntity sourceCode equals: '0.5'.
							self assert: (self topEntity isOfType: FASTSCSSFloatValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  color: rgba(0, 255, 0, 0.5);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedFunctions [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedFunctions 	"

	self parse: '@function pow($base, $exponent) {
  $result: 1;
  @for $_ from 1 through $exponent {
    $result: $result * $base;
  }
  @return $result;
}

.sidebar {
  float: left;
  margin-left: pow(4, 3) * 1px;
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 3.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSForStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 5.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 2.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSReturnStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 7.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@function pow($base, $exponent) {
  $result: 1;
  @for $_ from 1 through $exponent {
    $result: $result * $base;
  }
  @return $result;
}

.sidebar {
  float: left;
  margin-left: pow(4, 3) * 1px;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@function pow($base, $exponent) {
  $result: 1;
  @for $_ from 1 through $exponent {
    $result: $result * $base;
  }
  @return $result;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSFunctionStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($base, $exponent)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$base'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$base'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '$exponent'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$exponent'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  $result: 1;
  @for $_ from 1 through $exponent {
    $result: $result * $base;
  }
  @return $result;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$result: 1;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '$result'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '1'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '@for $_ from 1 through $exponent {
    $result: $result * $base;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSForStatement).
				
				"Testing value of multivalued relation from"
				self assert: self topEntity from size equals: 1.
				
					stack push: (stack top from at: 1).
					self assert: self topEntity sourceCode equals: '1'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 2.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$_'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				
					stack push: (stack top genericChildren at: 2).
					self assert: self topEntity sourceCode equals: '{
    $result: $result * $base;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '$result: $result * $base;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$result'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$result * $base'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '$result'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$base'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
				"Testing value of multivalued relation through"
				self assert: self topEntity through size equals: 1.
				
					stack push: (stack top through at: 1).
					self assert: self topEntity sourceCode equals: '$exponent'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '@return $result;'.
				self assert: (self topEntity isOfType: FASTSCSSReturnStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '$result'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'pow'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.sidebar {
  float: left;
  margin-left: pow(4, 3) * 1px;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.sidebar'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.sidebar'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'sidebar'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  float: left;
  margin-left: pow(4, 3) * 1px;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'float: left;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'float'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'left'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'margin-left: pow(4, 3) * 1px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin-left'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'pow(4, 3) * 1px'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'pow(4, 3)'.
						self assert: (self topEntity isOfType: FASTSCSSCallExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'pow'.
							self assert: (self topEntity isOfType: FASTSCSSFunctionName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(4, 3)'.
							self assert: (self topEntity isOfType: FASTSCSSArguments).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '4'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '3'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '1px'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'px'.
							self assert: (self topEntity isOfType: FASTSCSSUnit).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@function pow($base, $exponent) {
  $result: 1;
  @for $_ from 1 through $exponent {
    $result: $result * $base;
  }
  @return $result;
}

.sidebar {
  float: left;
  margin-left: pow(4, 3) * 1px;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedIdSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIdSelectors 	"

	self parse: '#some-id, a#another-id {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIdSelector) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '#some-id, a#another-id {};'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '#some-id, a#another-id {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '#some-id, a#another-id'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '#some-id'.
				self assert: (self topEntity isOfType: FASTSCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-id'.
					self assert: (self topEntity isOfType: FASTSCSSIdName).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'a#another-id'.
				self assert: (self topEntity isOfType: FASTSCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'another-id'.
					self assert: (self topEntity isOfType: FASTSCSSIdName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '#some-id, a#another-id {};'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedIfStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIfStatements 	"

	self parse: '@mixin avatar($size, $circle: false) {
  width: $size;
  height: $size;

  @if $circle {
    border-radius: $size / 2;
  }
};'.

	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIfStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 2.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin avatar($size, $circle: false) {
  width: $size;
  height: $size;

  @if $circle {
    border-radius: $size / 2;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin avatar($size, $circle: false) {
  width: $size;
  height: $size;

  @if $circle {
    border-radius: $size / 2;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($size, $circle: false)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$size'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$size'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '$circle: false'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation default"
				self assert: self topEntity default size equals: 1.
				
					stack push: (stack top default at: 1).
					self assert: self topEntity sourceCode equals: 'false'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$circle'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  width: $size;
  height: $size;

  @if $circle {
    border-radius: $size / 2;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'width: $size;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'width'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '$size'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'height: $size;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'height'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '$size'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '@if $circle {
    border-radius: $size / 2;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSIfStatement).
				
				"Testing value of multivalued relation condition"
				self assert: self topEntity condition size equals: 1.
				
					stack push: (stack top condition at: 1).
					self assert: self topEntity sourceCode equals: '$circle'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '{
    border-radius: $size / 2;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'border-radius: $size / 2;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'border-radius'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$size / 2'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '$size'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '2'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'avatar'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin avatar($size, $circle: false) {
  width: $size;
  height: $size;

  @if $circle {
    border-radius: $size / 2;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedImportStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedImportStatements 	"

	self parse: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 3.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSImportStatement) size equals: 5.
	self assert: (fast allWithType: FASTSCSSKeywordQuery) size equals: 3.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 5.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 6.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@import url("fineprint.css") print;'.
		self assert: (self topEntity isOfType: FASTSCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("fineprint.css")'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("fineprint.css")'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"fineprint.css"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'print'.
			self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@import url("bluish.css") speech;'.
		self assert: (self topEntity isOfType: FASTSCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("bluish.css")'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("bluish.css")'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"bluish.css"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'speech'.
			self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@import ''custom.css'';'.
		self assert: (self topEntity isOfType: FASTSCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '''custom.css'''.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@import url("chrome://communicator/skin/");'.
		self assert: (self topEntity isOfType: FASTSCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url("chrome://communicator/skin/")'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '("chrome://communicator/skin/")'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"chrome://communicator/skin/"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '@import "common.css" screen;'.
		self assert: (self topEntity isOfType: FASTSCSSImportStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '"common.css"'.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'screen'.
			self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@import url("fineprint.css") print;
@import url("bluish.css") speech;
@import ''custom.css'';
@import url("chrome://communicator/skin/");
@import "common.css" screen;;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedImportantDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedImportantDeclarations 	"

	self parse: 'a {
  b: c !important;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSImportant) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: c !important;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: c !important;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: c !important;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: c !important;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '!important'.
					self assert: (self topEntity isOfType: FASTSCSSImportant).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: c !important;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedIncludeStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedIncludeStatements 	"

	self parse: '.foo {
  @include bar;
  @include transform(50px, $float: left);
};'.

	self assert: (fast allWithType: FASTSCSSArgument) size equals: 2.
	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIncludeStatement) size equals: 2.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.foo {
  @include bar;
  @include transform(50px, $float: left);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.foo {
  @include bar;
  @include transform(50px, $float: left);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.foo'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.foo'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'foo'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  @include bar;
  @include transform(50px, $float: left);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@include bar;'.
				self assert: (self topEntity isOfType: FASTSCSSIncludeStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'bar'.
					self assert: (self topEntity isOfType: FASTSCSSIdentifier).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '@include transform(50px, $float: left);'.
				self assert: (self topEntity isOfType: FASTSCSSIncludeStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'transform'.
					self assert: (self topEntity isOfType: FASTSCSSIdentifier).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(50px, $float: left)'.
					self assert: (self topEntity isOfType: FASTSCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '50px'.
						self assert: (self topEntity isOfType: FASTSCSSArgument).
						
						"Testing value of multivalued relation value"
						self assert: self topEntity value size equals: 1.
						
							stack push: (stack top value at: 1).
							self assert: self topEntity sourceCode equals: '50px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '$float: left'.
						self assert: (self topEntity isOfType: FASTSCSSArgument).
						
						"Testing value of monovalue relation nameRef"
						self assert: self topEntity nameRef isNotNil.

							stack push: self topEntity nameRef.
							self assert: self topEntity sourceCode equals: '$float'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						
						"Testing value of multivalued relation value"
						self assert: self topEntity value size equals: 1.
						
							stack push: (stack top value at: 1).
							self assert: self topEntity sourceCode equals: 'left'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.foo {
  @include bar;
  @include transform(50px, $float: left);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedInterpolation [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedInterpolation 	"

	self parse: '.icon-#{$name} {
  position: absolute;
  #{$top-or-bottom}: 0;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSInterpolation) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '.icon-#{$name} {
  position: absolute;
  #{$top-or-bottom}: 0;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '.icon-#{$name} {
  position: absolute;
  #{$top-or-bottom}: 0;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.icon-#{$name}'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.icon-#{$name}'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'icon-#{$name}'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'icon-'.
						self assert: (self topEntity isOfType: FASTSCSSIdentifier).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '#{$name}'.
						self assert: (self topEntity isOfType: FASTSCSSInterpolation).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$name'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  position: absolute;
  #{$top-or-bottom}: 0;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'position: absolute;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'position'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'absolute'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '#{$top-or-bottom}: 0;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '#{$top-or-bottom}'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '#{$top-or-bottom}'.
						self assert: (self topEntity isOfType: FASTSCSSInterpolation).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$top-or-bottom'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '.icon-#{$name} {
  position: absolute;
  #{$top-or-bottom}: 0;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedKeyframesStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedKeyframesStatements 	"

	self parse: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 3.
	self assert: (fast allWithType: FASTSCSSComment) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 3.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFrom) size equals: 1.
	self assert: (fast allWithType: FASTSCSSImportant) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 4.
	self assert: (fast allWithType: FASTSCSSKeyframeBlock) size equals: 3.
	self assert: (fast allWithType: FASTSCSSKeyframeBlockList) size equals: 1.
	self assert: (fast allWithType: FASTSCSSKeyframesName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSKeyframesStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTo) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 4.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSKeyframesStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'important1'.
			self assert: (self topEntity isOfType: FASTSCSSKeyframesName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSKeyframeBlockList).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'from { margin-top: 50px; }'.
				self assert: (self topEntity isOfType: FASTSCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'from'.
					self assert: (self topEntity isOfType: FASTSCSSFrom).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 50px; }'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 50px;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '50px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '50%  { margin-top: 150px !important; }'.
				self assert: (self topEntity isOfType: FASTSCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '50%'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 150px !important; }'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 150px !important;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 3.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '150px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 3).
							self assert: self topEntity sourceCode equals: '!important'.
							self assert: (self topEntity isOfType: FASTSCSSImportant).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '/* ignored */'.
				self assert: (self topEntity isOfType: FASTSCSSComment).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'to   { margin-top: 100px; }'.
				self assert: (self topEntity isOfType: FASTSCSSKeyframeBlock).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'to'.
					self assert: (self topEntity isOfType: FASTSCSSTo).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ margin-top: 100px; }'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'margin-top: 100px;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'margin-top'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '100px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@keyframes important1 {
  from { margin-top: 50px; }
  50%  { margin-top: 150px !important; } /* ignored */
  to   { margin-top: 100px; }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedLoggingStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedLoggingStatements 	"

	self parse: '@mixin foo {
  @debug "debug";
  @warn "warn";
  @error "error";
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDebugStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSErrorStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSWarnStatement) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin foo {
  @debug "debug";
  @warn "warn";
  @error "error";
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin foo {
  @debug "debug";
  @warn "warn";
  @error "error";
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
  @debug "debug";
  @warn "warn";
  @error "error";
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@debug "debug";'.
				self assert: (self topEntity isOfType: FASTSCSSDebugStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"debug"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '@warn "warn";'.
				self assert: (self topEntity isOfType: FASTSCSSWarnStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"warn"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '@error "error";'.
				self assert: (self topEntity isOfType: FASTSCSSErrorStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '"error"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'foo'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin foo {
  @debug "debug";
  @warn "warn";
  @error "error";
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedMediaStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMediaStatements 	"

	self parse: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {};'.

	self assert: (fast allWithType: FASTSCSSBinaryQuery) size equals: 4.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFeatureName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSFeatureQuery) size equals: 4.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSKeywordQuery) size equals: 5.
	self assert: (fast allWithType: FASTSCSSMediaStatement) size equals: 4.
	self assert: (fast allWithType: FASTSCSSParenthesizedQuery) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnaryQuery) size equals: 2.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 5.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}'.
		self assert: (self topEntity isOfType: FASTSCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'screen and (min-width: 30em) and (orientation: landscape)'.
			self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'screen and (min-width: 30em)'.
				self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'screen'.
					self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(min-width: 30em)'.
					self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'min-width'.
						self assert: (self topEntity isOfType: FASTSCSSFeatureName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '30em'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: 'em'.
							self assert: (self topEntity isOfType: FASTSCSSUnit).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(orientation: landscape)'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'orientation'.
					self assert: (self topEntity isOfType: FASTSCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'landscape'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@media (min-height: 680px), screen and (orientation: portrait) {}'.
		self assert: (self topEntity isOfType: FASTSCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(min-height: 680px)'.
			self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'min-height'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '680px'.
				self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'px'.
					self assert: (self topEntity isOfType: FASTSCSSUnit).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'screen and (orientation: portrait)'.
			self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'screen'.
				self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(orientation: portrait)'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'orientation'.
					self assert: (self topEntity isOfType: FASTSCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'portrait'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@media not all and (monochrome) {}'.
		self assert: (self topEntity isOfType: FASTSCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not all and (monochrome)'.
			self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'not all'.
				self assert: (self topEntity isOfType: FASTSCSSUnaryQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'all'.
					self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(monochrome)'.
				self assert: (self topEntity isOfType: FASTSCSSParenthesizedQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'monochrome'.
					self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@media only screen {}'.
		self assert: (self topEntity isOfType: FASTSCSSMediaStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'only screen'.
			self assert: (self topEntity isOfType: FASTSCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'screen'.
				self assert: (self topEntity isOfType: FASTSCSSKeywordQuery).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@media screen and (min-width: 30em) and (orientation: landscape) {}
@media (min-height: 680px), screen and (orientation: portrait) {}
@media not all and (monochrome) {}
@media only screen {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedMixinsWithArguments [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMixinsWithArguments 	"

	self parse: '@mixin replace-text($image, $color: red) {
  text-align: left;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 2.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin replace-text($image, $color: red) {
  text-align: left;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin replace-text($image, $color: red) {
  text-align: left;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($image, $color: red)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$image'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$image'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '$color: red'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation default"
				self assert: self topEntity default size equals: 1.
				
					stack push: (stack top default at: 1).
					self assert: self topEntity sourceCode equals: 'red'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$color'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  text-align: left;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'text-align: left;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'text-align'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'left'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'replace-text'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin replace-text($image, $color: red) {
  text-align: left;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedMixinsWithAtroot [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMixinsWithAtroot 	"

	self parse: '@mixin unify-parent($child) {
  @at-root #{selector.unify(&, $child)} {
    @content;
  }
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAtKeyword) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAtRootStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAtRule) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSInterpolation) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSNestingSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin unify-parent($child) {
  @at-root #{selector.unify(&, $child)} {
    @content;
  }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin unify-parent($child) {
  @at-root #{selector.unify(&, $child)} {
    @content;
  }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($child)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$child'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$child'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
  @at-root #{selector.unify(&, $child)} {
    @content;
  }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@at-root #{selector.unify(&, $child)} {
    @content;
  }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSAtRootStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '#{selector.unify(&, $child)}'.
					self assert: (self topEntity isOfType: FASTSCSSInterpolation).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'selector.unify(&, $child)'.
						self assert: (self topEntity isOfType: FASTSCSSCallExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'selector.unify'.
							self assert: (self topEntity isOfType: FASTSCSSFunctionName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '(&, $child)'.
							self assert: (self topEntity isOfType: FASTSCSSArguments).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '&'.
								self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '$child'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
    @content;
  }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '@content;'.
						self assert: (self topEntity isOfType: FASTSCSSAtRule).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '@content'.
							self assert: (self topEntity isOfType: FASTSCSSAtKeyword).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'unify-parent'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin unify-parent($child) {
  @at-root #{selector.unify(&, $child)} {
    @content;
  }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedMixinsWithInterpolationsAndContent [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMixinsWithInterpolationsAndContent 	"

	self parse: '@mixin media($queryString) {
    @media #{$queryString} {
      @content;
    }
};'.

	self assert: (fast allWithType: FASTSCSSAtKeyword) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAtRule) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSInterpolation) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMediaStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameter) size equals: 1.
	self assert: (fast allWithType: FASTSCSSParameters) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin media($queryString) {
    @media #{$queryString} {
      @content;
    }
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin media($queryString) {
    @media #{$queryString} {
      @content;
    }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 2.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '($queryString)'.
			self assert: (self topEntity isOfType: FASTSCSSParameters).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$queryString'.
				self assert: (self topEntity isOfType: FASTSCSSParameter).
				
				"Testing value of multivalued relation genericChildren"
				self assert: self topEntity genericChildren size equals: 1.
				
					stack push: (stack top genericChildren at: 1).
					self assert: self topEntity sourceCode equals: '$queryString'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top genericChildren at: 2).
			self assert: self topEntity sourceCode equals: '{
    @media #{$queryString} {
      @content;
    }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '@media #{$queryString} {
      @content;
    }' withPlatformLineEndings.
				self assert: (self topEntity isOfType: FASTSCSSMediaStatement).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '#{$queryString}'.
					self assert: (self topEntity isOfType: FASTSCSSInterpolation).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '$queryString'.
						self assert: (self topEntity isOfType: FASTSCSSVariable).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{
      @content;
    }' withPlatformLineEndings.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '@content;'.
						self assert: (self topEntity isOfType: FASTSCSSAtRule).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '@content'.
							self assert: (self topEntity isOfType: FASTSCSSAtKeyword).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'media'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin media($queryString) {
    @media #{$queryString} {
      @content;
    }
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedMixinsWithNoArguments [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedMixinsWithNoArguments 	"

	self parse: '@mixin red {
  color: red;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSMixinStatement) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@mixin red {
  color: red;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@mixin red {
  color: red;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSMixinStatement).
		
		"Testing value of multivalued relation genericChildren"
		self assert: self topEntity genericChildren size equals: 1.
		
			stack push: (stack top genericChildren at: 1).
			self assert: self topEntity sourceCode equals: '{
  color: red;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'color: red;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'red'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
		"Testing value of monovalue relation nameRef"
		self assert: self topEntity nameRef isNotNil.

			stack push: self topEntity nameRef.
			self assert: self topEntity sourceCode equals: 'red'.
			self assert: (self topEntity isOfType: FASTSCSSIdentifier).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@mixin red {
  color: red;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedNamespaceStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNamespaceStatements 	"

	self parse: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 4.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 4.
	self assert: (fast allWithType: FASTSCSSComment) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSNamespaceName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSNamespaceStatement) size equals: 6.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 4.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 9.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '/* Default namespace */'.
		self assert: (self topEntity isOfType: FASTSCSSComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@namespace url(XML-namespace-URL);'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url(XML-namespace-URL)'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(XML-namespace-URL)'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@namespace "XML-namespace-URL";'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '"XML-namespace-URL"'.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@namespace url(http://www.w3.org/1999/xhtml);'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'url(http://www.w3.org/1999/xhtml)'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(http://www.w3.org/1999/xhtml)'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'http://www.w3.org/1999/xhtml'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: '@namespace svg url(http://www.w3.org/2000/svg);'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'svg'.
			self assert: (self topEntity isOfType: FASTSCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'url(http://www.w3.org/2000/svg)'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(http://www.w3.org/2000/svg)'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'http://www.w3.org/2000/svg'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 6).
		self assert: self topEntity sourceCode equals: '/* Prefixed namespace */'.
		self assert: (self topEntity isOfType: FASTSCSSComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 7).
		self assert: self topEntity sourceCode equals: '@namespace prefix url(XML-namespace-URL);'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'prefix'.
			self assert: (self topEntity isOfType: FASTSCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'url(XML-namespace-URL)'.
			self assert: (self topEntity isOfType: FASTSCSSCallExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'url'.
				self assert: (self topEntity isOfType: FASTSCSSFunctionName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(XML-namespace-URL)'.
				self assert: (self topEntity isOfType: FASTSCSSArguments).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'XML-namespace-URL'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 8).
		self assert: self topEntity sourceCode equals: '@namespace prefix "XML-namespace-URL";'.
		self assert: (self topEntity isOfType: FASTSCSSNamespaceStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'prefix'.
			self assert: (self topEntity isOfType: FASTSCSSNamespaceName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '"XML-namespace-URL"'.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 9).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '/* Default namespace */
@namespace url(XML-namespace-URL);
@namespace "XML-namespace-URL";
@namespace url(http://www.w3.org/1999/xhtml);
@namespace svg url(http://www.w3.org/2000/svg);

/* Prefixed namespace */
@namespace prefix url(XML-namespace-URL);
@namespace prefix "XML-namespace-URL";;' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedNestingSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNestingSelectors 	"

	self parse: 'a {
  &.b {}
  & c {}
  & > d {}
  &e {}
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 5.
	self assert: (fast allWithType: FASTSCSSChildSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTSCSSDescendantSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSNestingSelector) size equals: 4.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 5.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 5.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  &.b {}
  & c {}
  & > d {}
  &e {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  &.b {}
  & c {}
  & > d {}
  &e {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  &.b {}
  & c {}
  & > d {}
  &e {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '&.b {}'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '&.b'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&.b'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '& c {}'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '& c'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '& c'.
						self assert: (self topEntity isOfType: FASTSCSSDescendantSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'c'.
							self assert: (self topEntity isOfType: FASTSCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: '& > d {}'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '& > d'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '& > d'.
						self assert: (self topEntity isOfType: FASTSCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'd'.
							self assert: (self topEntity isOfType: FASTSCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: '&e {}'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '&e'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '&e'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'e'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  &.b {}
  & c {}
  & > d {}
  &e {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedNumbers [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedNumbers 	"

	self parse: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 6.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFloatValue) size equals: 4.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 6.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 6.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: 0.5%;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0.5%'.
					self assert: (self topEntity isOfType: FASTSCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: 5em;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '5em'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'em'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'margin: 10E3px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '10E3px'.
					self assert: (self topEntity isOfType: FASTSCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'margin: -456.8px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-456.8px'.
					self assert: (self topEntity isOfType: FASTSCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 5).
				self assert: self topEntity sourceCode equals: 'margin: -5px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-5px'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 6).
				self assert: self topEntity sourceCode equals: 'margin: -0.0px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '-0.0px'.
					self assert: (self topEntity isOfType: FASTSCSSFloatValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: 0.5%;
  c: 5em;
  margin: 10E3px;
  margin: -456.8px;
  margin: -5px;
  margin: -0.0px;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedOperators [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedOperators 	"

	self parse: 'article[role="main"] {
  width: 600px / 960px * 100%;
};'.

	self assert: (fast allWithType: FASTSCSSAttributeName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAttributeSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 3.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'article[role="main"] {
  width: 600px / 960px * 100%;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'article[role="main"] {
  width: 600px / 960px * 100%;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'article[role="main"]'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'article[role="main"]'.
				self assert: (self topEntity isOfType: FASTSCSSAttributeSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'article'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'role'.
					self assert: (self topEntity isOfType: FASTSCSSAttributeName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '"main"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  width: 600px / 960px * 100%;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'width: 600px / 960px * 100%;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'width'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '600px / 960px * 100%'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '600px / 960px'.
						self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '600px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '960px'.
							self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
							
							"Testing value of monovalue relation childrenNode"
							self assert: self topEntity childrenNode isNotNil.

								stack push: self topEntity childrenNode.
								self assert: self topEntity sourceCode equals: 'px'.
								self assert: (self topEntity isOfType: FASTSCSSUnit).
								stack pop.
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '100%'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						
						"Testing value of monovalue relation childrenNode"
						self assert: self topEntity childrenNode isNotNil.

							stack push: self topEntity childrenNode.
							self assert: self topEntity sourceCode equals: '%'.
							self assert: (self topEntity isOfType: FASTSCSSUnit).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'article[role="main"] {
  width: 600px / 960px * 100%;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedOtherAtstatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedOtherAtstatements 	"

	self parse: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 4.
	self assert: (fast allWithType: FASTSCSSAtKeyword) size equals: 1.
	self assert: (fast allWithType: FASTSCSSAtRule) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 4.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 5.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSAtRule).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '@font-face'.
			self assert: (self topEntity isOfType: FASTSCSSAtKeyword).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'font-family: "Open Sans";'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'font-family'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '"Open Sans"'.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'src: url("/a") format("woff2"), url("/b/c") format("woff");'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 5.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'src'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'url("/a")'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'url'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("/a")'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"/a"'.
							self assert: (self topEntity isOfType: FASTSCSSStringValue).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: 'format("woff2")'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'format'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("woff2")'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"woff2"'.
							self assert: (self topEntity isOfType: FASTSCSSStringValue).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 4).
					self assert: self topEntity sourceCode equals: 'url("/b/c")'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'url'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("/b/c")'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"/b/c"'.
							self assert: (self topEntity isOfType: FASTSCSSStringValue).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 5).
					self assert: self topEntity sourceCode equals: 'format("woff")'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'format'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '("woff")'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '"woff"'.
							self assert: (self topEntity isOfType: FASTSCSSStringValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@font-face {
  font-family: "Open Sans";
  src: url("/a") format("woff2"), url("/b/c") format("woff");
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedParentSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedParentSelectors 	"

	self parse: 'html {
  .foo & {}
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDescendantSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSNestingSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'html {
  .foo & {}
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'html {
  .foo & {}
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'html'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'html'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  .foo & {}
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.foo & {}'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.foo &'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.foo &'.
						self assert: (self topEntity isOfType: FASTSCSSDescendantSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '.foo'.
							self assert: (self topEntity isOfType: FASTSCSSClassSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'foo'.
								self assert: (self topEntity isOfType: FASTSCSSClassName).
								stack pop.
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '&'.
							self assert: (self topEntity isOfType: FASTSCSSNestingSelector).
							stack pop.
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{}'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'html {
  .foo & {}
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedPlaceholders [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPlaceholders 	"

	self parse: '%bar {
  width: 100%;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdentifier) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlaceholder) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '%bar {
  width: 100%;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '%bar {
  width: 100%;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '%bar'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '%bar'.
				self assert: (self topEntity isOfType: FASTSCSSPlaceholder).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: 'bar'.
					self assert: (self topEntity isOfType: FASTSCSSIdentifier).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  width: 100%;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'width: 100%;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'width'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '100%'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '%bar {
  width: 100%;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedPseudoclassSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPseudoclassSelectors 	"

	self parse: 'a:hover {}
:nth-child(2) {};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPseudoClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a:hover {}
:nth-child(2) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a:hover {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a:hover'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a:hover'.
				self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'hover'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ':nth-child(2) {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: ':nth-child(2)'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: ':nth-child(2)'.
				self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'nth-child'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '(2)'.
					self assert: (self topEntity isOfType: FASTSCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '2'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a:hover {}
:nth-child(2) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedPseudoelementSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedPseudoelementSelectors 	"

	self parse: 'a::first-line {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPseudoElementSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a::first-line {};'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a::first-line {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a::first-line'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a::first-line'.
				self assert: (self topEntity isOfType: FASTSCSSPseudoElementSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'first-line'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a::first-line {};'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedRuleSets [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedRuleSets 	"

	self parse: '#some-id {
  some-property: 5px;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIdSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '#some-id {
  some-property: 5px;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '#some-id {
  some-property: 5px;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '#some-id'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '#some-id'.
				self assert: (self topEntity isOfType: FASTSCSSIdSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-id'.
					self assert: (self topEntity isOfType: FASTSCSSIdName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  some-property: 5px;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'some-property: 5px;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'some-property'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '5px'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: 'px'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '#some-id {
  some-property: 5px;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedSiblingSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSiblingSelectors 	"

	self parse: 'a.b ~ c.d {}
.e.f + .g.h {};'.

	self assert: (fast allWithType: FASTSCSSAdjacentSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 6.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 6.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSiblingSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a.b ~ c.d {}
.e.f + .g.h {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a.b ~ c.d {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a.b ~ c.d'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a.b ~ c.d'.
				self assert: (self topEntity isOfType: FASTSCSSSiblingSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a.b'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'a'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'b'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'c.d'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'd'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.e.f + .g.h {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.e.f + .g.h'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.e.f + .g.h'.
				self assert: (self topEntity isOfType: FASTSCSSAdjacentSiblingSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.e.f'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.e'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'e'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'f'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '.g.h'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '.g'.
						self assert: (self topEntity isOfType: FASTSCSSClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'g'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: 'h'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a.b ~ c.d {}
.e.f + .g.h {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedSinglelineComments [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSinglelineComments 	"

	self parse: '// https://awardwinningfjords.com/2010/04/09/example-scss-sassy-css-file.html

html {
  background: url(https://google.com);
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSJsComment) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '// https://awardwinningfjords.com/2010/04/09/example-scss-sassy-css-file.html

html {
  background: url(https://google.com);
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '// https://awardwinningfjords.com/2010/04/09/example-scss-sassy-css-file.html'.
		self assert: (self topEntity isOfType: FASTSCSSJsComment).
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'html {
  background: url(https://google.com);
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'html'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'html'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  background: url(https://google.com);
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background: url(https://google.com);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'url(https://google.com)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'url'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(https://google.com)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'https://google.com'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '// https://awardwinningfjords.com/2010/04/09/example-scss-sassy-css-file.html

html {
  background: url(https://google.com);
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedSpacesAfterColonsInPropertyDeclarations [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSpacesAfterColonsInPropertyDeclarations 	"

	self parse: 'div {
  margin      : 0;
  padding     : 0;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div {
  margin      : 0;
  padding     : 0;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div {
  margin      : 0;
  padding     : 0;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  margin      : 0;
  padding     : 0;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'margin      : 0;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'margin'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'padding     : 0;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'padding'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '0'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div {
  margin      : 0;
  padding     : 0;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedStrings [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedStrings 	"

	self parse: 'a {
  b: '''';
  c: ''\''hi\'''';
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: '''';
  c: ''\''hi\'''';
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: '''';
  c: ''\''hi\'''';
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: '''';
  c: ''\''hi\'''';
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: '''';'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: ''''''.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'c: ''\''hi\'''';'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'c'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '''\''hi\'''''.
					self assert: (self topEntity isOfType: FASTSCSSStringValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: '''';
  c: ''\''hi\'''';
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedSupportsStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedSupportsStatements 	"

	self parse: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBinaryQuery) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 5.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFeatureName) size equals: 5.
	self assert: (fast allWithType: FASTSCSSFeatureQuery) size equals: 5.
	self assert: (fast allWithType: FASTSCSSParenthesizedQuery) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 6.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPseudoClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectorQuery) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSupportsStatement) size equals: 4.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 3.
	self assert: (fast allWithType: FASTSCSSUnaryQuery) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 5.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(animation-name: test)'.
			self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'animation-name'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'test'.
				self assert: (self topEntity isOfType: FASTSCSSPlainValue).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  div { animation-name: test; }
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div { animation-name: test; }'.
				self assert: (self topEntity isOfType: FASTSCSSRuleSet).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'div'.
					self assert: (self topEntity isOfType: FASTSCSSSelectors).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'div'.
						self assert: (self topEntity isOfType: FASTSCSSTagName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '{ animation-name: test; }'.
					self assert: (self topEntity isOfType: FASTSCSSBlock).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'animation-name: test;'.
						self assert: (self topEntity isOfType: FASTSCSSDeclaration).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'animation-name'.
							self assert: (self topEntity isOfType: FASTSCSSPropertyName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'test'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}'.
		self assert: (self topEntity isOfType: FASTSCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '(transform-style: preserve) or (-moz-transform-style: preserve)'.
			self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '(transform-style: preserve)'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'transform-style'.
					self assert: (self topEntity isOfType: FASTSCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'preserve'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '(-moz-transform-style: preserve)'.
				self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '-moz-transform-style'.
					self assert: (self topEntity isOfType: FASTSCSSFeatureName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'preserve'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: '@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}'.
		self assert: (self topEntity isOfType: FASTSCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not ((text-align-last: justify) or (-moz-text-align-last: justify))'.
			self assert: (self topEntity isOfType: FASTSCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: '((text-align-last: justify) or (-moz-text-align-last: justify))'.
				self assert: (self topEntity isOfType: FASTSCSSParenthesizedQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: '(text-align-last: justify) or (-moz-text-align-last: justify)'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryQuery).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '(text-align-last: justify)'.
						self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'text-align-last'.
							self assert: (self topEntity isOfType: FASTSCSSFeatureName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'justify'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(-moz-text-align-last: justify)'.
						self assert: (self topEntity isOfType: FASTSCSSFeatureQuery).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '-moz-text-align-last'.
							self assert: (self topEntity isOfType: FASTSCSSFeatureName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'justify'.
							self assert: (self topEntity isOfType: FASTSCSSPlainValue).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 4).
		self assert: self topEntity sourceCode equals: '@supports not selector(:matches(a, b)) {}'.
		self assert: (self topEntity isOfType: FASTSCSSSupportsStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'not selector(:matches(a, b))'.
			self assert: (self topEntity isOfType: FASTSCSSUnaryQuery).
			
			"Testing value of monovalue relation childrenNode"
			self assert: self topEntity childrenNode isNotNil.

				stack push: self topEntity childrenNode.
				self assert: self topEntity sourceCode equals: 'selector(:matches(a, b))'.
				self assert: (self topEntity isOfType: FASTSCSSSelectorQuery).
				
				"Testing value of monovalue relation childrenNode"
				self assert: self topEntity childrenNode isNotNil.

					stack push: self topEntity childrenNode.
					self assert: self topEntity sourceCode equals: ':matches(a, b)'.
					self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'matches'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '(a, b)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'a'.
							self assert: (self topEntity isOfType: FASTSCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: 'b'.
							self assert: (self topEntity isOfType: FASTSCSSTagName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 5).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@supports (animation-name: test) {
  div { animation-name: test; }
}
@supports (transform-style: preserve) or (-moz-transform-style: preserve) {}
@supports not ((text-align-last: justify) or (-moz-text-align-last: justify)) {}
@supports not selector(:matches(a, b)) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedTheNotSelector [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTheNotSelector 	"

	self parse: 'a:not(:hover) {}
.b:not(c > .d) {};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 2.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSChildSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 5.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPseudoClassSelector) size equals: 3.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a:not(:hover) {}
.b:not(c > .d) {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a:not(:hover) {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a:not(:hover)'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a:not(:hover)'.
				self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'a'.
					self assert: (self topEntity isOfType: FASTSCSSTagName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'not'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(:hover)'.
					self assert: (self topEntity isOfType: FASTSCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: ':hover'.
						self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 1.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'hover'.
							self assert: (self topEntity isOfType: FASTSCSSClassName).
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.b:not(c > .d) {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.b:not(c > .d)'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.b:not(c > .d)'.
				self assert: (self topEntity isOfType: FASTSCSSPseudoClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '.b'.
					self assert: (self topEntity isOfType: FASTSCSSClassSelector).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'b'.
						self assert: (self topEntity isOfType: FASTSCSSClassName).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'not'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '(c > .d)'.
					self assert: (self topEntity isOfType: FASTSCSSArguments).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 1.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'c > .d'.
						self assert: (self topEntity isOfType: FASTSCSSChildSelector).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: 'c'.
							self assert: (self topEntity isOfType: FASTSCSSTagName).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '.d'.
							self assert: (self topEntity isOfType: FASTSCSSClassSelector).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 1.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: 'd'.
								self assert: (self topEntity isOfType: FASTSCSSClassName).
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a:not(:hover) {}
.b:not(c > .d) {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedTypeSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedTypeSelectors 	"

	self parse: 'div, span {}
h1, h2, h3, h4 {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 2.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 6.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'div, span {}
h1, h2, h3, h4 {};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'div, span {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'div, span'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'div'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'span'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'h1, h2, h3, h4 {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'h1, h2, h3, h4'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 4.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'h1'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'h2'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'h3'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			
				stack push: (stack top childrenNodes at: 4).
				self assert: self topEntity sourceCode equals: 'h4'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'div, span {}
h1, h2, h3, h4 {};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedURLs [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedURLs 	"

	self parse: 'a {
  b: http://something-else?foo=bar;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: 'a {
  b: http://something-else?foo=bar;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: 'a {
  b: http://something-else?foo=bar;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  b: http://something-else?foo=bar;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'b: http://something-else?foo=bar;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'b'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'http://something-else?foo=bar'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: 'a {
  b: http://something-else?foo=bar;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedUniversalSelectors [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedUniversalSelectors 	"

	self parse: '* {};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUniversalSelector) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '* {};'.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '* {}'.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '*'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '*'.
				self assert: (self topEntity isOfType: FASTSCSSUniversalSelector).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{}'.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '* {};'
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedUseStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedUseStatements 	"

	self parse: '@use ''custom.css'';

.inverse {
  background-color: base.$primary-color;
  color: white;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSClassSelector) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 2.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStringValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUseStatement) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@use ''custom.css'';

.inverse {
  background-color: base.$primary-color;
  color: white;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@use ''custom.css'';'.
		self assert: (self topEntity isOfType: FASTSCSSUseStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 1.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '''custom.css'''.
			self assert: (self topEntity isOfType: FASTSCSSStringValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: '.inverse {
  background-color: base.$primary-color;
  color: white;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '.inverse'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '.inverse'.
				self assert: (self topEntity isOfType: FASTSCSSClassSelector).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 1.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'inverse'.
					self assert: (self topEntity isOfType: FASTSCSSClassName).
					stack pop.
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  background-color: base.$primary-color;
  color: white;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background-color: base.$primary-color;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background-color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'base.$primary-color'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'color: white;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'white'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@use ''custom.css'';

.inverse {
  background-color: base.$primary-color;
  color: white;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedVariables [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedVariables 	"

	self parse: '$font-stack: Helvetica, sans-serif;

a {
  $primary-color: red;

  color: $primary-color;
  font: 100% $font-stack;
};'.

	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 4.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 1.
	self assert: (fast allWithType: FASTSCSSPlainValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 4.
	self assert: (fast allWithType: FASTSCSSRuleSet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSSelectors) size equals: 1.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSTagName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 2.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '$font-stack: Helvetica, sans-serif;

a {
  $primary-color: red;

  color: $primary-color;
  font: 100% $font-stack;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 3.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '$font-stack: Helvetica, sans-serif;'.
		self assert: (self topEntity isOfType: FASTSCSSDeclaration).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 3.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '$font-stack'.
			self assert: (self topEntity isOfType: FASTSCSSPropertyName).
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: 'Helvetica'.
			self assert: (self topEntity isOfType: FASTSCSSPlainValue).
			stack pop.
		
			stack push: (stack top childrenNodes at: 3).
			self assert: self topEntity sourceCode equals: 'sans-serif'.
			self assert: (self topEntity isOfType: FASTSCSSPlainValue).
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: 'a {
  $primary-color: red;

  color: $primary-color;
  font: 100% $font-stack;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSRuleSet).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: 'a'.
			self assert: (self topEntity isOfType: FASTSCSSSelectors).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 1.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'a'.
				self assert: (self topEntity isOfType: FASTSCSSTagName).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  $primary-color: red;

  color: $primary-color;
  font: 100% $font-stack;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 3.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$primary-color: red;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '$primary-color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'red'.
					self assert: (self topEntity isOfType: FASTSCSSPlainValue).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: 'color: $primary-color;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '$primary-color'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 3).
				self assert: self topEntity sourceCode equals: 'font: 100% $font-stack;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 3.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'font'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '100%'.
					self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
					
					"Testing value of monovalue relation childrenNode"
					self assert: self topEntity childrenNode isNotNil.

						stack push: self topEntity childrenNode.
						self assert: self topEntity sourceCode equals: '%'.
						self assert: (self topEntity isOfType: FASTSCSSUnit).
						stack pop.
					stack pop.
				
					stack push: (stack top childrenNodes at: 3).
					self assert: self topEntity sourceCode equals: '$font-stack'.
					self assert: (self topEntity isOfType: FASTSCSSVariable).
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 3).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '$font-stack: Helvetica, sans-serif;

a {
  $primary-color: red;

  color: $primary-color;
  font: 100% $font-stack;
};' withPlatformLineEndings
]

{ #category : 'tests' }
FASTSCSSImporterTest >> testGeneratedWhileStatements [
	<generated>
	"Generated as regression test by TSFASTImporterTestGenerator>>#generateTestNamed:fromCode:protocol:
	Regenerate executing: 	self regenerateTest: #testGeneratedWhileStatements 	"

	self parse: '@while $i < 3 {
  background-color: lighten($base-color, $i * 5%);
  $i: $i + 1;
};'.

	self assert: (fast allWithType: FASTSCSSArguments) size equals: 1.
	self assert: (fast allWithType: FASTSCSSBinaryExpression) size equals: 3.
	self assert: (fast allWithType: FASTSCSSBlock) size equals: 1.
	self assert: (fast allWithType: FASTSCSSCallExpression) size equals: 1.
	self assert: (fast allWithType: FASTSCSSDeclaration) size equals: 2.
	self assert: (fast allWithType: FASTSCSSERROR) size equals: 1.
	self assert: (fast allWithType: FASTSCSSFunctionName) size equals: 1.
	self assert: (fast allWithType: FASTSCSSIntegerValue) size equals: 3.
	self assert: (fast allWithType: FASTSCSSPropertyName) size equals: 2.
	self assert: (fast allWithType: FASTSCSSStylesheet) size equals: 1.
	self assert: (fast allWithType: FASTSCSSUnit) size equals: 1.
	self assert: (fast allWithType: FASTSCSSVariable) size equals: 4.
	self assert: (fast allWithType: FASTSCSSWhileStatement) size equals: 1.

	stack push: fast rootEntities anyOne.
	self assert: self topEntity sourceCode equals: '@while $i < 3 {
  background-color: lighten($base-color, $i * 5%);
  $i: $i + 1;
};' withPlatformLineEndings.
	self assert: (self topEntity isOfType: FASTSCSSStylesheet).
	self assert: (self topEntity isOfType: FamixTHasImmediateSource).
	self assert: (self topEntity isOfType: FamixTSourceAnchor).
	
	"Testing value of multivalued relation childrenNodes"
	self assert: self topEntity childrenNodes size equals: 2.
	
		stack push: (stack top childrenNodes at: 1).
		self assert: self topEntity sourceCode equals: '@while $i < 3 {
  background-color: lighten($base-color, $i * 5%);
  $i: $i + 1;
}' withPlatformLineEndings.
		self assert: (self topEntity isOfType: FASTSCSSWhileStatement).
		
		"Testing value of multivalued relation childrenNodes"
		self assert: self topEntity childrenNodes size equals: 2.
		
			stack push: (stack top childrenNodes at: 1).
			self assert: self topEntity sourceCode equals: '$i < 3'.
			self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: '$i'.
				self assert: (self topEntity isOfType: FASTSCSSVariable).
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '3'.
				self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
				stack pop.
			stack pop.
		
			stack push: (stack top childrenNodes at: 2).
			self assert: self topEntity sourceCode equals: '{
  background-color: lighten($base-color, $i * 5%);
  $i: $i + 1;
}' withPlatformLineEndings.
			self assert: (self topEntity isOfType: FASTSCSSBlock).
			
			"Testing value of multivalued relation childrenNodes"
			self assert: self topEntity childrenNodes size equals: 2.
			
				stack push: (stack top childrenNodes at: 1).
				self assert: self topEntity sourceCode equals: 'background-color: lighten($base-color, $i * 5%);'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: 'background-color'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: 'lighten($base-color, $i * 5%)'.
					self assert: (self topEntity isOfType: FASTSCSSCallExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: 'lighten'.
						self assert: (self topEntity isOfType: FASTSCSSFunctionName).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '($base-color, $i * 5%)'.
						self assert: (self topEntity isOfType: FASTSCSSArguments).
						
						"Testing value of multivalued relation childrenNodes"
						self assert: self topEntity childrenNodes size equals: 2.
						
							stack push: (stack top childrenNodes at: 1).
							self assert: self topEntity sourceCode equals: '$base-color'.
							self assert: (self topEntity isOfType: FASTSCSSVariable).
							stack pop.
						
							stack push: (stack top childrenNodes at: 2).
							self assert: self topEntity sourceCode equals: '$i * 5%'.
							self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
							
							"Testing value of multivalued relation childrenNodes"
							self assert: self topEntity childrenNodes size equals: 2.
							
								stack push: (stack top childrenNodes at: 1).
								self assert: self topEntity sourceCode equals: '$i'.
								self assert: (self topEntity isOfType: FASTSCSSVariable).
								stack pop.
							
								stack push: (stack top childrenNodes at: 2).
								self assert: self topEntity sourceCode equals: '5%'.
								self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
								
								"Testing value of monovalue relation childrenNode"
								self assert: self topEntity childrenNode isNotNil.

									stack push: self topEntity childrenNode.
									self assert: self topEntity sourceCode equals: '%'.
									self assert: (self topEntity isOfType: FASTSCSSUnit).
									stack pop.
								stack pop.
							stack pop.
						stack pop.
					stack pop.
				stack pop.
			
				stack push: (stack top childrenNodes at: 2).
				self assert: self topEntity sourceCode equals: '$i: $i + 1;'.
				self assert: (self topEntity isOfType: FASTSCSSDeclaration).
				
				"Testing value of multivalued relation childrenNodes"
				self assert: self topEntity childrenNodes size equals: 2.
				
					stack push: (stack top childrenNodes at: 1).
					self assert: self topEntity sourceCode equals: '$i'.
					self assert: (self topEntity isOfType: FASTSCSSPropertyName).
					stack pop.
				
					stack push: (stack top childrenNodes at: 2).
					self assert: self topEntity sourceCode equals: '$i + 1'.
					self assert: (self topEntity isOfType: FASTSCSSBinaryExpression).
					
					"Testing value of multivalued relation childrenNodes"
					self assert: self topEntity childrenNodes size equals: 2.
					
						stack push: (stack top childrenNodes at: 1).
						self assert: self topEntity sourceCode equals: '$i'.
						self assert: (self topEntity isOfType: FASTSCSSVariable).
						stack pop.
					
						stack push: (stack top childrenNodes at: 2).
						self assert: self topEntity sourceCode equals: '1'.
						self assert: (self topEntity isOfType: FASTSCSSIntegerValue).
						stack pop.
					stack pop.
				stack pop.
			stack pop.
		stack pop.
	
		stack push: (stack top childrenNodes at: 2).
		self assert: self topEntity sourceCode equals: ';'.
		self assert: (self topEntity isOfType: FASTSCSSERROR).
		self assert: (self topEntity isOfType: FamixTHasImmediateSource).
		self assert: (self topEntity isOfType: FamixTSourceAnchor).
		stack pop.
	self assert: self topEntity source equals: '@while $i < 3 {
  background-color: lighten($base-color, $i * 5%);
  $i: $i + 1;
};' withPlatformLineEndings
]

{ #category : 'as yet unclassified' }
FASTSCSSImporterTest >> topEntity [

	^ stack top
]

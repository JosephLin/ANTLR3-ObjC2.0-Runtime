// $ANTLR 3.2 Aug 17, 2010 17:18:07 Combined.g 2010-08-18 08:12:59

/* =============================================================================
 * Standard antlr3 OBJC runtime definitions
 */
#import <Cocoa/Cocoa.h>
#import "antlr3.h"
/* End of standard antlr3 runtime definitions
 * =============================================================================
 */


#pragma mark Rule return scopes start
#pragma mark Rule return scopes end
#pragma mark Tokens
#define INT 5
#define WS 6
#define ID 4
#define EOF -1
@interface CombinedLexer : ANTLRLexer { // line 283
}
+ (CombinedLexer *)newCombinedLexer:(id<ANTLRCharStream>)anInput;

- (void) mID; 
- (void) mINT; 
- (void) mWS; 
- (void) mTokens; 
@end // end of CombinedLexer interface
/** \file
 *  This OBJC source file was generated by $ANTLR version 3.2 Aug 07, 2010 22:08:38
 *
 *     -  From the grammar source file : T.g
 *     -                            On : 2010-08-09 12:05:10
 *     -                for the parser : TParserParser *
 * Editing it, at least manually, is not wise. 
 *
 * C language generator and runtime by Jim Idle, jimi|hereisanat|idle|dotgoeshere|ws.
 *
 *
*/
// [The "BSD licence"]
// Copyright (c) 2010 Alan Condit
//
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
// 3. The name of the author may not be used to endorse or promote products
//    derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
// IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
// OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
// NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
// THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// $ANTLR 3.2 Aug 07, 2010 22:08:38 T.g 2010-08-09 12:05:10

/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "TParser.h"
/* ----------------------------------------- */

/** Demonstrates how semantic predicates get hoisted out of the rule in 
 *  which they are found and used in other decisions.  This grammar illustrates
 *  how predicates can be used to distinguish between enum as a keyword and
 *  an ID *dynamically*. :)

 * Run "java org.antlr.Tool -dfa t.g" to generate DOT (graphviz) files.  See
 * the T_dec-1.dot file to see the predicates in action.
 */

/* ============================================================================= */

/* =============================================================================
 * Start of recognizer
 */



#pragma mark Bitsets
static ANTLRBitSet *FOLLOW_identifier_in_stat34;

const unsigned long long FOLLOW_identifier_in_stat34_data[] = { 0x0000000000000002LL};

static ANTLRBitSet *FOLLOW_enumAsKeyword_in_stat47;

const unsigned long long FOLLOW_enumAsKeyword_in_stat47_data[] = { 0x0000000000000002LL};

static ANTLRBitSet *FOLLOW_ID_in_identifier66;

const unsigned long long FOLLOW_ID_in_identifier66_data[] = { 0x0000000000000002LL};

static ANTLRBitSet *FOLLOW_enumAsID_in_identifier74;

const unsigned long long FOLLOW_enumAsID_in_identifier74_data[] = { 0x0000000000000002LL};

static ANTLRBitSet *FOLLOW_7_in_enumAsKeyword89;

const unsigned long long FOLLOW_7_in_enumAsKeyword89_data[] = { 0x0000000000000002LL};

static ANTLRBitSet *FOLLOW_7_in_enumAsID100;

const unsigned long long FOLLOW_7_in_enumAsID100_data[] = { 0x0000000000000002LL};



#pragma mark Dynamic Global Scopes

#pragma mark Dynamic Rule Scopes

#pragma mark Rule return scopes start

@implementation TParser

+ (void) initialize
{
    FOLLOW_identifier_in_stat34 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_identifier_in_stat34_data Count:(NSUInteger)1] retain];
    FOLLOW_enumAsKeyword_in_stat47 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_enumAsKeyword_in_stat47_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_identifier66 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_identifier66_data Count:(NSUInteger)1] retain];
    FOLLOW_enumAsID_in_identifier74 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_enumAsID_in_identifier74_data Count:(NSUInteger)1] retain];
    FOLLOW_7_in_enumAsKeyword89 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_7_in_enumAsKeyword89_data Count:(NSUInteger)1] retain];
    FOLLOW_7_in_enumAsID100 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_7_in_enumAsID100_data Count:(NSUInteger)1] retain];

    [ANTLRBaseRecognizer setTokenNames:[[[NSArray alloc] initWithObjects:@"<invalid>", @"<EOR>", @"<DOWN>", @"<UP>", 
 @"ID", @"INT", @"WS", @"'enum'", nil] retain]];
}

- (id) initWithTokenStream:(id<ANTLRTokenStream>)aStream
{
    if ((self = [super initWithTokenStream:aStream State:[[ANTLRRecognizerSharedState newANTLRRecognizerSharedStateWithRuleLen:4+1] retain]]) != nil) {


                                        

        enableEnum = NO;

    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}


/*
 * $ANTLR start stat
 * T.g:24:1: stat : ( identifier | enumAsKeyword );
 */
- (void) stat
{
    // This is not in the Java.stg

    @try {
        // T.g:24:5: ( identifier | enumAsKeyword ) //ruleblock
        NSInteger alt1=2;
        {
            NSInteger LA1_0 = [input LA:1];
            if ( LA1_0==ID ) {
                alt1=1;
            }
            else if ( LA1_0==7 ) {
                {
                    NSInteger LA1_2 = [input LA:2];
                    if ( !enableEnum ) {
                        alt1=1;
                    }
                    else if ( enableEnum ) {
                        alt1=2;
                    }
                else {
                    ANTLRNoViableAltException *nvae = [ANTLRNoViableAltException newANTLRNoViableAltException:1 state:2 stream:input];
                    @throw nvae;
                    }
                }
            }
        else {
            ANTLRNoViableAltException *nvae = [ANTLRNoViableAltException newANTLRNoViableAltException:1 state:0 stream:input];
            @throw nvae;
            }
        }
        switch (alt1) {
            case 1 :
                // T.g:24:7: identifier // alt
                {
                [self pushFollow:FOLLOW_identifier_in_stat34];
                [self identifier];
                [self popFollow];

                  /* element() */
                NSLog(@"enum is an ID");  /* element() */
                 /* elements */
                }
                break;
            case 2 :
                // T.g:25:7: enumAsKeyword // alt
                {
                [self pushFollow:FOLLOW_enumAsKeyword_in_stat47];
                [self enumAsKeyword];
                [self popFollow];

                  /* element() */
                NSLog(@"enum is a keyword");  /* element() */
                 /* elements */
                }
                break;

        }
        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end stat */
/*
 * $ANTLR start identifier
 * T.g:28:1: identifier : ( ID | enumAsID );
 */
- (void) identifier
{
    // This is not in the Java.stg

    @try {
        // T.g:29:5: ( ID | enumAsID ) //ruleblock
        NSInteger alt2=2;
        {
            NSInteger LA2_0 = [input LA:1];
            if ( LA2_0==ID ) {
                alt2=1;
            }
            else if ( LA2_0==7 ) {
                alt2=2;
            }
        else {
            ANTLRNoViableAltException *nvae = [ANTLRNoViableAltException newANTLRNoViableAltException:2 state:0 stream:input];
            @throw nvae;
            }
        }
        switch (alt2) {
            case 1 :
                // T.g:29:7: ID // alt
                {
                [self match:input TokenType:ID Follow:FOLLOW_ID_in_identifier66];
                  /* element() */
                 /* elements */
                }
                break;
            case 2 :
                // T.g:30:7: enumAsID // alt
                {
                [self pushFollow:FOLLOW_enumAsID_in_identifier74];
                [self enumAsID];
                [self popFollow];

                  /* element() */
                 /* elements */
                }
                break;

        }
        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end identifier */
/*
 * $ANTLR start enumAsKeyword
 * T.g:33:1: enumAsKeyword : {...}? 'enum' ;
 */
- (void) enumAsKeyword
{
    // This is not in the Java.stg

    @try {
        // T.g:33:15: ({...}? 'enum' ) // ruleBlockSingleAlt
        // T.g:33:17: {...}? 'enum' // alt
        {
        if ( !(enableEnum) ) {
            @throw [ANTLRFailedPredicateException exceptionWithRuleName:@"enumAsKeyword" predicate:@"enableEnum" stream:input];
        }  /* element() */
        [self match:input TokenType:7 Follow:FOLLOW_7_in_enumAsKeyword89];
          /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end enumAsKeyword */
/*
 * $ANTLR start enumAsID
 * T.g:35:1: enumAsID : {...}? 'enum' ;
 */
- (void) enumAsID
{
    // This is not in the Java.stg

    @try {
        // T.g:35:10: ({...}? 'enum' ) // ruleBlockSingleAlt
        // T.g:35:12: {...}? 'enum' // alt
        {
        if ( !(!enableEnum) ) {
            @throw [ANTLRFailedPredicateException exceptionWithRuleName:@"enumAsID" predicate:@"!enableEnum" stream:input];
        }  /* element() */
        [self match:input TokenType:7 Follow:FOLLOW_7_in_enumAsID100];
          /* element() */
         /* elements */
        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }    @finally {
    }
    return ;
}
/* $ANTLR end enumAsID */


@end // end of TParser implementation

/* End of code
 * =============================================================================
 */

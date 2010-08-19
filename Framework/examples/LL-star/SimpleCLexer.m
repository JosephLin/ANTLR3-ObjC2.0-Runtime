/** \file
 *  This OBJC source file was generated by $ANTLR version 3.2 Aug 17, 2010 17:18:07
 *
 *     -  From the grammar source file : SimpleC.g
 *     -                            On : 2010-08-18 08:13:01
 *     -                 for the lexer : SimpleCLexerLexer *
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

// $ANTLR 3.2 Aug 17, 2010 17:18:07 SimpleC.g 2010-08-18 08:13:01

/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "SimpleCLexer.h"
/* ----------------------------------------- */


/* ============================================================================= */

/* =============================================================================
 * Start of recognizer
 */

#pragma mark Cyclic DFA implementation start DFA4
@implementation DFA4
const static NSInteger dfa4_eot[33] =
    {-1,-1,-1,-1,-1,14,14,14,-1,-1,14,22,-1,-1,-1,-1,-1,14,14,14,14,-1,-1,
     27,14,14,30,-1,31,32,-1,-1,-1};
const static NSInteger dfa4_eof[33] =
    {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     -1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
const static unichar dfa4_min[33] =
    {9,0,0,0,0,110,104,111,0,0,111,61,0,0,0,0,0,116,97,105,114,0,0,48,114,
     100,48,0,48,48,0,0,0};
const static unichar dfa4_max[33] =
    {125,0,0,0,0,110,104,111,0,0,111,61,0,0,0,0,0,116,97,105,114,0,0,122,
     114,100,122,0,122,122,0,0,0};
const static NSInteger dfa4_accept[33] =
    {-1,1,2,3,4,-1,-1,-1,8,9,-1,-1,13,14,15,16,17,-1,-1,-1,-1,12,11,-1,-1,
     -1,-1,5,-1,-1,10,6,7};
const static NSInteger dfa4_special[33] =
    {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
     -1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
const static NSInteger dfa4_transition[] = {};
const static NSInteger dfa4_transition0[] = {14, 14, 14, 14, 14, 14, 14, 
 14, 14, 14, -1, -1, -1, -1, -1, -1, -1, 14, 14, 14, 14, 14, 14, 14, 14, 
 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
 -1, -1, -1, -1, 14, -1, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14};
const static NSInteger dfa4_transition1[] = {21};
const static NSInteger dfa4_transition2[] = {17};
const static NSInteger dfa4_transition3[] = {26};
const static NSInteger dfa4_transition4[] = {19};
const static NSInteger dfa4_transition5[] = {29};
const static NSInteger dfa4_transition6[] = {18};
const static NSInteger dfa4_transition7[] = {25};
const static NSInteger dfa4_transition8[] = {28};
const static NSInteger dfa4_transition9[] = {24};
const static NSInteger dfa4_transition10[] = {20};
const static NSInteger dfa4_transition11[] = {16, 16, -1, -1, 16, -1, -1, 
 -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 16, -1, 
 -1, -1, -1, -1, -1, -1, 2, 4, -1, 13, 3, -1, -1, -1, 15, 15, 15, 15, 15, 
 15, 15, 15, 15, 15, -1, 1, 12, 11, -1, -1, -1, 14, 14, 14, 14, 14, 14, 
 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 
 14, 14, -1, -1, -1, -1, 14, -1, 14, 14, 6, 14, 14, 10, 14, 14, 5, 14, 14, 
 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 14, 14, 14, 14, 8, -1, 9};
const static NSInteger dfa4_transition12[] = {23};


+ () newDFA4WithRecognizer:(ANTLRBaseRecognizer *)aRecognizer
{
    return [[[DFA4 alloc] initWithRecognizer:aRecognizer] retain];
}

- (id) initWithRecognizer:(ANTLRBaseRecognizer *) theRecognizer
{
    if ((self = [super initWithRecognizer:theRecognizer]) != nil) {
        decisionNumber = 4;
        eot = dfa4_eot;
        eof = dfa4_eof;
        min = dfa4_min;
        max = dfa4_max;
        accept = dfa4_accept;
        special = dfa4_special;
        if (!(transition = calloc(33, sizeof(void*)))) {
            [self release];
            return nil;
        }
        len = 33;
        transition[0] = dfa4_transition11;
        transition[1] = dfa4_transition;
        transition[2] = dfa4_transition;
        transition[3] = dfa4_transition;
        transition[4] = dfa4_transition;
        transition[5] = dfa4_transition2;
        transition[6] = dfa4_transition6;
        transition[7] = dfa4_transition4;
        transition[8] = dfa4_transition;
        transition[9] = dfa4_transition;
        transition[10] = dfa4_transition10;
        transition[11] = dfa4_transition1;
        transition[12] = dfa4_transition;
        transition[13] = dfa4_transition;
        transition[14] = dfa4_transition;
        transition[15] = dfa4_transition;
        transition[16] = dfa4_transition;
        transition[17] = dfa4_transition12;
        transition[18] = dfa4_transition9;
        transition[19] = dfa4_transition7;
        transition[20] = dfa4_transition3;
        transition[21] = dfa4_transition;
        transition[22] = dfa4_transition;
        transition[23] = dfa4_transition0;
        transition[24] = dfa4_transition8;
        transition[25] = dfa4_transition5;
        transition[26] = dfa4_transition0;
        transition[27] = dfa4_transition;
        transition[28] = dfa4_transition0;
        transition[29] = dfa4_transition0;
        transition[30] = dfa4_transition;
        transition[31] = dfa4_transition;
        transition[32] = dfa4_transition;
    }
    return self;
}

- (void) dealloc
{
    free(transition);
    [super dealloc];
}

- (NSString *) description
{
    return @"1:1: Tokens : ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | ID | INT | WS );";
}


@end
#pragma mark Cyclic DFA implementation end DFA4



/** As per Terence: No returns for lexer rules!
#pragma mark Rule return scopes start
#pragma mark Rule return scopes end
*/
@implementation SimpleCLexer // line 330

+ (void) initialize
{
    [ANTLRBaseRecognizer setGrammarFileName:@"SimpleC.g"];
}

+ (NSString *) tokenNameForType:(NSInteger)aTokenType
{
    return [[self getTokenNames] objectAtIndex:aTokenType];
}

+ (SimpleCLexer *)newSimpleCLexer:(id<ANTLRCharStream>)anInput
{
    return [[SimpleCLexer alloc] initWithCharStream:anInput];
}

- (id) initWithCharStream:(id<ANTLRCharStream>)anInput
{
    if ((self = [super initWithCharStream:anInput State:[ANTLRRecognizerSharedState newANTLRRecognizerSharedStateWithRuleLen:18+1]]) != nil) {
        dfa4 = [DFA4 newDFA4WithRecognizer:self];
    }
    return self;
}

- (void) dealloc
{
    [dfa4 release];
    [super dealloc];
}

// Start of actions.lexer.methods
// start methods()

// Start of Rules
// $ANTLR start "T__7"
- (void) mT__7
{
    //
    @try {
        NSInteger _type = T__7;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:7:6: ( ';' ) // ruleBlockSingleAlt
        // SimpleC.g:7:8: ';' // alt
        {
        [self matchChar:';']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__7"

// $ANTLR start "T__8"
- (void) mT__8
{
    //
    @try {
        NSInteger _type = T__8;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:8:6: ( '(' ) // ruleBlockSingleAlt
        // SimpleC.g:8:8: '(' // alt
        {
        [self matchChar:'(']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__8"

// $ANTLR start "T__9"
- (void) mT__9
{
    //
    @try {
        NSInteger _type = T__9;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:9:6: ( ',' ) // ruleBlockSingleAlt
        // SimpleC.g:9:8: ',' // alt
        {
        [self matchChar:',']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__9"

// $ANTLR start "T__10"
- (void) mT__10
{
    //
    @try {
        NSInteger _type = T__10;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:10:7: ( ')' ) // ruleBlockSingleAlt
        // SimpleC.g:10:9: ')' // alt
        {
        [self matchChar:')']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__10"

// $ANTLR start "T__11"
- (void) mT__11
{
    //
    @try {
        NSInteger _type = T__11;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:11:7: ( 'int' ) // ruleBlockSingleAlt
        // SimpleC.g:11:9: 'int' // alt
        {
        [self matchString:@"int"]; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__11"

// $ANTLR start "T__12"
- (void) mT__12
{
    //
    @try {
        NSInteger _type = T__12;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:12:7: ( 'char' ) // ruleBlockSingleAlt
        // SimpleC.g:12:9: 'char' // alt
        {
        [self matchString:@"char"]; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__12"

// $ANTLR start "T__13"
- (void) mT__13
{
    //
    @try {
        NSInteger _type = T__13;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:13:7: ( 'void' ) // ruleBlockSingleAlt
        // SimpleC.g:13:9: 'void' // alt
        {
        [self matchString:@"void"]; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__13"

// $ANTLR start "T__14"
- (void) mT__14
{
    //
    @try {
        NSInteger _type = T__14;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:14:7: ( '{' ) // ruleBlockSingleAlt
        // SimpleC.g:14:9: '{' // alt
        {
        [self matchChar:'{']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__14"

// $ANTLR start "T__15"
- (void) mT__15
{
    //
    @try {
        NSInteger _type = T__15;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:15:7: ( '}' ) // ruleBlockSingleAlt
        // SimpleC.g:15:9: '}' // alt
        {
        [self matchChar:'}']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__15"

// $ANTLR start "T__16"
- (void) mT__16
{
    //
    @try {
        NSInteger _type = T__16;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:16:7: ( 'for' ) // ruleBlockSingleAlt
        // SimpleC.g:16:9: 'for' // alt
        {
        [self matchString:@"for"]; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__16"

// $ANTLR start "T__17"
- (void) mT__17
{
    //
    @try {
        NSInteger _type = T__17;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:17:7: ( '=' ) // ruleBlockSingleAlt
        // SimpleC.g:17:9: '=' // alt
        {
        [self matchChar:'=']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__17"

// $ANTLR start "T__18"
- (void) mT__18
{
    //
    @try {
        NSInteger _type = T__18;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:18:7: ( '==' ) // ruleBlockSingleAlt
        // SimpleC.g:18:9: '==' // alt
        {
        [self matchString:@"=="]; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__18"

// $ANTLR start "T__19"
- (void) mT__19
{
    //
    @try {
        NSInteger _type = T__19;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:19:7: ( '<' ) // ruleBlockSingleAlt
        // SimpleC.g:19:9: '<' // alt
        {
        [self matchChar:'<']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__19"

// $ANTLR start "T__20"
- (void) mT__20
{
    //
    @try {
        NSInteger _type = T__20;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:20:7: ( '+' ) // ruleBlockSingleAlt
        // SimpleC.g:20:9: '+' // alt
        {
        [self matchChar:'+']; 
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "T__20"

// $ANTLR start "ID"
- (void) mID
{
    //
    @try {
        NSInteger _type = ID;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:94:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* ) // ruleBlockSingleAlt
        // SimpleC.g:94:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )* // alt
        {
        if (([input LA:1] >= 'A' && [input LA:1] <= 'Z')||[input LA:1] == '_'||([input LA:1] >= 'a' && [input LA:1] <= 'z')) {
            [input consume];

        } else {
            ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException exceptionWithSet:nil stream:input];
            [self recover:mse];
            @throw mse;}
          /* element() */
        do {
            NSInteger alt1=2;
            NSInteger LA1_0 = [input LA:1];
            if ( ((LA1_0>='0' && LA1_0<='9')||(LA1_0>='A' && LA1_0<='Z')||LA1_0=='_'||(LA1_0>='a' && LA1_0<='z')) ) {
                alt1=1;
            }


            switch (alt1) {
                case 1 : ;
                    // SimpleC.g: // alt
                    {
                    if (([input LA:1] >= '0' && [input LA:1] <= '9')||([input LA:1] >= 'A' && [input LA:1] <= 'Z')||[input LA:1] == '_'||([input LA:1] >= 'a' && [input LA:1] <= 'z')) {
                        [input consume];

                    } else {
                        ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException exceptionWithSet:nil stream:input];
                        [self recover:mse];
                        @throw mse;}
                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    goto loop1;
            }
        } while (YES);
        loop1: ;
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "ID"

// $ANTLR start "INT"
- (void) mINT
{
    //
    @try {
        NSInteger _type = INT;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:97:5: ( ( '0' .. '9' )+ ) // ruleBlockSingleAlt
        // SimpleC.g:97:7: ( '0' .. '9' )+ // alt
        {
        // SimpleC.g:97:7: ( '0' .. '9' )+ // positiveClosureBlock
        NSInteger cnt2=0;
        do {
            NSInteger alt2=2;
            NSInteger LA2_0 = [input LA:1];
            if ( ((LA2_0>='0' && LA2_0<='9')) ) {
                alt2=1;
            }


            switch (alt2) {
                case 1 : ;
                    // SimpleC.g:97:8: '0' .. '9' // alt
                    {
                    [self matchRangeFromChar:'0' to:'9'];   /* element() */
                     /* elements */
                    }
                    break;

                default :
                    if ( cnt2 >= 1 )
                        goto loop2;
                    ANTLREarlyExitException *eee = [ANTLREarlyExitException exceptionWithStream:input decisionNumber:2];
                    @throw eee;
            }
            cnt2++;
        } while (YES);
        loop2: ;
          /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "INT"

// $ANTLR start "WS"
- (void) mWS
{
    //
    @try {
        NSInteger _type = WS;
        NSInteger _channel = ANTLRTokenChannelDefault;
        // SimpleC.g:100:5: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ ) // ruleBlockSingleAlt
        // SimpleC.g:100:9: ( ' ' | '\\t' | '\\r' | '\\n' )+ // alt
        {
        // SimpleC.g:100:9: ( ' ' | '\\t' | '\\r' | '\\n' )+ // positiveClosureBlock
        NSInteger cnt3=0;
        do {
            NSInteger alt3=2;
            NSInteger LA3_0 = [input LA:1];
            if ( ((LA3_0>='\t' && LA3_0<='\n')||LA3_0=='\r'||LA3_0==' ') ) {
                alt3=1;
            }


            switch (alt3) {
                case 1 : ;
                    // SimpleC.g: // alt
                    {
                    if (([input LA:1] >= '\t' && [input LA:1] <= '\n')||[input LA:1] == '\r'||[input LA:1] == ' ') {
                        [input consume];

                    } else {
                        ANTLRMismatchedSetException *mse = [ANTLRMismatchedSetException exceptionWithSet:nil stream:input];
                        [self recover:mse];
                        @throw mse;}
                      /* element() */
                     /* elements */
                    }
                    break;

                default :
                    if ( cnt3 >= 1 )
                        goto loop3;
                    ANTLREarlyExitException *eee = [ANTLREarlyExitException exceptionWithStream:input decisionNumber:3];
                    @throw eee;
            }
            cnt3++;
        } while (YES);
        loop3: ;
          /* element() */
         state.channel=99;   /* element() */
         /* elements */
        }

        // token+rule list labels

        [state setType:_type];

        state.channel = _channel;
    }
    @finally {
        //
    }
    return;
}
// $ANTLR end "WS"

- (void) mTokens
{
    // SimpleC.g:1:8: ( T__7 | T__8 | T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | T__20 | ID | INT | WS ) //ruleblock
    NSInteger alt4=17;
    alt4 = [dfa4 predict:input];
    switch (alt4) {
        case 1 : ;
            // SimpleC.g:1:10: T__7 // alt
            {
                [self mT__7]; 
              /* element() */
             /* elements */
            }
            break;
        case 2 : ;
            // SimpleC.g:1:15: T__8 // alt
            {
                [self mT__8]; 
              /* element() */
             /* elements */
            }
            break;
        case 3 : ;
            // SimpleC.g:1:20: T__9 // alt
            {
                [self mT__9]; 
              /* element() */
             /* elements */
            }
            break;
        case 4 : ;
            // SimpleC.g:1:25: T__10 // alt
            {
                [self mT__10]; 
              /* element() */
             /* elements */
            }
            break;
        case 5 : ;
            // SimpleC.g:1:31: T__11 // alt
            {
                [self mT__11]; 
              /* element() */
             /* elements */
            }
            break;
        case 6 : ;
            // SimpleC.g:1:37: T__12 // alt
            {
                [self mT__12]; 
              /* element() */
             /* elements */
            }
            break;
        case 7 : ;
            // SimpleC.g:1:43: T__13 // alt
            {
                [self mT__13]; 
              /* element() */
             /* elements */
            }
            break;
        case 8 : ;
            // SimpleC.g:1:49: T__14 // alt
            {
                [self mT__14]; 
              /* element() */
             /* elements */
            }
            break;
        case 9 : ;
            // SimpleC.g:1:55: T__15 // alt
            {
                [self mT__15]; 
              /* element() */
             /* elements */
            }
            break;
        case 10 : ;
            // SimpleC.g:1:61: T__16 // alt
            {
                [self mT__16]; 
              /* element() */
             /* elements */
            }
            break;
        case 11 : ;
            // SimpleC.g:1:67: T__17 // alt
            {
                [self mT__17]; 
              /* element() */
             /* elements */
            }
            break;
        case 12 : ;
            // SimpleC.g:1:73: T__18 // alt
            {
                [self mT__18]; 
              /* element() */
             /* elements */
            }
            break;
        case 13 : ;
            // SimpleC.g:1:79: T__19 // alt
            {
                [self mT__19]; 
              /* element() */
             /* elements */
            }
            break;
        case 14 : ;
            // SimpleC.g:1:85: T__20 // alt
            {
                [self mT__20]; 
              /* element() */
             /* elements */
            }
            break;
        case 15 : ;
            // SimpleC.g:1:91: ID // alt
            {
                [self mID]; 
              /* element() */
             /* elements */
            }
            break;
        case 16 : ;
            // SimpleC.g:1:94: INT // alt
            {
                [self mINT]; 
              /* element() */
             /* elements */
            }
            break;
        case 17 : ;
            // SimpleC.g:1:98: WS // alt
            {
                [self mWS]; 
              /* element() */
             /* elements */
            }
            break;

    }

}

@end // end of SimpleCLexer implementation // line 397

/* End of code
 * =============================================================================
 */

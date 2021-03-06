// [The "BSD licence"]
// Copyright (c) 2006-2007 Kay Roepke 2010 Alan Condit
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

#import "CommonTreeAdaptor.h"

@implementation CommonTreeAdaptor

+ (CommonTree *) newEmptyTree;
{
    return [CommonTree newTree];
}

+ (CommonTreeAdaptor *)newTreeAdaptor
{
    return[[CommonTreeAdaptor alloc] init];
}

- (id) init
{
    self = [super init];
    if (self) {
    }
    return self;
}

/** Duplicate a node.  This is part of the factory;
 *	override if you want another kind of node to be built.
 *
 *  I could use reflection to prevent having to override this
 *  but reflection is slow.
 */
- (id) dupNode:(id<BaseTree>)t
{
    if ( t==nil )
        return nil;
    return [CommonTree newTreeWithTree:t];
}

/** Tell me how to create a token for use with imaginary token nodes.
 *  For example, there is probably no input symbol associated with imaginary
 *  token DECL, but you need to create it as a payload or whatever for
 *  the DECL node as in ^(DECL type ID).
 *
 *  This is a variant of createToken where the new token is derived from
 *  an actual real input token.  Typically this is for converting '{'
 *  tokens to BLOCK etc...  You'll see
 *
 *    r : lc='{' ID+ '}' -> ^(BLOCK[$lc] ID+) ;
 *
 *  If you care what the token payload objects' type is, you should
 *  override this method and any other createToken variant.
 */
- (CommonTree *) create:(CommonToken *)aToken
{
    return [CommonTree newTreeWithToken:aToken];
}

/** Tell me how to create a token for use with imaginary token nodes.
 *  For example, there is probably no input symbol associated with imaginary
 *  token DECL, but you need to create it as a payload or whatever for
 *  the DECL node as in ^(DECL type ID).
 *
 *  If you care what the token payload objects' type is, you should
 *  override this method and any other createToken variant.
 */
- (CommonTree *)createTree:(NSInteger)tokenType Text:(NSString *)text
{
    return [CommonTree newTreeWithTokenType:tokenType Text:text];
}

- (id<Token>)createToken:(NSInteger)tokenType Text:(NSString *)text
{
    id<Token> fromToken = [CommonToken newToken:tokenType Text:text];
    return fromToken;
}

- (id<Token>)createToken:(id<Token>)fromToken
{
    return [CommonToken newTokenWithToken:(CommonToken *)fromToken];
}

/** Track start/stop token for subtree root created for a rule.
 *  Only works with Tree nodes.  For rules that match nothing,
 *  seems like this will yield start=i and stop=i-1 in a nil node.
 *  Might be useful info so I'll not force to be i..i.
 */
- (void) setTokenBoundaries:(id<BaseTree>)aTree From:(id<Token>)startToken To:(id<Token>)stopToken
{
    if ( aTree == nil )
        return;
    int startTokIdx = 0;
    int stopTokIdx = 0;
    if ( startToken != nil )
        startTokIdx = [startToken getTokenIndex];
    if ( stopToken != nil )
        stopTokIdx = [stopToken getTokenIndex];
    [(id<BaseTree>)aTree setTokenStartIndex:startTokIdx];
    [(id<BaseTree>)aTree setTokenStopIndex:stopTokIdx];
}

- (NSInteger)getTokenStartIndex:(id<BaseTree>) t
{
    if ( t == nil )
        return -1;
    return [(id<BaseTree>)t getTokenStartIndex];
}

- (NSInteger)getTokenStopIndex:(id<BaseTree>) t
{
    if ( t == nil )
        return -1;
    return [(id<BaseTree>)t getTokenStopIndex];
}

- (NSString *)getText:(CommonTree *)t
{
    if ( t == nil )
        return nil;
    return t.token.text;
}

- (void)setText:(id<BaseTree>)t Text:(NSString *)text
{
    if ( t == nil )
        return;
}

- (NSInteger)getType:(CommonTree *)t
{
    if ( t==nil )
        return TokenTypeInvalid;
    return t.token.type;
}

- (void) setType:(id<BaseTree>)t Type:(NSInteger)tokenType
{
    if ( t==nil )
        return;
}

/** What is the Token associated with this node?  If
 *  you are not using CommonTree, then you must
 *  override this in your own adaptor.
 */
- (id<Token>) getToken:(CommonTree *) t
{
    if ( [t isKindOfClass:[CommonTree class]] ) {
        return t.token;
    }
    return nil; // no idea what to do
}

- (id<BaseTree>) getChild:(id<BaseTree>)t At:(NSInteger)i
{
    if ( t == nil )
        return nil;
    return [(id<BaseTree>)t getChild:i];
}

- (void) setChild:(id<BaseTree>)t At:(NSInteger)i Child:(id<BaseTree>)child
{
    if ( t == nil )
        return;
    [(id<BaseTree>)t setChild:i With:child];
}

- (id) deleteChild:(id<BaseTree>)t Index:(NSInteger)anIndex
{
    return [t deleteChild:anIndex];
}

- (NSInteger) getChildCount:(id<BaseTree>) t
{
    if ( t == nil )
        return 0;
    return [(id<BaseTree>) t getChildCount];
}

- (id<BaseTree>) getParent:(id<BaseTree>) t
{
    if ( t == nil )
        return nil;
    return (id<BaseTree>)[t getParent];
}

- (void) setParent:(id<BaseTree>)t With:(id<BaseTree>) parent
{
    if ( t != nil )
        [(id<BaseTree>) t setParent:(id<BaseTree>)parent];
}

- (NSInteger) getChildIndex:(id<BaseTree>) t
{
    if ( t == nil )
        return 0;
    return [(id<BaseTree>) t getChildIndex];
}

- (void) setChildIndex:(id<BaseTree>)t With:(NSInteger)anIndex
{
    if ( t!=nil )
        [(id<BaseTree>)t setChildIndex:anIndex];
}

- (void) replaceChildren:(id<BaseTree>)parent From:(NSInteger)startChildIndex To:(NSInteger)stopChildIndex With:(id<BaseTree>)t
{
    if ( parent != nil ) {
        [(id<BaseTree>)parent replaceChildrenFrom:startChildIndex To:stopChildIndex With:t];
    }
}

- (id) copyWithZone:(NSZone *)aZone
{
    return [[[self class] allocWithZone:aZone] init];
}

@end

//
//  UnwantedTokenException.m
//  ANTLR
//
//  Created by Alan Condit on 6/8/10.
// [The "BSD licence"]
// Copyright (c) 2010 Alan Condit
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

#import "UnwantedTokenException.h"

@implementation UnwantedTokenException : MismatchedTokenException
	/** Used for remote debugger deserialization */
+ (UnwantedTokenException *)newException
{
    return [[UnwantedTokenException alloc] init];
}
    
+ (UnwantedTokenException *)newException:(NSInteger)expected Stream:(id<IntStream>)anInput
{
    return [[UnwantedTokenException alloc] initWithStream:anInput And:expected];
}

- (id) init
{
    self = [super initWithStream:input];
    if (self) {
    }
    return self;
}
     
- (id) initWithStream:(id<IntStream>)anInput And:(NSInteger)expected
{
    self = [super initWithStream:anInput];
    if (self) {
        expecting = expected;
    }
    return self;
}
    
- (id<Token>)getUnexpectedToken
{
    return token;
}
    
- (NSString *)description
{
    NSString *exp1 = [NSString stringWithFormat:@", expected %d", expecting];
    if ( expecting == TokenTypeInvalid ) {
        exp1 = @"";
    }
    if ( token==nil ) {
        return [NSString stringWithFormat:@"UnwantedTokenException(found=%@)", exp1];
    }
    return [NSString stringWithFormat:@"UnwantedTokenException(found=%@ %@", token.text, exp1];
}

@end

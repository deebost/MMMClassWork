//
//  WordClass.m
//  WordBrowser
//
//  Created by Jhaybie on 10/2/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "WordClass.h"

@implementation WordClass
@synthesize word, definition;

- (WordClass *) addWord:(NSString *)newWord
         withDefinition:(NSString *)newDefinition
            andSynonyms:(NSMutableArray *)newSynonyms;
{
    WordClass *tempWord = [[WordClass alloc] init];
    tempWord.word = newWord;
    tempWord.definition = newDefinition;
    tempWord.synonyms = newSynonyms;
    return tempWord;
}


@end

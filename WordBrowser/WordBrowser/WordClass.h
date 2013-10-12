//
//  WordClass.h
//  WordBrowser
//
//  Created by Jhaybie on 10/2/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WordClass : NSObject
@property (strong, nonatomic) NSString *word;
@property (weak, nonatomic) NSString *definition;
@property (strong, nonatomic) NSMutableArray *synonyms;

- (WordClass *) addWord:(NSString *)tempWord
         withDefinition:(NSString *)tempDefinition
            andSynonyms:(NSMutableArray *)tempSynonyms;

@end

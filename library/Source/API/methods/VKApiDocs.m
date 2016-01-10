//
//  VKApiUsers.h
//
//  Copyright (c) 2014 VK.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "VKApiBase.h"
#import "VKApiDocs.h"
#import "VKDocs.h"

/**
 Builds requests for API.docs part
 */
@implementation VKApiDocs : VKApiBase

- (VKRequest *)get {
  return [self prepareRequestWithMethodName:@"get" andParameters:nil andHttpMethod:@"GET" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)get:(NSInteger)count {
  return [self prepareRequestWithMethodName:@"get" andParameters: @{VK_API_COUNT : @(count)} andHttpMethod:@"GET" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)get:(NSInteger)count andOffset:(NSInteger)offset {
  return [self prepareRequestWithMethodName:@"get" andParameters:
        @{
            VK_API_COUNT    : @(count),
            VK_API_OFFSET   : @(offset),
            }
                              andHttpMethod:@"GET" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)get:(NSInteger)count andOffset:(NSInteger)offset andOwnerID:(NSInteger)ownerID {
  return [self prepareRequestWithMethodName:@"get" andParameters:
  @{
    VK_API_COUNT    : @(count),
    VK_API_OFFSET   : @(offset),
    VK_API_OWNER_ID : @(ownerID),
    }
                              andHttpMethod:@"GET" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)getByID:(NSArray *)IDs {
  return [self prepareRequestWithMethodName:@"getById" andParameters:@{@"docs" : IDs} andHttpMethod:@"GET" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)getUploadServer {
  return [self prepareRequestWithMethodName:@"getUploadServer" andParameters:nil andHttpMethod:@"GET"];
}

- (VKRequest *)getUploadServer:(NSInteger)group_id {
  return [self prepareRequestWithMethodName:@"getUploadServer" andParameters:@{VK_API_GROUP_ID : [@(group_id) stringValue]} andHttpMethod:@"GET"];
}

- (VKRequest *)getWallUploadServer {
  return [self prepareRequestWithMethodName:@"getWallUploadServer" andParameters:nil andHttpMethod:@"GET"];
}

- (VKRequest *)getWallUploadServer:(NSInteger)group_id {
  return [self prepareRequestWithMethodName:@"getWallUploadServer" andParameters:@{VK_API_GROUP_ID : [@(group_id) stringValue]} andHttpMethod:@"GET"];
}

- (VKRequest *)save:(NSString *)file {
  return [self prepareRequestWithMethodName:@"delete" andParameters:@{VK_API_FILE : file} andHttpMethod:@"POST" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)save:(NSString *)file andTitle:(NSString *)title {
  return [self prepareRequestWithMethodName:@"delete" andParameters:@{
                                                                      VK_API_FILE   : file,
                                                                      VK_API_TITLE  : title,
                                                                      } andHttpMethod:@"POST" andClassOfModel:[VKDocsArray class]];
}


- (VKRequest *)save:(NSString *)file andTitle:(NSString *)title andTags:(NSString *)tags {
  return [self prepareRequestWithMethodName:@"delete" andParameters:@{
                                                                      VK_API_FILE   : file,
                                                                      VK_API_TITLE  : title,
                                                                      VK_API_TAGS   : tags
                                                                      } andHttpMethod:@"POST" andClassOfModel:[VKDocsArray class]];
}

- (VKRequest *)delete:(NSInteger)ownerID andDocID:(NSInteger)docID {
  return [self prepareRequestWithMethodName:@"save" andParameters:@{
                                                                VK_API_OWNER_ID : [@(ownerID) stringValue],
                                                                VK_API_DOC_ID   : [@(docID) stringValue],
                                                                } andHttpMethod:@"POST"];
}

- (VKRequest *)add:(NSInteger)ownerID andDocID:(NSInteger)docID {
  return [self prepareRequestWithMethodName:@"add" andParameters:@{
                                                                   VK_API_OWNER_ID   : [@(ownerID) stringValue],
                                                                   VK_API_DOC_ID     : [@(docID) stringValue]
                                                                   } andHttpMethod:@"POST"];
}

- (VKRequest *)add:(NSInteger)ownerID andDocID:(NSInteger)docID andAccessKey:(NSString *)accessKey {
  return [self prepareRequestWithMethodName:@"add" andParameters:@{
                                                                VK_API_OWNER_ID   : [@(ownerID) stringValue],
                                                                VK_API_DOC_ID     : [@(docID) stringValue],
                                                                VK_API_ACCESS_KEY : accessKey
                                                                } andHttpMethod:@"POST"];
}

@end

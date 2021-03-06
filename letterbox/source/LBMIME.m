/*
 * MailCore
 *
 * Copyright (C) 2007 - Matt Ronge
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the MailCore project nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRELB, INDIRELB, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRALB, STRILB
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#import "LBMIME.h"

#import "LBMIME_Enumerator.h"

@implementation LBMIME
@synthesize contentType=_contentType;

- (id)initWithMIMEStruct:(struct mailmime *)mime 
        forMessage:(struct mailmessage *)message {
    self = [super init];
    if (self) {
        // We couldn't find a content-type, set it to something generic        
        NSString *mainType = @"application";
        NSString *subType = @"octet-stream";        
        if (mime != NULL && mime->mm_content_type != NULL) {
            struct mailmime_content *content = mime->mm_content_type;
            if (content->ct_type != NULL) {
                subType = [NSString stringWithCString:content->ct_subtype 
                            encoding:NSUTF8StringEncoding];
                subType = [subType lowercaseString];
                struct mailmime_type *type = content->ct_type;
                if (type->tp_type == MAILMIME_TYPE_DISCRETE_TYPE &&
                    type->tp_data.tp_discrete_type != NULL) {
                    switch (type->tp_data.tp_discrete_type->dt_type) {
                        case MAILMIME_DISCRETE_TYPE_TEXT:
                            mainType = @"text";
                        break;
                        case MAILMIME_DISCRETE_TYPE_IMAGE:
                            mainType = @"image";
                        break;
                        case MAILMIME_DISCRETE_TYPE_AUDIO:
                            mainType = @"audio";
                        break;
                        case MAILMIME_DISCRETE_TYPE_VIDEO:
                            mainType = @"video";
                        break;
                        case MAILMIME_DISCRETE_TYPE_APPLICATION:
                            mainType = @"application";
                        break;
                    }            
                }
                else if (type->tp_type == MAILMIME_TYPE_COMPOSITE_TYPE &&
                            type->tp_data.tp_composite_type != NULL) {
                    switch (type->tp_data.tp_discrete_type->dt_type) {
                        case MAILMIME_COMPOSITE_TYPE_MESSAGE:
                            mainType = @"message";
                        break;
                        case MAILMIME_COMPOSITE_TYPE_MULTIPART:
                            mainType = @"multipart";
                        break;
                    }            
                }
            }
        }
        _contentType = [[NSString alloc] initWithFormat:@"%@/%@", mainType, subType];
    }
    return self;
}

- (id)content {
    return nil;
}


- (struct mailmime *)buildMIMEStruct {
    return NULL;
}

- (NSString *)render {
    MMAPString * str = mmap_string_new("");
    int col = 0;
    int err = 0;
     NSString *resultStr;
    
    mailmime_write_mem(str, &col, [self buildMIMEStruct]);
    err = mmap_string_ref(str);
    assert(err == 0);
    resultStr = [[NSString alloc] initWithBytes:str->str length:str->len  encoding:NSUTF8StringEncoding];
    mmap_string_free(str);
    return [resultStr autorelease];
}

- (LBMIME_Enumerator *)mimeEnumerator {
    LBMIME_Enumerator *enumerator;
    enumerator = [[LBMIME_Enumerator alloc] initWithMIME:self];
    return [enumerator autorelease];
}

- (void)dealloc {
    [_contentType release];
    [super dealloc];
}
@end

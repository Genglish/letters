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

#import "LBMIME_MultiPart.h"
#import <libetpan/libetpan.h>
#import "LetterBoxTypes.h"
#import "LBMIMEFactory.h"


@implementation LBMIME_MultiPart
+ (id)mimeMultiPart {
    return [[[LBMIME_MultiPart alloc] init] autorelease];
}

- (id)initWithMIMEStruct:(struct mailmime *)mime forMessage:(struct mailmessage *)message {
    self = [super initWithMIMEStruct:mime forMessage:message];
    if (self) {
        _contentList = [[NSMutableArray alloc] init];
        clistiter *cur = clist_begin(mime->mm_data.mm_multipart.mm_mp_list);
        for (; cur != NULL; cur=clist_next(cur)) {
            LBMIME *content = [LBMIMEFactory createMIMEWithMIMEStruct:clist_content(cur) forMessage:message];
            if (content != nil) {
                [_contentList addObject:content];
            }
        }
    }
    return self;            
}

- (id)init {
    self = [super init];
    if (self) {
        _contentList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    [_contentList release];
    [super dealloc];
}

- (void)addMIMEPart:(LBMIME *)mime {
    [_contentList addObject:mime];
}

- (id)content {
    return _contentList;
}

- (struct mailmime *)buildMIMEStruct {
    //TODO make this smarter so it builds different types other than multipart/mixed
    struct mailmime *mime = mailmime_multiple_new("multipart/mixed");

    NSEnumerator *enumer = [_contentList objectEnumerator];
    LBMIME *part;
    int r;
    while ((part = [enumer nextObject])) {
        r = mailmime_add_part(mime, [part buildMIMEStruct]);
        assert(r == 0);
    }
    return mime;
}
@end

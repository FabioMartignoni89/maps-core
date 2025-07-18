// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from core.djinni

#import "MCRenderPassConfig.h"


@implementation MCRenderPassConfig

- (nonnull instancetype)initWithRenderPassIndex:(int32_t)renderPassIndex
                                   isPassMasked:(BOOL)isPassMasked
                                   renderTarget:(nullable id<MCRenderTargetInterface>)renderTarget
{
    if (self = [super init]) {
        _renderPassIndex = renderPassIndex;
        _isPassMasked = isPassMasked;
        _renderTarget = renderTarget;
    }
    return self;
}

+ (nonnull instancetype)renderPassConfigWithRenderPassIndex:(int32_t)renderPassIndex
                                               isPassMasked:(BOOL)isPassMasked
                                               renderTarget:(nullable id<MCRenderTargetInterface>)renderTarget
{
    return [[self alloc] initWithRenderPassIndex:renderPassIndex
                                    isPassMasked:isPassMasked
                                    renderTarget:renderTarget];
}

#ifndef DJINNI_DISABLE_DESCRIPTION_METHODS
- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@ %p renderPassIndex:%@ isPassMasked:%@ renderTarget:%@>", self.class, (void *)self, @(self.renderPassIndex), @(self.isPassMasked), self.renderTarget];
}

#endif
@end

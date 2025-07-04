// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from packer.djinni

#import "MCRectanglePacker+Private.h"
#import "MCRectanglePacker.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "MCRectanglePackerPage+Private.h"
#import "MCVec2I+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface MCRectanglePacker ()

- (id)initWithCpp:(const std::shared_ptr<::RectanglePacker>&)cppRef;

@end

@implementation MCRectanglePacker {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::RectanglePacker>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::RectanglePacker>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

+ (nonnull NSArray<MCRectanglePackerPage *> *)pack:(nonnull NSDictionary<NSString *, MCVec2I *> *)rectangles
                                       maxPageSize:(nonnull MCVec2I *)maxPageSize
                                           spacing:(int32_t)spacing {
    try {
        auto objcpp_result_ = ::RectanglePacker::pack(::djinni::Map<::djinni::String, ::djinni_generated::Vec2I>::toCpp(rectangles),
                                                      ::djinni_generated::Vec2I::toCpp(maxPageSize),
                                                      ::djinni::I32::toCpp(spacing));
        return ::djinni::List<::djinni_generated::RectanglePackerPage>::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

namespace djinni_generated {

auto RectanglePacker::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto RectanglePacker::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<MCRectanglePacker>(cpp);
}

} // namespace djinni_generated

@end

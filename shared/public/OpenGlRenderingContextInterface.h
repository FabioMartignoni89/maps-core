// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from core.djinni

#pragma once

#include "Color.h"
#include "TextureFilterType.h"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

class OpenGlRenderTargetInterface;

class OpenGlRenderingContextInterface {
public:
    virtual ~OpenGlRenderingContextInterface() = default;

    virtual void resume() = 0;

    virtual void pause() = 0;

    virtual /*not-null*/ std::shared_ptr<OpenGlRenderTargetInterface> getCreateRenderTarget(const std::string & name, ::TextureFilterType textureFilter, const ::Color & clearColor, bool usesDepthStencil) = 0;

    virtual void deleteRenderTarget(const std::string & name) = 0;

    virtual std::vector</*not-null*/ std::shared_ptr<OpenGlRenderTargetInterface>> getRenderTargets() = 0;

    virtual int32_t getProgram(const std::string & name) = 0;

    virtual void storeProgram(const std::string & name, int32_t program) = 0;

    virtual float getAspectRatio() = 0;

    virtual int64_t getDeltaTimeMs() = 0;
};

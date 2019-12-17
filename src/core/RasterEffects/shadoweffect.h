#ifndef SHADOWEFFECT_H
#define SHADOWEFFECT_H

#include "rastereffect.h"
#include "skia/skqtconversions.h"
#include "Animators/coloranimator.h"
#include "Animators/qpointfanimator.h"
#include "gpurendertools.h"

class ShadowEffect : public RasterEffect {
public:
    ShadowEffect();

    stdsptr<RasterEffectCaller> getEffectCaller(
            const qreal relFrame, const qreal resolution) const;
    bool forceMargin() const { return true; }
private:
    qsptr<QrealAnimator> mBlurRadius;
    qsptr<QrealAnimator> mOpacity;
    qsptr<ColorAnimator> mColor;
    qsptr<QPointFAnimator> mTranslation;
};

#endif // SHADOWEFFECT_H

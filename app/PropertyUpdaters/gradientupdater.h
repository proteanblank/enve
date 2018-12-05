#ifndef GRADIENTUPDATER_H
#define GRADIENTUPDATER_H
#include "propertyupdater.h"
class Gradient;

class GradientUpdater : public PropertyUpdater {
public:
    GradientUpdater(Gradient *gradient);

    void update();
    void updateFinal();

    void frameChangeUpdate();
private:
    Gradient *mTarget;
};

#endif // GRADIENTUPDATER_H

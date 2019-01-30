#include "coloranimatorbutton.h"
#include "Animators/coloranimator.h"
#include "GUI/ColorWidgets/colorsettingswidget.h"
#include <QVBoxLayout>
#include <QDialog>
#include "GUI/mainwindow.h"

ColorAnimatorButton::ColorAnimatorButton(ColorAnimator *colorTarget,
                                         QWidget *parent) :
    BoxesListActionButton(parent) {
    mColorTarget = colorTarget;
    if(colorTarget != nullptr) {
        connect(colorTarget->getVal1Animator(),
                &QrealAnimator::valueChangedSignal,
                this, qOverload<>(&ColorAnimatorButton::update));
        connect(colorTarget->getVal2Animator(),
                &QrealAnimator::valueChangedSignal,
                this, qOverload<>(&ColorAnimatorButton::update));
        connect(colorTarget->getVal3Animator(),
                &QrealAnimator::valueChangedSignal,
                this, qOverload<>(&ColorAnimatorButton::update));
    }
}

void ColorAnimatorButton::paintEvent(QPaintEvent *) {
    if(!mColorTarget) return;
    QPainter p(this);
    if(mHover) {
        p.setPen(Qt::red);
    } else {
        p.setPen(Qt::white);
    }
    p.setBrush(mColorTarget->getCurrentColor());
    p.drawRect(0, 0, width() - 1, height() - 1);
}

void ColorAnimatorButton::mousePressEvent(QMouseEvent *) {
    openColorSettingsDialog();
}

void ColorAnimatorButton::openColorSettingsDialog() {
    QDialog *dialog = new QDialog(MainWindow::getInstance());
    dialog->setLayout(new QVBoxLayout(dialog));
    ColorSettingsWidget *colorSettingsWidget =
            new ColorSettingsWidget(dialog);
    colorSettingsWidget->setColorAnimatorTarget(mColorTarget);
    dialog->layout()->addWidget(colorSettingsWidget);
    connect(MainWindow::getInstance(), &MainWindow::updateAll,
            dialog, qOverload<>(&QDialog::update));
    dialog->raise();
    dialog->exec();
}

// enve - 2D animations software
// Copyright (C) 2016-2020 Maurycy Liebner

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifndef QDOUBLESLIDER_H
#define QDOUBLESLIDER_H

#include <QWidget>
#include <QLineEdit>
#include <QDoubleValidator>

class QDoubleSlider : public QWidget {
    Q_OBJECT
public:
    QDoubleSlider(const qreal minVal,
                  const qreal maxVal,
                  const qreal prefferedStep,
                  QWidget * const parent = nullptr);
    QDoubleSlider(const QString& name,
                  const qreal minVal,
                  const qreal maxVal,
                  const qreal prefferedStep,
                  QWidget * const parent = nullptr);
    QDoubleSlider(QWidget *parent = nullptr);
    ~QDoubleSlider();

    void setValueSliderVisibile(const bool valueSliderVisible);
    void setNameVisible(const bool nameVisible);
    void setName(const QString& name);
    void setNumberDecimals(const int decimals);

    void fitWidthToContent();
    QString getValueString();

    void setValueRange(const qreal min, const qreal max);

    void setPrefferedValueStep(const qreal step);

    qreal minimum() { return mMinValue; }
    qreal value() { return mValue; }
    qreal maximum() { return mMaxValue; }

    void setIsRightSlider(const bool value);
    void setIsLeftSlider(const bool value);

    void setDisplayedValue(const qreal value);

    qreal clamped(const qreal value) const
    { return qBound(mMinValue, value, mMaxValue); }
protected:
    virtual void paint(QPainter *p);
    virtual void openContextMenu(const QPoint &globalPos)
    { Q_UNUSED(globalPos) }
    virtual QString getEditText() const
    { return mValueString; }

    virtual void startTransform(const qreal value);
    virtual void setValue(const qreal value);
    virtual void finishTransform(const qreal value);
    virtual void cancelTransform();

    bool eventFilter(QObject *, QEvent *event);
    void paintEvent(QPaintEvent *);
    void mouseDoubleClickEvent(QMouseEvent *event);
    void mousePressEvent(QMouseEvent *event);
    void mouseMoveEvent(QMouseEvent *event);

    void paint(QPainter *p,
               const QColor &allFill,
               const QColor &sliderFill,
               const QColor &stroke,
               const QColor &text);
    void paint(QPainter * const p, const bool enabled);
signals:
    void editingStarted(qreal);
    void valueEdited(qreal);
    void editingFinished(qreal);
    void editingCanceled();
protected:
    QString valueToText(const qreal value) const;
    qreal getDValueForMouseMove(const int mouseX) const;
    bool mouseMoved() const { return mMouseMoved; }
    bool textEditing() const { return mTextEdit; }
    void updateValueString();
private:
    void finishTextEditing();
    void lineEditingFinished();
    void updateLineEditFromValue();

    bool mMouseMoved = false;
    bool mLeftNeighbour = false;
    bool mRightNeighbour = false;
    int mDecimals = 3;

    QString mName = "";
    bool mShowName = false;

    QLineEdit *mLineEdit = nullptr;
    QString mValueString;
    qreal mValue = 0;
    bool mTextEdit = false;
    int mLastX;
    int mMovesCount = 0;
    bool mCanceled = false;
    qreal mMinValue = 0;
    qreal mMaxValue = 0;
    qreal mPrefferedValueStep = 1;

    QPoint mGlobalPressPos;
    qreal mLastValue;
    bool mShowValueSlider = true;
};

#endif // QDOUBLESLIDER_H

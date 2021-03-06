#ifndef ITEM_H
#define ITEM_H

#include "../interfaces/pluginsiteminterface.h"
#include "utils/itempopupwindow.h"
#include <QWidget>
#include <memory>

class Item : public QWidget
{
    Q_OBJECT
public:
    explicit Item(QWidget *parent = 0);
    enum ItemType {
        Indicator,
        Plugin,
        DateTime,
        Stretch,
        Notify
    };

    inline virtual ItemType itemType() const {Q_UNREACHABLE(); return Plugin;}
    virtual const QString name() const {return QString();}
    virtual QWidget *popupTips();
    virtual const QRect popupMarkGeometry();
    virtual void showPopup() {}
    virtual void showPopupWindow(QWidget * const content) { Q_UNUSED(content);}
    virtual void hidePopup() {}
    virtual void finished() {}
    virtual PluginsItemInterface *itemInter();
    virtual QMenu* contextMenu() const;

protected:
    static std::unique_ptr<ItemPopupWindow> PopupWindow;
};

#endif // ITEM_H

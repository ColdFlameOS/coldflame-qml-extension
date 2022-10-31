#ifndef IGNITEUI_H
#define IGNITEUI_H

#include <QQmlExtensionPlugin>

class IgniteUI : public QQmlExtensionPlugin
{
    Q_OBJECT
public:
    explicit IgniteUI(QObject *parent = nullptr);
};

#endif // IGNITEUI_H

#ifndef BALANCEENTRY_H
#define BALANCEENTRY_H

#include <QDateTime>
#include <QString>
#include "account.h"

class BalanceEntry
{
private:
    long id;
    QDateTime date;
    QString type;
    QString name;
    Account account;
    QString description;


public:
    BalanceEntry();
};

#endif // BALANCEENTRY_H

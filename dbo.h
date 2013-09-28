#ifndef DBO_H
#define DBO_H

#include <QList>
#include <QString>
#include "criteria.h"


template <class T> class DBO
{

public:
    virtual void save(T object) = 0;
    virtual void get(long id) = 0;
    virtual QString getTableName() = 0;
    virtual QString toSQLValues() = 0;
    virtual void fromSQLValues() = 0;

    static QList<T*>* filter(QString table, Criteria* criteria);

};

#endif // DBO_H

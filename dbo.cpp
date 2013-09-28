#include "dbo.h"
#include <QSqlQuery>


template< typename T >
QList<T*>* DBO<T>::filter(QString table, Criteria* criteria)
{
    QString tableName = getTableName();

    QString queryString = "select * from " + tableName + " where " + criteria->toSQL();

    QSqlQuery query;
    query.prepare(queryString);

    int i = 0;
    for (QVariant variant : criteria->getReplaceValues())
    {
        query.bindValue(i, variant);
        i ++;
    }

    query.exec();

    QList<T*>* resultList = new QList<T*>();
    while (query.nextResult())
    {
        QSqlRecord record = query.record();
        T object = new T(record);
        resultList->append(object);
    }

}

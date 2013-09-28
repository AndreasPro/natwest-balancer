#ifndef CRITERIA_H
#define CRITERIA_H

#include <QString>
#include <QList>
#include <QVariant>

class Criteria
{
    QList<QVariant> replaceValues;
    QList<Criteria> subCriteria;
    QString fieldName;
    QVariant fieldValue;
    QString op;

    QString toSQL(int &position, QList<QVariant>& replaceValues);

public:
    Criteria(QString fieldName, QVariant fieldValue, QString op);
    Criteria(QList<Criteria> subCriteria, QString op);
    QList<QVariant> getReplaceValues();
    QString toSQL();
};

#endif // CRITERIA_H

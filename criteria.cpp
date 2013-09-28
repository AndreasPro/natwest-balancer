#include "criteria.h"

Criteria::Criteria(QString fieldName, QVariant fieldValue, QString op)
{
    this->fieldName = fieldName;
    this->fieldValue = fieldValue;
    this->op = op;
}

Criteria::Criteria(QList<Criteria> subCriteria, QString op)
{
    this->subCriteria = subCriteria;
    this->op = op;
}

QString Criteria::toSQL()
{
    int i = 0;
    return this->toSQL(i, this->replaceValues);
}


QString Criteria::toSQL(int &position, QList<QVariant>& replaceValues)
{
    QString string = "";

    if (!this->subCriteria.empty())
    {
        int subCriteriaLength = subCriteria.length();
        int i = 0;
        for ( Criteria criteria : subCriteria)
        {
            string.append(criteria.toSQL(position, replaceValues));
            if (i != subCriteriaLength)
            {
                string.append(" " + this->op + " ");
            }
            i ++;
        }

        string = " ( " + string + " ) ";
        return string;

    }
    else
    {
        string =  " (" + this->fieldName + " " + this->op + " %" + position + ") ";
        position ++;
        replaceValues.append(this->fieldValue);
        return string;
    }
}

QList<QVariant> Criteria::getReplaceValues()
{
    return this->getReplaceValues();
}

#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlError>
#include <QFile>

class DatabaseManager : public QObject
{
public:
    DatabaseManager(QObject *parent = 0);
    ~DatabaseManager();
public:
    bool deleteDB();
    QSqlError lastError();
    bool openDB();

private:

    QSqlDatabase db;
    static QString getDBName();
    static QString getPath();
};

#endif // DATABASEMANAGER_H

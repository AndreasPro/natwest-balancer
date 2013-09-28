#include "databasemanager.h"
#include <QDir>

QString DatabaseManager::getDBName()
{
    return "natwest.db";
}

QString DatabaseManager::getPath()
{
    #ifdef Q_OS_LINUX
        QString path(QDir::home().path());
        path.append(QDir::separator()).append(DatabaseManager::getDBName());
        path = QDir::toNativeSeparators(path);
        return path;
    #else
        return DatabaseManager::getDBName();
    #endif
}

bool DatabaseManager::openDB()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName(DatabaseManager::getPath());
    return db.open();
}

QSqlError DatabaseManager::lastError()
{
    return db.lastError();
}

bool DatabaseManager::deleteDB()
{
    db.close();
    return QFile::remove(DatabaseManager::getPath());
}

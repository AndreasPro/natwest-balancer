#ifndef ACCOUNTDBO_H
#define ACCOUNTDBO_H

#include "dbo.h"
#include "account.h"

class AccountDBO : public DBO<Account>
{
public:
    AccountDBO();
};

#endif // ACCOUNTDBO_H

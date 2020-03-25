package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Account;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountMapper {
    Account getAccountByUserId(String userid);

    Account getAccountByUserIdAndPassword(Account account);

    void insertAccount(Account account);

    void insertSignon(Account account);

    void updateAccount(Account account);

    void updateSignon(Account account);
}

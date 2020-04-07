package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.LineItem;
import org.springframework.stereotype.Repository;

@Repository
public interface LineItemMapper {
    LineItem getLineItem(int orderId);
}

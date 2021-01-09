package estore.service;

import java.sql.SQLException;

import estore.dao.OrderDao;
import estore.domain.Order;
import estore.exception.addOrderException;

public class OrderService {
    public int addOrder(Order order) throws addOrderException {
        OrderDao dao=new OrderDao();
        int i = 0;

        try {
            i = dao.addOrder(order);
        } catch (SQLException e) {
            throw new addOrderException("订单提交失败");
        }
        return i;
    }


}

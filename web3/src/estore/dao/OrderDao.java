package estore.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import estore.domain.Order;
import estore.utils.DataSourceUtils;

public class OrderDao {

    //添加订单操作
    public int addOrder(Order order) throws SQLException {
        String sql="insert into  web_201800301278_orders values(null,?,?,?,null,null)";
        QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());
        System.out.println("金额："+order.getMoney()+"  收获人信息："+order.getReceiverinfo()+"  支付状态:"+order.getPaystate()+  "返回值："+runner.update(sql,order.getMoney(),order.getReceiverinfo(),order.getPaystate()));
        return runner.update(sql,order.getMoney(),order.getReceiverinfo(),order.getPaystate());
    }


}

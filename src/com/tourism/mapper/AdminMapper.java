package com.tourism.mapper;

import com.tourism.pojo.Admin;
import com.tourism.pojo.AdminExample;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    int countByExample(AdminExample example);

    int deleteByExample(AdminExample example);

    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectByExample(AdminExample example);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByExampleSelective(@Param("record") Admin record, @Param("example") AdminExample example);

    int updateByExample(@Param("record") Admin record, @Param("example") AdminExample example);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    /**
     * 自定义方法
     * @author 巴勉 @time 2019/1/26
     */
    //更新余额
    void updateMoney(@Param("adminId")int adminId,@Param("adminMoney")float money);
    //根据ID得到余额
    float getByMoney(int adminID);
    //通过账号查找用户
    Admin findByAccount(String adminAccount);
    //更新密码
    void updateAdminPassword(@Param("adminPassword")String adminPassword,@Param("adminAccount")String adminAccount);
}
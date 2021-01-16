package org.su.mapper;

import org.apache.ibatis.annotations.Param;
import org.su.pojo.Admin;

import java.util.List;

public interface AdminMapper {
    Admin getAdmin(@Param("adminName") String adminName,
                   @Param("adminPassword") String adminPassword);

}

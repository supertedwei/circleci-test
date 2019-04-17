package com.example.circlecitest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface PlayerMapper {

    @Select("select * from player where user_id=#{userId}")
    Player getByUserId(String userId);

}


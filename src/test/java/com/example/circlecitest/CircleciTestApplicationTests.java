package com.example.circlecitest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CircleciTestApplicationTests {

	@Autowired
	PlayerMapper playerMapper;

	@Test
	public void contextLoads() {
		System.out.println("================= begin");
		Player player = playerMapper.getByUserId("abc");
		System.out.println("================= end : " + player);
	}

}

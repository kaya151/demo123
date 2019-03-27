package cn.ti.demo123;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
@MapperScan("cn.ti.demo123.dao")
public class Demo123Application {

    public static void main(String[] args) {
        SpringApplication.run(Demo123Application.class, args);
    }

}


package com.web.law.utils;

import java.util.Random;

/**
 * @ClassName : KeyUtils
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-29 12:21
 */
public class KeyUtils {

    public static String genItemId() {
        //取当前时间的长整形值包含毫秒
        long millis = System.currentTimeMillis();
        //加上两位随机数
        Random random = new Random();
        int end2 = random.nextInt(99);
        //如果不足两位前面补0
        String str = millis + String.format("%02d", end2);
        long id = new Long(str);
        return id+"";
    }
}

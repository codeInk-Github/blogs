package org.su.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtils {
    public static  String getChinese(String paramValue){
        String regex = "([\u4e00-\u9fa5]+)";
        String str = "";
        Matcher matcher = Pattern.compile(regex).matcher(paramValue);
        while (matcher.find()) {
            str+= matcher.group(0);
        }
        return str;
    }
// 1 提取中文：regEx=“[\\u4e00-\\u9fa5]";
// 2 提取数字：regEx=“[0-9]";
// 3 提取英文：regEx=“[a-zA-Z0-9]";
// 4 提取英文和数字：regEx=“[a-zA-Z0-9]";
}

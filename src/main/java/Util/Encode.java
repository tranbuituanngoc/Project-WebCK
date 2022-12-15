package Util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import org.apache.commons.codec.binary.Base64;

public class Encode {
    public static String encodeToSHA1(String str){
        String res=null;
        String salt="321ew21fwe21Fsd45";

        str=str+salt;
        try {
            byte[] data=str.getBytes(StandardCharsets.UTF_8);
            MessageDigest messageDigest= MessageDigest.getInstance("SHA-1");
            res= new String(Base64.encodeBase64(messageDigest.digest(data)));
        }catch (Exception e){
            e.printStackTrace();
        }
        return res;
    }

    public static void main(String[] args) {
        System.out.println(encodeToSHA1("123"));
    }
}

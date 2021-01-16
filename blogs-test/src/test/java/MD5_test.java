import org.junit.Test;
import org.springframework.util.DigestUtils;

public class MD5_test {
    @Test
    void test(){
        String a = DigestUtils.md5DigestAsHex("mypass".getBytes());
        // System.out.println(a.substring(0,19));
        String t = "mypass";
        if(a.substring(0,19).equals(DigestUtils.md5DigestAsHex(t.getBytes()).substring(0, 19))){
            System.out.println("true!");
        }
        else {
            System.out.println("false");

        }
    }
}

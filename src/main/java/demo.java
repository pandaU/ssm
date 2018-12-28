public class demo {
    int num =100;
    public  void  test(){
        num=50;
    }

    public static void main(String[] args) {
        demo d=new demo();
        d.test();
        System.out.println(d.num);
    }
}

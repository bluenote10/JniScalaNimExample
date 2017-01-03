public class NativeTest {

    public native static void run();

    public static void main(String[] args) {
        System.loadLibrary("nativetest");
        NativeTest.run();
    }

}

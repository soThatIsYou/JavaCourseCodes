package java0.conc0303.homework03;


import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class Homework1 {

    public static void main(String[] args) throws InterruptedException, ExecutionException {
        long start = System.currentTimeMillis();


        FutureTask<Integer> task = new FutureTask<>(() -> sum());
        new Thread(task).start();
        System.out.println(Thread.currentThread().getName() + "异步计算的结果为：" + task.get());
        System.out.println(Thread.currentThread().getName() + "使用时间：" + (System.currentTimeMillis() - start) + " ms");
    }

    private static int sum() {
        return fibo(36);
    }

    private static int fibo(int a) {
        if (a < 2)
            return 1;
        return fibo(a - 1) + fibo(a - 2);
    }
}

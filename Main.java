import java.util.Arrays;
import java.util.Random;

public class Main {
    public static void main(String[] args) {
        int size = 100000;
        int[] numbers = new int[size];

        Random random = new Random();
        for (int i = 0; i < size; i++) {
            numbers[i] = random.nextInt(100000);
        }

        long startTime = System.currentTimeMillis();

        Arrays.sort(numbers);

        long endTime = System.currentTimeMillis();

        long totalTime = endTime - startTime;

        // Imprimir el tiempo total
        System.out.println("El tiempo de ordenamiento fue: " + totalTime + " milisegundos");
    }

}


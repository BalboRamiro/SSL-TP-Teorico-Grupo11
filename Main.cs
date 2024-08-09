using System;
using System.Diagnostics;

class Main
{
    static void main()
    {
        int size = 1000000;
        int[] numbers = new int[size];

        Random random = new Random();
        for (int i = 0; i < size; i++)
        {
            numbers[i] = random.Next(0, 1000000);
        }

        Stopwatch stopwatch = Stopwatch.StartNew();

        Array.Sort(numbers);

        stopwatch.Stop();
        long totalTime = stopwatch.ElapsedMilliseconds;

        Console.WriteLine("El tiempo de ordenamiento fue: " + totalTime + " milisegundos");
    }
}

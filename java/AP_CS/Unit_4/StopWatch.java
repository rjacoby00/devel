public class StopWatch {
    private long start;
    private long stop;

    public StopWatch() {
        start = stop = 0;
    } 

    public void start() {
        start = System.nanoTime();
    }

    public void stop() {
        stop = System.nanoTime();
    }

    public double getTimeInMilliseconds() {
        return (stop - start) / 1_000_000.0;
    }
}
public class StopWatch {
    private long start;
    private long stop;

    public StopWatch() {
        start = stop = 0;
    } 

    public void start() {
        start = System.nanotime();
    }

    public void stop() {
        stop = System.nanotime();
    }

    public double getTimeInMilliseconds() {
        return (stop - start) / 1_000_000.0;
    }
}
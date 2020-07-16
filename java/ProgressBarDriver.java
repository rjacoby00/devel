public class ProgressBarDriver {
    public static void main(String[] args) {
        ProgressBar pb = new ProgressBar(10);
        pb.updateBar();
        pb.updateProgress(1);
        pb.updateBar();
        pb.updateProgress(4);
        pb.updateBar();
        pb.updateProgress(5);
        pb.updateBar();
        pb.updateProgress(6);
        pb.updateBar();
    }
}

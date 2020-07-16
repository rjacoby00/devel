public class ProgressBar {
    private int total, current, size;
    private double percent;
    private boolean mode;

    
    /** 
     * @param total
     * @return 
     */
    public ProgressBar(int total) {
        this.total = total;
        this.current = 0;
        this.mode = true;
        this.size = 0;
    }

    
    /** 
     * @param percent
     * @return 
     */
    public ProgressBar(double percent) {
        this.percent = percent;
        this.mode = false;
        this.size = 0;
    }

    
    /** 
     * @param total
     * @param size
     * @return 
     */
    public ProgressBar(int total, int size) {
        this.total = total;
        this.current = 0;
        this.mode = true;
        this.size = size;
    }

    
    /** 
     * @param percent
     * @param size
     * @return 
     */
    public ProgressBar(double percent, int size) {
        this.percent = percent;
        this.mode = false;
        this.size = size;
    }

    
    /**
     * Changes the current progress state, recomended to call updateBar() after
     * @param current
     */
    public void updateProgress(int current) {
        if (mode)
            this.current = current;
        else
            this.percent = (double)current;
    }

    
    /** 
     * Changes the current progress state, recomended to call updateBar() after
     * @param percent
     */
    public void updateProgress(double percent) {
        if (!mode)
            this.percent = percent;
        else
            this.current = (int)percent;
    }

    
    /** 
     * Returns the current progress as a decimal out of 1
     * @return double
     */
    public double getProgress() {
        if (mode)
            return (double)this.current / this.total;
        else
            return this.percent;
    }

    
    /** 
     * Returns a formated string of the data contained in the object
     * @return String
     */
    public String toString() {
        if (mode)
            return "Progress: " + (int)(((double)this.current / this.total) * 100) + "%";
        else
            return "Progress: " + (int)(this.percent * 100) + "%";
    }

    
    /** 
     * @param pb
     * @return boolean
     */
    public boolean equals(ProgressBar pb) {
        if (mode)
            return (double)this.current / this.total == pb.getProgress();
        else
            return this.percent == pb.getProgress();
    }

    /**
     * Prints the current state of the bar over the previous one
     * @return
     */
    public void updateBar() {
        System.out.print("\r[");
        for (int i = 0; i < this.size; i++) {
            if ((double)i / this.size < getProgress())
                System.out.print("=");
            else
                System.out.print(" ");
        }
        System.out.print("]");
    }
}
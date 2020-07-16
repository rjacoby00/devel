public class FetchOrderNumber {
    public static void main(String[] args) {
        String order = "Product: Alston Dinner Table with Chairs Seven Pieces # Color: Weathered Oak # ID 7Q321G # Coupon Used? YES # Total Price: 699.53 # Order Number:2691238 # Shipped: Yes";
        String order2 = "Test thisis at et anhh;lrjk'lwjekhgkjhiurhwqehkfjq;ljke;lvekhkh";
        String order3 = "Order Number:56565656565656";

        System.out.println(fetchOrderNumber(order));
        System.out.println(fetchOrderNumber(order2));
        System.out.println(fetchOrderNumber(order3));

    }

    public static String fetchOrderNumber(String order) {
        int pos = order.indexOf("Order Number:");
        if (pos < 0) 
            return "-1";

        else 
            return order.substring(pos + 13, pos + 20);

    }
}
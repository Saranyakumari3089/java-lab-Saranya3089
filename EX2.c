public class OnlineShopping {

    enum OrderStatus {
        PLACED,
        SHIPPED,
        OUT_FOR_DELIVERY,
        DELIVERED,
        CANCELLED
    }

    public static void main(String[] args) {
        OrderStatus status = OrderStatus.SHIPPED;

        System.out.println("Current Order Status: " + status);

        switch (status) {
            case PLACED:
                System.out.println("Your order has been placed.");
                break;

            case SHIPPED:
                System.out.println("Your order has been shipped.");
                break;

            case OUT_FOR_DELIVERY:
                System.out.println("Your order is out for delivery.");
                break;

            case DELIVERED:
                System.out.println("Your order has been delivered.");
                break;

            case CANCELLED:
                System.out.println("Your order was cancelled.");
                break;
        }

        System.out.println("\nAll possible statuses:");

        for (OrderStatus s : OrderStatus.values()) {
            System.out.println(s);
        }
    }
}

output
Current Order Status: SHIPPED
Your order has been shipped.

All possible statuses:
PLACED
SHIPPED
OUT_FOR_DELIVERY
DELIVERED
CANCELLED

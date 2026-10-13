import 'dart:io';

void main(){
    String? repeat = "y";
    while(repeat == "y" || repeat == "Y") {
        String? pizza_size;
        print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
        print("Please enter your pizza size (small, medium, or large):");

        do{
            pizza_size = stdin.readLineSync();
            pizza_size = pizza_size?.toLowerCase().trim();
            if (pizza_size != "small" && pizza_size != "medium" && pizza_size != "large") {
                print("Please enter your pizza size excatly (small, medium, or large):");
            }
        }while(pizza_size != "small" && pizza_size != "medium" && pizza_size != "large");

        print("How many pizzas do you want of $pizza_size?");

        int? num_pizza = int.parse(stdin.readLineSync()!);
        int total = 0;

        switch (pizza_size) {
            case 'small':
                total = 5 * num_pizza;
                break;
            case 'medium':
                total = 7 * num_pizza;
                break;
            case 'large':
                total = 10 * num_pizza;
                break;
            default:
                print("Please enter your pizza size excatly (small, medium, or large)");
                break;
        }

        print("Your Total Payment is: \$$total");
        print("Do you want to order more pizzas? (y/n)");
        repeat = stdin.readLineSync();
    }
}
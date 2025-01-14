import java.util.Scanner;
import java.util.Stack;

class InfixToPostfix {

    private int precedence(char ch) {
        switch (ch) {
            case '+':
            case '-':
                return 1;
            case '*':
            case '/':
                return 2;
            case '^':
                return 3;
        }
        return -1;
    }

    public String infixToPostfix(String exp) {

        StringBuilder result = new StringBuilder();

        Stack<Character> stack = new Stack<>();

        for (int i = 0; i < exp.length(); ++i) {
            char c = exp.charAt(i);

            if (Character.isLetterOrDigit(c)) {
                result.append(c);
            }

            else if (c == '(') {
                stack.push(c);
            }
             else if (c == ')') {
                while (!stack.isEmpty() && stack.peek() != '(') {
                    result.append(stack.pop());
                }
                stack.pop();
            } else {
                while (!stack.isEmpty() && precedence(c) <= precedence(stack.peek())) {
                    if (c == '^' && stack.peek() == '^') {
                        break;
                    } else {
                        result.append(stack.pop());
                    }
                }
                stack.push(c);
            }
        }

        while (!stack.isEmpty()) {
            if (stack.peek() == '(') {
                return "Invalid Expression";
            }
            result.append(stack.pop());
        }
        return result.toString();
    }
}

public class InfixToPostfix_Stack {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        InfixToPostfix converter = new InfixToPostfix();

        System.out.print("Enter an infix expression: ");
        String infix = sc.nextLine();

        System.out.println("Infix Expression: " + infix);
        System.out.println("Postfix Expression: " + converter.infixToPostfix(infix));

        sc.close();
    }
}
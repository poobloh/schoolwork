package calculator;

import java.util.StringTokenizer;

import data_structures.Queue;
import data_structures.Stack;

public class ExpressionEvaluator {
	
	public String processInput(String s) {
		//s.replaceAll(" ","");
		Queue<String> expression = new Queue<String>();
		Stack<String> finalSolution = new Stack<String>();
		//String newString[] = s.split(" ");
		//newString.
		
		//for(int i = 0; i < s.length(); i++) {
		for (String token : s.split(" ")) {
			//String token = new String();
			//token += s.charAt(i);
			
			if(token.equals(""))
				continue;
			
			if(token.equals("("))
				finalSolution.push(token);
			
			if(token.equals(")"))
				while(!token.equals(")"))
					expression.enqueue(finalSolution.pop());
			
			if(token.equals("+") || token.equals("-") || token.equals("*") || token.equals("/") || token.equals("^")) {
				String peek = finalSolution.peek();
				int peekPriority = 0;
				int tokenPriority = 0;
				
				if(peek!=null) {
					if(peek.equals("*") || peek.equals("/")) peekPriority = 1;
					if(peek.equals("^")) peekPriority = 2;
					
					if(token.equals("*") || token.equals("/")) tokenPriority = 1;
					if(token.equals("^")) tokenPriority = 2;
					
					while(!finalSolution.isEmpty() && peek != "(" && tokenPriority >= peekPriority)
						expression.enqueue(finalSolution.pop());
				}
				/* if(peek==null)
					expression.enqueue();*/
				finalSolution.push(token);
			}
			
			if(token.matches("[-+]?\\d*\\.?\\d+"))
				expression.enqueue(token);
		}
		
		while(!finalSolution.isEmpty())
			expression.enqueue(finalSolution.pop());
		
		while(!expression.isEmpty()) {
			String token = expression.peek();
			
			if(Character.isDigit(token.charAt(0)))
				finalSolution.push(token);
			
			else if(token.equals("+") || token.equals("-") || token.equals("*") || token.equals("/") || token.equals("^")) {
				double num1 = Double.parseDouble(finalSolution.pop());
				double num2 = Double.parseDouble(finalSolution.pop());
				double answer = 0;
				
				switch (token) {
					case "^":
						answer = Math.pow(num1, num2);
						break;
					case "*": 
						answer = num1*num2;
						break;
					case "/":
						answer = num1/num2;
						break;
					case "+":
						answer = num1+num2;
						break;
					case "-":
						answer = num1-num2;
						break;
				}
				
				finalSolution.push(Double.toString(answer));
			}
		}
		
		return finalSolution.pop();
	}
    
}

/**
 * This is the VariablesDataTypesOperators class, part of the Developer Kickstart Module 1 curriculum 
 * at Cloud Code Academy. This class serves as an introduction to the basic elements of Apex programming 
 * including variables, data types, and operators.
 * 
 * This class is an essential tool for beginner developers who are just starting their journey in Salesforce 
 * development. It covers all the foundational elements necessary to understand and write Apex code effectively.
 * 
 * Topics covered in this class include:
 * - Understanding different data types in Apex such as Integer, Decimal, Double, String, Boolean, etc.
 * - Understanding how to declare and use variables in Apex.
 * - Understanding how to use various types of operators in Apex including arithmetic operators, 
 *   comparison operators, logical operators, and more.
 *
 * Users of this class can expect to gain a strong foundation in Apex programming and be prepared for 
 * more advanced topics in Salesforce development.
 * 
 * If statements are not specifically covered in the lesson this module, but review module 2 flow control section for an overview if needed.
 * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_if_else.htm 
 * 
 * @author Brandon T. Edoria
 */

public with sharing class VariablesDataTypesOperators
{
    /**
     * Question 1
     * Performs addition of two numbers.
     * If either of the numbers is null, return null.
     * Example: addition(1, 2) should return 3
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The sum of the two numbers, or null if either number is null.
     */

    // THIS IS TO TEST THE TEST BRANCH
    // this is another test
    // extra test commment
    // let's say this has something different from brandonEdoria branch

    public static Integer addition(Integer num1, Integer num2)
    {  
        If (num1 == null || num2 == null) // Returns null if either number is null
        {
            return null;
        }
        else
        {
            Integer resultAdd = num1 + num2;
            System.debug('#### The result is: ' + resultAdd);
            return resultAdd;
        }
    }

    /**
     * Question 2
     * Performs subtraction of two numbers.
     * Example: subtraction(1, 2) should return -1
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The difference between the two numbers.
     */

    public static Integer subtraction(Integer num1, Integer num2)
    {
        return num1 - num2;
    }

    /**
     * Question 3
     * Performs multiplication of two numbers.
     * Example: multiplication(2, 3) should return 6
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The product of the two numbers.
     */

    public static Integer multiplication(Integer num1, Integer num2)
    {
        return num1 * num2;
    }

    /**
     * Question 4
     * Performs division of two numbers.
     * If the denominator is zero, return 0 to avoid division by zero error.
     * Example: division(6, 3) should return 2
     * @param num The numerator.
     * @param denom The denominator.
     * @return The quotient of the division, or 0 if the denominator is zero.
     */

    public static Decimal division(Integer num, Integer denom)
    {
        If (denom == 0) // Returns 0 if the denominator is 0
        {
            return 0;
        }
        else
        {
            return (Decimal) num / denom; // Type cast the division result from Integer to Decimal. Without parentheses, 'Decimal' would be treated as a variable
        }
    }

    /**
     * Question 5
     * Checks if a number is even.
     * Example: isEven(2) should return true
     * This concept is not specifically covered in the content this week, but you can use the Math class and the modulus function to understand if the number is even or odd.
     * The modulus function returns the remainder of a division operation, think about how you can use this to determine if a number is even or odd. 
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm#apex_System_Math_mod
     * @param num The number to check.
     * @return True if the number is even, False otherwise.
     */

    public static Boolean isEven(Integer num) 
    {
        Integer remainder = Math.mod(num , 2); // Use the Math Class and Modulus Function to return the remainder of num divided by 2
        return remainder == 0; // Double equals sign will return true or false
    }

    /**
     * Question 6
     * Checks if a number is positive.
     * Example: isPositive(2) should return true
     * @param num The number to check.
     * @return true if the number is positive, false otherwise.
     */

    public static Boolean isPositive(Integer num)
    {
        return num > 0;
    }

    /**
     * Question 7
     * Concatenates two strings.
     * Example: concatenateStrings('Hello', 'World') should return 'HelloWorld'
     * @param str1 The first string.
     * @param str2 The second string.
     * @return The concatenated string.
     */

    public static String concatenateStrings(String str1, String str2)
    {
        return str1 + str2;
    }

	/**
     * Question 8
	 * Constructs a sentence by concatenating a given noun, verb, and ending punctuation.
	 * The sentence is structured to begin with 'The', followed by the noun, then 'is', the verb, and finally the ending punctuation.
	 * Example: createSentence('cat', 'jumping', '!') should return 'The cat is jumping!'
	 * Example: createSentence('bird', 'flying', '.') should return 'The bird is flying.'
	 * @param noun The noun or subject of the sentence.
	 * @param verb The verb or action of the sentence.
	 * @param endingPunctuation The punctuation to end the sentence, e.g., '.', '!', '?'
	 * @return The complete sentence as a single String.
	 */

	public static String createSentence(String noun, String verb, String endingPunctuation)
    {
		return 'The ' + noun + ' is ' + verb + endingPunctuation; // Spaces added between words
	}

    /**
     * Question 9
     * Checks if a date is in the past.
     * Example: isDateInPast(Date.newInstance(2019, 1, 1)) should return true
     * The concept of getting the current date is not specifically covered in the content this week, but you can use the Date class to get the current date.
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_today
     * @param dt The date to check.
     * @return True if the date is in the past, False otherwise.
     */

    public static Boolean isDateInPast(Date dt)
    {
        return dt < Date.today(); // Uses the Date Class and Today Function to return the current date in the user's timezone
    }

    /**
     * Question 10
     * Checks if a date is today or in the future.
     * Example: isDateTodayOrFuture(Date.newInstance(2019, 1, 1)) should return false
     * The concept of getting the current date is not specifically covered in the content this week, but you can use the Date class to get the current date.
     * Resources: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_today
     * @param dt The date to check.
     * @return True if the date is today or in the future, False otherwise.
     */

    public static Boolean isDateTodayOrFuture(Date dt)
    {
        return dt >= Date.today(); // Uses the Date Class and Today Function to return the current date in the user's timezone
    }

    /**
     * Question 11
     * Converts the number of minutes to milliseconds.
     * The conversion factor from minutes to milliseconds is a constant of 60000.
     * Formula: Milliseconds = minutes * 60000
     * Example: convertMinutesToMilliseconds(1) should return 60000
     * @param minutes The number of minutes.
     * @return The number of milliseconds equivalent to the given number of minutes.
     */

    public static Integer convertMinutesToMilliseconds(Integer minutes)
    {
        final Integer MILLISECONDS_PER_MINUTE = 60000; // Make this value a constant by putting keyword 'final' in front of datatype
        return minutes * MILLISECONDS_PER_MINUTE;
    }    

    /**
     * Question 12
     * Calculates the average of three numbers.
     * Formula: Average = (Sum of Numbers) ÷ (Total Numbers)
     * Example: averageOfThreeNumbers(1, 2, 3) should return 2
     * @param num1 The first number.
     * @param num2 The second number.
     * @param num3 The third number.
     * @return The average of the three numbers.
     */

    public static Double averageOfThreeNumbers(Integer num1, Integer num2, Integer num3)
    {
        return (num1 + num2 + num3) / 3;
    }

    /**
     * Question 13
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (5 + 7) * 3 to ensure that addition is performed before multiplication.
     * Example: adjustOrderOfOperations1(5, 7, 3) should return 36
     * @param num1 The first number.
     * @param num2 The second number.
     * @param num3 The third number.
     * @return The result of the adjusted arithmetic expression.
     */

    public static Integer adjustOrderOfOperations1(Integer num1, Integer num2, Integer num3)
    {
        return (num1 + num2) * num3;
    }

    /**
     * Question 14
     * Modifies the expression to adhere to PEMDAS rules in order to change its result.
     * @return The result of the expression after modifications.
     */

    public static Integer adjustOrderOfOperations2()
    {
        return 48 - ((15 + 5) * 2);
    }

    /**
     * Question 15
     * Adjusts the order of operations in an arithmetic expression to produce a desired result.
     * In this case, parentheses are added to the expression (a * b - c) / d + e to ensure that 
     * multiplication and subtraction are performed before division, which in turn is performed 
     * before addition.
     * Example: adjustOrderOfOperations3(1, 2, 3, 4, 5) should return 4.5
     * @param num1 The first number.
     * @param num2 The second number.
     * @param num3 The third number.
     * @param num4 The fourth number.
     * @param num5 The fifth number.
     * @return The result of the adjusted arithmetic expression.
     */

    public static Double complexOrderOfOperations(Integer num1, Integer num2, Integer num3, Integer num4, Integer num5)
    {
        return (Double) (num1 * num2 - num3) / (Double) num4 + num5; // Question: is the (Double) before num4 necessary here?
    }

    /**
     * Question 16
     * Converts the temperature from Fahrenheit to Celsius.
     * Formula: Celsius = (Fahrenheit - 32) * 5/9.
     * @param fahrenheit The temperature in Fahrenheit.
     * @return The temperature in Celsius equivalent to the given Fahrenheit temperature.
     */

    public static Double convertFahrenheitToCelsius(Double fahrenheit)
    {
        final Double SUBTRACT_FACTOR = 32.0; // Since these are constants, best practice to make them variables
        final Double MULTIPLY_FACTOR = 5.0;
        final Double DIVIDE_FACTOR = 9.0;
    
        return (fahrenheit - SUBTRACT_FACTOR) * MULTIPLY_FACTOR / DIVIDE_FACTOR;
    }

    

    /**
     * Question 17
     * Performs division and returns the result as a casted Integer.
     * It should cast the result to an Integer.
     * Example: 3 / 2 => 1.5 should return 1
     * @param num The numerator.
     * @param denom The denominator.
     * @return The quotient as a casted (round down) Integer.
     */

    public static Integer performDivisionAndCast(Double num, Double denom)
    {
        Double resultDiv = num / denom; // Can't go directly from input variables to return if going from Double to Integer data type

        return (Integer) resultDiv;
    }

    /**
     * Question 18
     * Calculate the weekly and monthly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Example: calculateWeeklyPaycheck(10.0, 40.0) should return 400.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the weekly paycheck.
     */

    public static Decimal calculateWeeklyPaycheck(Decimal hourlyRate, Double numberOfHours)
    {
        return hourlyRate * numberOfHours;
    }

    /**
     * Question 19
     * Calculate the weekly and monthly paycheck based on hourly rate and number of hours.
     * Weekly Paycheck is calculated by the formula: rate multiplied by hours.
     * Monthly Paycheck is calculated by the formula: weekly paycheck multiplied by 4.
     * Example: calculateMonthlyPaycheck(10.0, 40.0) should return 1600.0
     * @param hourlyRate The rate of pay per hour.
     * @param numberOfHours The number of hours worked in a week.
     * @return A Decimal representing the monthly paycheck.
     */

    public static Decimal calculateMonthlyPaycheck(Decimal hourlyRate, Double numberOfHours)
    {
        final Integer WEEKS_IN_MONTH = 4; // Make weeks in month a constant variable
        return hourlyRate * numberOfHours * WEEKS_IN_MONTH;
    }

    /**
     * Question 20
     * Calculates the total cost based on price per unit, number of units, and a sales tax rate.
     * Total cost is calculated by the formula: (pricePerUnit * numberOfUnits) * (1 + salesTaxRate).
     * Example: calculateTotalCost(1.0, 2, 0.05) should return 2.1
     * @param pricePerUnit The price per unit of the item.
     * @param numberOfUnits The number of units purchased.
     * @param salesTaxRate The sales tax rate as a decimal (e.g., 0.05 for 5% tax).
     * @return The total cost after applying the sales tax.
     */

    public static Decimal calculateTotalCost(Decimal pricePerUnit, Integer numberOfUnits, Decimal salesTaxRate)
    {
        return (pricePerUnit * numberOfUnits) * (1 + salesTaxRate);
    }
}

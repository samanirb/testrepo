#!/bin/bash

# Simple Interest Calculator Script

# Input variables
read -p "Enter Principal Amount: " principal
read -p "Enter Annual Interest Rate: " rate
read -p "Enter Time Period (years): " time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo "Principal Amount: $principal"
echo "Interest Rate: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"

#!/bin/bash

is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        echo "bilangan ini bukan bilangan prima"
        return
    fi

    for (( i=2; i<=num/2; i++ )); do
        if [ $((num%i)) -eq 0 ]; then
            echo "bilangan ini bukan bilangan prima"
            return
        fi
    done

    echo "bilangan ini adalah bilangan prima"
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 <bilangan>"
    exit 1
fi

number=$1
is_prime $number
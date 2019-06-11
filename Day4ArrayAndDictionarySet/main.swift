//
//  main.swift
//  Day4ArrayAndDictionarySet
//
//  Created by Neeraj Prasher on 2019-06-11.
//  Copyright © 2019 lambton. All rights reserved.
//

import Foundation

var a = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

//print(a[1])

for x in a
{
    print(x)
}

a.append(110)

print(a[10])

for x in a
{
    print(x)
}

print("----------")

print(a.capacity)
print(a.count)

if a.isEmpty
{
    print("Array is Empty")
}else{
    print("Array contains some elements")
}

let otherCountries = ["Pak", "Russia", "UK"]

var country:[String]!

//country += otherCountries

if var c = country
{
    country.append("India")
    c.append("Canada")
    c.append("USA")
    print("No. of Countries : \(c.count)")
}else{print("not gone to if")}

//print("No. Of Contries : \(country.count)")

func sortArray(arr: [Int] ) -> [Int]
{
    var sortedArray: [Int] = []
    
    for i in arr
    {
        var j=i+1
        
        for j in arr
        {
            if ( arr[i+1] < arr[i] )
            {
                var a = arr[i]
                arr[i] = arr[j]
                arr[j] = a
            }
        }
    }
    
    sortedArray = arr
    return sortedArray
}

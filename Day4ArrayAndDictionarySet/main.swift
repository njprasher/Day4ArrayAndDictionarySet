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

var country:[String] = []

    country += otherCountries

    country.append("India")
    country.append("Canada")
    country.append("USA")
    print("No. of Countries : \(country.count)")

//print("No. Of Contries : \(country.count)")

//func sortArray(arr: [Int] ) -> [Int]
//{
//    var sortedArray: [Int] = []
//
//    for i in arr
//    {
//        var j=i+1
//
//        for j in arr
//        {
//            if ( arr[i+1] < arr[i] )
//            {
//                var a = arr[i]
//                arr[i] = arr[j]
//                arr[j] = a
//            }
//        }
//    }
//
//    sortedArray = arr
//    return sortedArray
//}

func printN(n: Int)
{
    if (n == 0)
    {
        return
    }
    else
    {
        printN(n: n - 1)
        print(n)
    }
}

print("******** PrintN ********")

printN(n: 10)

func sumN(n: Int) -> Int {
    if (n == 0)
    {
       return 0
    }
    else
    {
        return n + sumN(n: n - 1)
    }
}

print("******** SUM *********")

print("Sum : \(sumN(n: 10))")

func printTheReversedArray(arr: [String], index: Int)
{
    if arr.isEmpty
    {
        return
    }
    else
    {
        if index == -1
        {
            return
        }
        else
        {
            print(arr[index])
            printTheReversedArray(arr: arr, index: index - 1)
        }
    }
}

print("******** Array Reverse *********")

printTheReversedArray(arr: country, index: country.count - 1)

print("******** Dictionary *********")

var countriesExample = [Int: String]()

var countryDictionary = ["key" : "value",
                         "IND" : "India",
                         "CAD" : "Canada",
                         "USA" : "United States Of America"
                        ]
print(countryDictionary)
print(countryDictionary["USA"] ?? "Key not Exist")
print(countryDictionary["USA"]!)
print(countryDictionary["PAK"] ?? "Key not Exist")

if let c = countryDictionary["PAK"]
{
    print(c)
}else {
    print("Key not exist (from else)")
    
}

countryDictionary["Pak"] = "Pakistan"

countryDictionary["Pak"] = "New Pakistan"

for (_, v) in countryDictionary
{
    print(v)
}

print("******** Set *********")

var mySet = Set<String>()

mySet.insert("India")
mySet.insert("USA")
mySet.insert("Canada")
mySet.insert("India")

print(mySet)

mySet.insert("Russia")

print(mySet)

var mySet2 = Set<String>()
mySet2.insert("India")
mySet2.insert("Pakistan")
mySet2.insert("Nepal")

let interSet = mySet.intersection(mySet2)
print(interSet)

let unionSet = mySet.union(mySet2)
print(unionSet)

let isDisjoinSet = mySet.isDisjoint(with: mySet2)
print(isDisjoinSet)

let minusSet = mySet.subtracting(mySet2)
print(minusSet)

let symmetricDifferenceSet = mySet.symmetricDifference(mySet2)
print(symmetricDifferenceSet)

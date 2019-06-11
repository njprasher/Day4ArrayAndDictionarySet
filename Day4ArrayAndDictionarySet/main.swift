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


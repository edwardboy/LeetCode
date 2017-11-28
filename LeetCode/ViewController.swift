//
//  ViewController.swift
//  LeetCode
//
//  Created by dfc on 2017/11/24.
//  Copyright © 2017年 dfc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let a = twoSum([2,7,11,15], 9);
        print(a);
        
        print("multiply" + "\(multiply("12", "12"))")
    }
    
    
    //  1、
    func twoSum(_ nums:[Int], _ target:Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if (nums[i] + nums[j] == target) {
                    return [i,j];
                }
            }
        }
        return [];
    }
    
    //  2、待测
    func multiply(_ num1: String, _ num2: String) -> String {
        let a = Int64.init(num1)!
        let b = Int64.init(num2 )!
        let c = a * b
        return "\(c)"
    }
    
    //  4、
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var numTemp : [Int] = []    // 初始化缓存数组
        for i in 0..<nums1.count { // 3
            numTemp.insert(nums1[i], at: i)
        }
        for i in 0..<nums2.count {  // 5
            numTemp.insert(nums2[i], at: nums1.count + i)
        }
        
        numTemp.sort()
        
        var medium = 0.0
        let length = numTemp.count
        
        let index = length/2
        
        if length%2==0 {   //  偶数
            let a = numTemp[index]
            let b = numTemp[index-1]
            medium = ((Double)(a + b)/2.0)
        }else { //  奇数
            medium = (Double)(numTemp[index]);
        }
        return medium;
    }
}


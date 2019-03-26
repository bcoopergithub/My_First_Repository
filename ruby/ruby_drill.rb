



#16  Define three arrays of numbers (minimum elements two).
arr1 = [0,3,9]
arr2 = [2, 3, 4]
arr3 = [9, 99, 999]

arr_of_arr = [arr1, arr2, arr3] #[[0,3,9],[1.2,3.2,8.0],[9,99,999]]
new_array = []
arr_of_arr.each do |arr_of_nums|  #(array list inside)
    # print(arr_of_nums)


    arr_of_nums.each do |nums|
        new_array << nums

    end
end
print new_array

# print arr_of_arr[0][0]


# example 2
#    array1=[3,"3",7]
#    a2 = [2,2,2]
#    array_of_nums=[1,9,11]
# def arr_mult(arr, num)
#     res_arr = []
#     arr.each do |elem|
#         res_arr <<elem * num
#     end
#     return res_arr
# end

# result1= arr_mult(array1,4)
# puts result1 # [12,3333,28]
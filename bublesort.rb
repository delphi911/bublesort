class Bubblesort
    def initialize
        @count=0
    end
    def issorted(arr)
        @sorted = true
        arr.each_with_index {|e,i| i==0 ? i : arr[i-1]>arr[i] ? @sorted=false : i}
        @sorted
    end
    def bubble_sort(arr)
        return if issorted(arr)
        arr.take(arr.count-@count).each_with_index do |e, i|
            if i==0
                #do nothing
            else
                if arr[i-1]>arr[i]
                    t=arr[i-1]
                    arr[i-1]=arr[i]
                    arr[i]=t
                end
            end #else if
        end #do
        @count +=1
        bubble_sort(arr)
        arr
    end
end

b=Bubblesort.new
p "Sorted values : #{b.bubble_sort([4,3,78,2,0,2])}"
c=Bubblesort.new
p "Sorted values : #{c.bubble_sort([9,8,7,6,7,5,1,3,4,2])}"

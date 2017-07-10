class OrangeTree


    def initialize
        @treeAge = 0
        @treeHeight = 0
        @treeOranges = 0
        @treeMaxHeight = 30
        @treeMaxOranges = 700
    end

    def oneYearPasses
        @treeAge += 1
        @treeHeight += rand(30 - @treeHeight)/5
        if @treeHeight > 20
            @treeOranges = rand(30).floor
        else
            @treeOranges = 0
        end
        if rand(100-@treeAge).floor == 0
            puts "tree has died :("
            @treeOranges = 0
            return "dead"
        end
        return "alive"
    end

    def height
        return @treeHeight
    end

    def age
        return @treeAge
    end

    def orangeCount
        return @treeOranges
    end

    def pickOrange
        if @treeOranges >= 1
            @treeOranges -= 1
        end
    end
end

tree = OrangeTree.new

treeStatus = "alive"
while treeStatus == "alive"
    treeStatus = tree.oneYearPasses
    puts "tree height:" + tree.height.to_s
    puts "tree age:" + tree.age.to_s
    puts "tree oranges:" + tree.orangeCount.to_s
    gets
end
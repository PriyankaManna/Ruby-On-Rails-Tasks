#pyramid pattern
##########################################################################
# 1. Pattern
"..
* 
* * 
* * * 
* * * * 
* * * * * 
."

def pattern1()
    rows = 5
    for row in 0..rows
        print "* "*row
        puts
    end
end
pattern1()





##########################################################################
# 2. Pattern

"..
* * * * * 
* * * * 
* * * 
* * 
* 
."
def pattern2()
    rows = 5
    rows.downto(0) do
        puts "* " * rows
        rows -= 1
    end
end
pattern2()





##########################################################################
# 3. Pattern
"..
* * * * * * * * * 
  * * * * * * * 
    * * * * * 
      * * * 
        * 
."
def pattern3()
    rows = 5
    star = 5
    for row in 0..rows
        print "  "*row
        print "* " * (2*star-1)
        star -= 1
        puts
    end
end
pattern3()





##########################################################################
# 4. Pattern
"..
        * 
      * * * 
    * * * * * 
  * * * * * * * 
* * * * * * * * * 
."
def pattern4()
        rows = 5
        space = 5
        for row in 1..rows
            print "  "*(space-1)
            print "* " *(2*row-1)
            space -= 1
            puts
        end
end
pattern4()





##########################################################################
# 5. Pattern
"..
* * * * * * * * * * 
* * * *     * * * * 
* * *         * * * 
* *             * * 
*                 *                     
*                 * 
* *             * * 
* * *         * * * 
* * * *     * * * * 
* * * * * * * * * * 
."
def pattern5()
      n = 5
      rows = n
      space = 0
      rows.downto(1) do
          print "* " * rows
          print "  "*space
          space += 2
          if rows == 1
            print "* " * rows
          else
            puts "* " * rows
          end
          rows -= 1
      end
      rows = n
      space = n
      for row in 0..rows
          print "* "*row
          print "  "*(2*space)
          puts "* "*row
          space -= 1
      end
  end
pattern5()
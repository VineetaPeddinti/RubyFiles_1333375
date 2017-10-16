def fun(x)
  y = ""
  until x== 0
    if x>= 1000
      y << "M"
      x-= 1000
      next
    elsif x>= 900
      y << "CM"
      x-= 900
      next
    elsif x>= 500
      y << "D"
      x-= 500
      next
    elsif x>= 400
      y << "CD"
      x-= 400
      next
    elsif x>= 100
      y << "C"
      x-= 100
      next
    elsif x>= 90
      y << "XC"
      x-= 90
      next
    elsif x>= 50
      y << "L"
      x-= 50
      next
    elsif x>= 40
      y << "XL"
      x-= 40
      next
    elsif x>= 10
      y << "X"
      x-= 10
      next
    elsif x>= 9
      y << "IX"
      x-= 9
      next
    elsif x>= 5
      y << "V"
      x-= 5
      next
    elsif x>= 4
      y << "IV"
      x-= 4
      next
    else x>= 1
      y << "I"
      x-= 1
    end
  end
 puts y
end

fun(1500)

coin = 100
point = 0

loop do
  puts "残りコイン数#{coin}"
  puts "ポイント#{point}"
  puts "何コイン入れますか？"
  puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
  putin = gets.to_i
  latch = [0,10,30,50]
  
  if putin == 4
    puts "また挑戦してね！"
    break
  elsif putin == 1||2||3
    if latch[putin] > coin
      puts "コインが足りません。"
      break
    end
  end
  
  puts "エンターを3回押して数字を揃えよう！"
  coin = coin - latch[putin]

  num1 = rand(9)
  num2 = rand(9)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(9)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(9)
  num9 = rand(9)

  puts = gets
  puts "--------------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts "--------------------"
  puts = gets
  puts "--------------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts "--------------------"
  puts = gets
  puts "--------------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "--------------------"

# case_pattern = ""
  if putin == 1
    case_pattern = "10コインの場合"
  elsif putin == 2
    case_pattern = "30コインの場合"
  elsif
    case_pattern = "50コインの場合"
  end
  
  case case_pattern
  when "10コインの場合"
    if (num2 == num5) && (num5 == num8)
      puts "おめでとう！一列揃いました"
      puts "100ポイント獲得です！"
      point += 100
      puts "--------------------"
    else
      puts "残念！"
      puts "--------------------"
    end
  when "30コインの場合"
    if (num1 == num4) && (num4 == num7)||(num2 == num5) && (num5 == num8)||(num3 == num6) && (num6 == num9)||
      puts "おめでとう！列揃いました"
      puts # 揃った数 × 100ポイントにしたい
      point += # 揃った数 × 100ポイント
      puts "--------------------"
    else
      puts "残念！"
      puts "--------------------"
    end
  end
end
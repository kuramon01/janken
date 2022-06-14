puts "じゃんけん..."

while true do
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  user_hand = gets.to_i
  computer_hand = rand(3)
  jankens = ["グー","チョキ","パー"]

  if (user_hand == 3) 
    return true

  elsif (user_hand == computer_hand)
    puts "------------------"
    puts "あなた：#{jankens[user_hand]}を出しました"
    puts "相手：#{jankens[computer_hand]}を出しました"
    puts "------------------"
    puts "あいこで..."

  elsif (user_hand == 0 && computer_hand == 1)||(user_hand == 1 && computer_hand == 2)||(user_hand == 2 && computer_hand == 0)
    puts "------------------"
    puts "あなた：#{jankens[user_hand]}を出しました"
    puts "相手：#{jankens[computer_hand]}を出しました"
    puts "------------------"
    puts "あなたの勝ちです！あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    user_direction = gets.to_i
    computer_direction = rand(3)
    acchimuite = ["上","下","左","右"]
    puts "ポイ！"
    if user_direction == computer_direction
      puts "------------------"
      puts "あなた：#{acchimuite[user_direction]}"
      puts "相手：#{acchimuite[computer_direction]}"
      puts "------------------"
      puts "あなたの勝ちです！(ゲーム終了)"
      return true
    else
      puts "------------------"
      puts "あなた：#{acchimuite[user_direction]}"
      puts "相手：#{acchimuite[computer_direction]}"
      puts "------------------"
      puts "残念！"
    end

  else
    puts "------------------"
    puts "あなた：#{jankens[user_hand]}を出しました"
    puts "相手：#{jankens[computer_hand]}を出しました"
    puts "------------------"
    puts "あなたの負けです。あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    user_direction = gets.to_i
    computer_direction = rand(3)
    acchimuite = ["上","下","左","右"]
    puts "ポイ！"
    if user_direction == computer_direction
      puts "------------------"
      puts "あなた：#{acchimuite[user_direction]}"
      puts "相手：#{acchimuite[computer_direction]}"
      puts "------------------"
      puts "あなたの負けです。(ゲーム終了)"
      return true
    else
      puts "------------------"
      puts "あなた：#{acchimuite[user_direction]}"
      puts "相手：#{acchimuite[computer_direction]}"
      puts "------------------"
      puts "さぁもう一度！"
    end
  end
end
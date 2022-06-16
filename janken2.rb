def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  user_hand = gets.to_i
  computer_hand = rand(3)
  jankens = ["グー","チョキ","パー"]
    
  if (user_hand == 3)
    exit
  end
  
  puts "------------------"
  puts "あなた：#{jankens[user_hand]}を出しました"
  puts "相手：#{jankens[computer_hand]}を出しました"
  puts "------------------"
  if (user_hand == computer_hand)
    puts "あいこで..."
    return false
  elsif (user_hand == 0 && computer_hand == 1)||(user_hand == 1 && computer_hand == 2)||(user_hand == 2 && computer_hand == 0)
    puts "あなたの勝ちです！あっち向いて〜"
    return true 
  else
    puts "あなたの負けです。あっち向いて〜"
    return true 
  end
end


def acchimuite_hoi
  puts "0(上)1(下)2(左)3(右)"
  user_direction = gets.to_i
  computer_direction = rand(3)
  acchimuite = ["上","下","左","右"]
  puts "ポイ！"
  puts "------------------"
  puts "あなた：#{acchimuite[user_direction]}"
  puts "相手：#{acchimuite[computer_direction]}"
  puts "------------------"

  if user_direction == computer_direction
    return true
  else
    puts "さぁもう一度！"
    return false
  end
end

while true do
  f1 = janken
  if f1 #ジャンケンで勝敗がついたら以下を繰り返す
    f2 = acchimuite_hoi
    if f2
      puts "勝敗がつきました"
      break
    end
  end
end
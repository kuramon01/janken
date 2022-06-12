require "csv"

loop do
  puts "1(新規でメモを作成) 2(既存のメモ編集する)"

  ## ユーザーの入力を待機
  memo_type = gets.to_s
  input_num = memo_type.chomp
 
  if input_num == "1"
    puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください"
    file_name = gets.chomp

    puts "メモの内容を記入してください。Ctrl+Dで保存します。"
    input_memo = STDIN.read 
    memo = input_memo.chomp

    CSV.open("#{file_name}.csv","w") do |csv|
      csv.puts ["#{memo}"]  # csvへの書き込み
    end
    break
  elsif input_num == "2"
    puts "既存のメモを編集します。拡張子を除いたファイル名を入力してください。"
    file_name = gets.chomp

    puts "メモの内容を追記してください。Ctrl+Dで保存します。"
    input_memo = STDIN.read 
    memo = input_memo.chomp

    CSV.open("#{file_name}.csv","a") do |csv| 
      csv.puts ["#{memo}"]  # csvへの書き込み
    end
    break
  else
    puts "1か2を入力してください。"
  end
end
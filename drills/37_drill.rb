def get_days(year, month)
    month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if month == 2
      if year % 4 == 0
        if year % 100 == 0 && year % 400 != 0
          days = 28
        else
          days = 29
        end
      else
        days = 28
      end
    else
      days = month_days[month - 1]
    end

    return days
  end

  puts "年を入力してください："
  year = gets.to_i
  puts "月を入力してください："
  month = gets.to_i

  days = get_days(year, month)
  puts "#{year}年#{month}月は#{days}日間あります"

## 解説
## 何をするコードですか？
# 年と月を入力すると、その月の日数を計算して表示するコードです。

## コードの意味
# def get_days(year, month)は、yearとmonthという引数を受け取る、get_daysという名前のメソッドを作るという意味。
# month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]は、各月の日数を配列として定義するという意味。
# if month == 2は、月が2月かどうかを判定する条件式。
# if year % 4 == 0は、年が4で割り切れるかどうかを判定する条件式。
# if year % 100 == 0 && year % 400 != 0は、年が100で割り切れるが400で割り切れない場合を判定する条件式。
# days = 28やdays = 29は、2月の日数を設定するという意味。
# else days = month_days[month - 1]は、2月以外の月の日数を設定するという意味。
# return daysは、計算した日数を返すという意味。

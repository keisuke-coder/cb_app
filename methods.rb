#プランの作成&表示
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(PLAN_FIRST_NUM) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
end

#プランを選択
def choice_plan(plans)
  print "プランの番号を選択 >"
  while true
    chosen_plan_num = gets.to_i
    break if (PLAN_FIRST_NUM..PLAN_LAST_NUM).include?(chosen_plan_num)
    puts "#{PLAN_FIRST_NUM}〜#{PLAN_LAST_NUM}で選択して下さい。"
  end
  chosen_plan = plans[chosen_plan_num - PLAN_FIRST_NUM]
end

#人数を選択
def choice_people(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts "何名で予約されますか? >"
  while true
    print "人数を入力 >"
    chosen_people_num = gets.to_i
    break if chosen_people_num >= 1
    puts "1以上を入力して下さい。"
  end
  chosen_people_num
end

#料金の計算&表示
def calculation(chosen_plan, chosen_people)
    total_price = chosen_plan[:price] * chosen_people
    if chosen_people >= DISCOUNT_QUANITY
      total_price *= DISCOUNT_RATE
      puts "#{DISCOUNT_QUANITY}名以上ですので10%割引となります"
    end
    puts "合計料金は#{total_price.floor}円になります。"
end
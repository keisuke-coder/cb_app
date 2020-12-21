require "./methods.rb"

plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

PLAN_FIRST_NUM = 1
PLAN_LAST_NUM = PLAN_FIRST_NUM + plans.length - 1
DISCOUNT_QUANITY = 5
DISCOUNT_NUM = 0.1
DISCOUNT_RATE = 1 - DISCOUNT_NUM 

disp_plan(plans)
chosen_plan = choice_plan(plans)
chosen_peopel = choice_people(chosen_plan)
calculation(chosen_plan, chosen_peopel)

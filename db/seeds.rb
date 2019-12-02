def generate
    url = 'http://jservice.io/api/clues?category='+rand(1..18418).to_s
    response = RestClient.get(url)
    $parsed_response = JSON.parse(response)
    value_check = [$parsed_response[0]['value'],$parsed_response[1]['value'],$parsed_response[2]['value'],$parsed_response[3]['value'],$parsed_response[4]['value']]
    if value_check.map {|x| x.nil?}.any? == true
        generate
    end
end

def value_check
    [$parsed_response[0]['value'],$parsed_response[1]['value'],$parsed_response[2]['value'],$parsed_response[3]['value'],$parsed_response[4]['value']]
end

round1 = Round.create(name: "Jeopardy")
generate

until value_check.include?(500)==true
    generate
end
category1 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue1 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category1)
clue2 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category1)
clue3 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category1)
clue4 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category1)
clue5 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category1)

generate
until value_check.include?(500)==true
    generate
end
category2 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue6 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category2)
clue7 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category2)
clue8 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category2)
clue9 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category2)
clue10 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category2)

generate
until value_check.include?(500)==true
    generate
end
category3 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue11 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category3)
clue12 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category3)
clue13 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category3)
clue14 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category3)
clue15 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category3)

generate
until value_check.include?(500)==true
    generate
end
category4 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue16 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category4)
clue17 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category4)
clue18 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category4)
clue19 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category4)
clue20 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category4)

generate
until value_check.include?(500)==true
    generate
end
category5 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue21 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category5)
clue22 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category5)
clue23 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category5)
clue24 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category5)
clue25 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category5)

generate
until value_check.include?(500)==true
    generate
end
category6 = Category.create(title: $parsed_response[0]['category']['title'], round: round1)
clue26 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category6)
clue27 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category6)
clue28 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category6)
clue29 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category6)
clue30 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category6)

round2 = Round.create(name: "Double Jeopardy")

generate
until value_check.include?(1000)==true
    generate
end
category7 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue31 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category7)
clue32 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category7)
clue33 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category7)
clue34 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category7)
clue35 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category7)

generate
until value_check.include?(1000)==true
    generate
end
category8 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue36 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category8)
clue37 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category8)
clue38 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category8)
clue39 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category8)
clue40 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category8)

generate
until value_check.include?(1000)==true
    generate
end
category9 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue41 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category9)
clue42 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category9)
clue43 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category9)
clue44 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category9)
clue45 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category9)

generate
until value_check.include?(1000)==true
    generate
end
category10 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue46 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category10)
clue47 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category10)
clue48 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category10)
clue49 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category10)
clue50 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category10)

generate
until value_check.include?(1000)==true
    generate
end
category11 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue51 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category11)
clue52 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category11)
clue53 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category11)
clue54 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category11)
clue55 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category11)

generate
until value_check.include?(1000)==true
    generate
end
category12 = Category.create(title: $parsed_response[0]['category']['title'], round: round2)
clue56 = Clue.create(value: $parsed_response[0]['value'], question: $parsed_response[0]['question'], answer: $parsed_response[0]['answer'], category: category12)
clue57 = Clue.create(value: $parsed_response[1]['value'], question: $parsed_response[1]['question'], answer: $parsed_response[1]['answer'], category: category12)
clue58 = Clue.create(value: $parsed_response[2]['value'], question: $parsed_response[2]['question'], answer: $parsed_response[2]['answer'], category: category12)
clue59 = Clue.create(value: $parsed_response[3]['value'], question: $parsed_response[3]['question'], answer: $parsed_response[3]['answer'], category: category12)
clue60 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category12)

round3 = Round.create(name: "Final Jeopardy")
generate
category13 = Category.create(title: $parsed_response[0]['category']['title'], round: round3)
clue61 = Clue.create(value: $parsed_response[4]['value'], question: $parsed_response[4]['question'], answer: $parsed_response[4]['answer'], category: category13)
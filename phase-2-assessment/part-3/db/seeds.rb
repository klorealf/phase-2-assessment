






names = ["Bike", "Computer", "Car", "Book", "Shoes"]
conditions = ["New", "Gently Used", "Fair", "Old"]
descriptions = ["Great addition!", "This is the latest version", "Only been used once"]

10.times do |i| Item.create(name: names.sample, user_id: 10, condition: conditions.sample,description: descriptions.sample,start_time: Date.new,end_time: Time.now)end



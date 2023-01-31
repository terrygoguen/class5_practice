# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
# SELECT COUNT(*) FROM COMPANIES;
puts "There are #{Company.all.count} companies"

new_company = Company.new 
new_company["name"] = "Apple"
new_company["city"] = "Cupert"
new_company["state"] = "CA"
new_company["url"] = "apple.com"
# puts new_company.inspect 
new_company.save 

new_company = Company.new 
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company["state"] = "WA"
new_company.save 

new_company = Company.new 
new_company["name"] = "StreamLayer"
new_company["city"] = "Chicago"
new_company["state"] = "CA"
new_company.save 

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

# all_companies = Company.all 
# puts all_companies.inspect 

cali_companies = Company.where({"state" => "CA"})
puts "cali companies = #{cali_companies.count}"

# 4. query companies table to find single row for Apple
# 5. read a row's column value
# apple = Company.where({"name" => "Apple"})[0]
apple = Company.find_by({"name" => "Apple"})
# puts apple.inspect
puts apple ["url"]



# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})
amazon["url"] = "amazon.com"
amazon.save #neeeeeeed this 
puts amazon.inspect 

# 7. delete a row

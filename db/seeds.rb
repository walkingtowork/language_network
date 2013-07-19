# Create Language List
language_list = File.open("db/language_list.txt")

language_list.each_line do |line|
  KnownLanguage.create(:name => line)
  DesiredLanguage.create(:name => line)
end
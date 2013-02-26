[{ :name_de => 'Amateur',    :name_en => 'Amateur' },
 { :name_de => 'Semi-Profi', :name_en => 'Semi pro' },
 { :name_de => 'Profi',      :name_en => 'Pro' },
 { :name_de => 'Gruppe',     :name_en => 'Group' }].each do |attributes|
  Ecm::Models::Category.create!(attributes)
end

[{ :name_de => 'Blau',    :name_en => 'Blue' },
 { :name_de => 'Braun',   :name_en => 'Brown' },
 { :name_de => 'Grün',    :name_en => 'Green' },
 { :name_de => 'Schwarz', :name_en => 'Black' }].each do |attributes|
  Ecm::Models::EyeColor.create!(attributes)
end

[{ :name_de => 'Männlich', :name_en => 'Male' },
 { :name_de => 'Weiblich', :name_en => 'Female' }].each do |attributes|
  Ecm::Models::Gender.create!(attributes)
end

[{ :name_de => 'Blond',   :name_en => 'Blond' },
 { :name_de => 'Rot',     :name_en => 'Red' },
 { :name_de => 'Braun',   :name_en => 'Brown' },
 { :name_de => 'Schwarz', :name_en => 'Black' },
 { :name_de => 'Grau',    :name_en => 'Grey' }].each do |attributes|
  Ecm::Models::HairColor.create!(attributes)
end

[{ :name_de => 'Asiatisch',     :name_en => 'Asian' },
 { :name_de => 'Dunkelhäutig',  :name_en => 'Coloured' },
 { :name_de => 'Europäisch',    :name_en => 'European' },
 { :name_de => 'International', :name_en => 'International' }].each do |attributes|
  Ecm::Models::SkinType.create!(attributes)
end


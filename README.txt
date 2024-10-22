Data Dictionary:

Pokemon:
-num: int, primary key. National Dex number
-name: text. Name of Pokemon
-type: text. Type of Pokemon
-height: int. Height in feet
-weight: int. Weight in lbs, rounded
-region: varchar(10), foreign key, references region(name). Region Pokemon is found in

Trainers:
-name: varchar(10), primary key. Name of trainer
-age: int. Age of trainer
-height: int. Height in feet
-region: varchar(10), foreign key references region(name). Region trainer is from
-pokenum: int, foreign key references pokemon(num). Partner Pokemon of trainer. Pokemon must be from same region.

Regions:
-name: varchar(10), primary key. Name of region.
-cardinality: text. Direction, North, South, East, West
-professor: text. Pokemon Professor found in region.


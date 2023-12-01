
CREATE TABLE Countries 
(
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(50),
    CapitalCity VARCHAR(50),
    PopulationCountry INT,
    OfficialLanguage VARCHAR(50),
    Currency VARCHAR(50),
    ContinentID int
);

CREATE TABLE CONTINENTS
(
ContinentID int Primary Key,
ContinentName varchar(50) UNIQUE
);

-- Add foreign key constraint to existing Countries table
ALTER TABLE Countries
ADD FOREIGN KEY (ContinentID) REFERENCES Continents(ContinentID);


CREATE TABLE Cities 
(
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50),
    CountryID INT,
    PopulationCity INT,
	FOREIGN KEY (StateID) REFERENCES States(StateID)
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE FamousMeal 
(
    MealID INT PRIMARY KEY,
    CityID INT,
    MealName VARCHAR(50),
	Price int,
	BestPlaceToTry varchar(50),
    CONSTRAINT FK_CityID FOREIGN KEY (CityID) REFERENCES Cities(CityID)
);


Create table BestPlace
(
PlaceID int Primary Key,
CityID int,
PlaceName varchar(50),
Description TEXT,
Rating int,
OpeningHours varchar(100),
EntryFee varchar(20),
CONSTRAINT FK_CityID_BestPlace FOREIGN KEY (CityID) REFERENCES Cities(CityID)
);


CREATE TABLE TransportApp 
(
    AppID INT PRIMARY KEY,
    CityID INT,
    AppName VARCHAR(50),
    CONSTRAINT fk_App FOREIGN KEY (CityID) REFERENCES Cities(CityID)
);


-------Insert data into my Continents table
INSERT INTO CONTINENTS(ContinentID, ContinentName)
VALUES 
  (1, 'Asia'),
  (2, 'Europe'),
  (3, 'North America'),
  (4, 'South America'),
  (5, 'Africa'),
  (6, 'Australia'),
  (7, 'Antarctica');

---create state table

CREATE TABLE States 
(
    StateID INT PRIMARY KEY,
    StateName VARCHAR(50),
    CapitalCity VARCHAR(50),
    PopulationStates INT,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);


-------- Insert data into my Countries table
INSERT INTO Countries (CountryID, CountryName, CapitalCity, PopulationCountry, OfficialLanguage, Currency, ContinentID)
VALUES
  (1, 'Austria', 'Vienna', 8917205, 'German', 'Euro', 2),
  (2, 'Belgium', 'Brussels', 11589623, 'Dutch French German', 'Euro', 2),
  (3, 'Bulgaria', 'Sofia', 6948445, 'Bulgarian', 'Bulgarian Lev', 2),
  (4, 'Croatia', 'Zagreb', 4105267, 'Croatian', 'Croatian Kuna', 2),
  (5, 'Republic of Cyprus', 'Nicosia', 1207359, 'Greek Turkish', 'Euro', 2),
  (6, 'Czech Republic', 'Prague', 10708981, 'Czech', 'Czech Koruna', 2),
  (7, 'Denmark', 'Copenhagen', 5792202, 'Danish', 'Danish Krone', 2),
  (8, 'Estonia', 'Tallinn', 1326535, 'Estonian', 'Euro', 2),
  (9, 'Finland', 'Helsinki', 5540720, 'Finnish', 'Euro', 2),
  (10, 'France', 'Paris', 65273511, 'French', 'Euro', 2),
  (11, 'Germany', 'Berlin', 83122889, 'German', 'Euro', 2),
  (12, 'Greece', 'Athens', 10423054, 'Greek', 'Euro', 2),
  (13, 'Hungary', 'Budapest', 9660351, 'Hungarian', 'Hungarian Forint', 2),
  (14, 'Ireland', 'Dublin', 4937786, 'Irish', 'Euro', 2),
  (15, 'Italy', 'Rome', 60461826, 'Italian', 'Euro', 2),
  (16, 'Latvia', 'Riga', 1886198, 'Latvian', 'Euro', 2),
  (17, 'Lithuania', 'Vilnius', 2722289, 'Lithuanian', 'Euro', 2),
  (18, 'Luxembourg', 'Luxembourg City', 634814, 'Luxembourgish', 'Euro', 2),
  (19, 'Malta', 'Valletta', 441543, 'Maltese', 'Euro', 2),
  (20, 'Netherlands', 'Amsterdam', 17134872, 'Dutch', 'Euro', 2),
  (21, 'Poland', 'Warsaw', 37846611, 'Polish', 'Polish Zloty', 2),
  (22, 'Portugal', 'Lisbon', 10196709, 'Portuguese', 'Euro', 2),
  (23, 'Romania', 'Bucharest', 19237691, 'Romanian', 'Romanian Leu', 2),
  (24, 'Slovakia', 'Bratislava', 5459642, 'Slovak', 'Euro', 2),
  (25, 'Slovenia', 'Ljubljana', 2078938, 'Slovenian', 'Euro', 2),
  (26, 'Spain', 'Madrid', 47329981, 'Spanish', 'Euro', 2),
  (27, 'Sweden', 'Stockholm', 10099265, 'Swedish', 'Swedish Krona', 2),
  (28, 'Afghanistan', 'Kabul', 38928346, 'Pashto_Dari', 'Afghan Afghani', 1),
  (29, 'Armenia', 'Yerevan', 2963243, 'Armenian', 'Armenian Dram', 1),
  (30, 'Azerbaijan', 'Baku', 10139177, 'Azerbaijani', 'Azerbaijani Manat', 1),
  (31, 'Bahrain', 'Manama', 1701575, 'Arabic', 'Bahraini Dinar', 1),
  (32, 'Bangladesh', 'Dhaka', 164689383, 'Bengali', 'Bangladeshi Taka', 1),
  (33, 'Bhutan', 'Thimphu', 771608, 'Dzongkha', 'Bhutanese Ngultrum', 1),
  (34, 'Brunei', 'Bandar Seri Begawan', 437479, 'Malay', 'Brunei Dollar', 1),
  (35, 'Cambodia', 'Phnom Penh', 16718965, 'Khmer', 'Cambodian Riel', 1),
  (36, 'China', 'Beijing', 1403500365, 'Mandarin', 'Renminbi', 1),
  (37, 'Cyprus', 'Nicosia', 1207359, 'Greek Turkish', 'Euro', 1),
  (38, 'Georgia', 'Tbilisi', 3989167, 'Georgian', 'Georgian Lari', 1),
  (39, 'India', 'New Delhi', 1380004385, 'Hindi', 'Indian Rupee', 1),
  (40, 'Indonesia', 'Jakarta', 273523615, 'Indonesian', 'Indonesian Rupiah', 1),
  (41, 'Iran', 'Tehran', 83992949, 'Persian', 'Iranian Rial', 1),
  (42, 'Iraq', 'Baghdad', 40222493, 'Arabic', 'Iraqi Dinar', 1),
  (43, 'Israel', 'Jerusalem', 8655535, 'Hebrew', 'Israeli New Shekel', 1),
  (44, 'Japan', 'Tokyo', 126476461, 'Japanese', 'Japanese Yen', 1),
  (45, 'Jordan', 'Amman', 10203140, 'Arabic', 'Jordanian Dinar', 1),
  (46, 'Kazakhstan', 'Nur-Sultan', 18776707, 'Kazakh', 'Kazakhstani Tenge', 1),
  (47, 'Kuwait', 'Kuwait City', 4270571, 'Arabic', 'Kuwaiti Dinar', 1),
  (48, 'Kyrgyzstan', 'Bishkek', 6524195, 'Kyrgyz', 'Kyrgyzstani Som', 1),
  (49, 'Laos', 'Vientiane', 7275560, 'Lao', 'Lao Kip', 1),
  (50, 'Lebanon', 'Beirut', 6825442, 'Arabic', 'Lebanese Pound', 1),
  (51, 'Malaysia', 'Kuala Lumpur', 32365999, 'Malay', 'Malaysian Ringgit', 1),
  (52, 'Maldives', 'Malé', 521389, 'Dhivehi', 'Maldivian Rufiyaa', 1),
  (53, 'Mongolia', 'Ulaanbaatar', 3278290, 'Mongolian', 'Mongolian Tugrik', 1),
  (54, 'Myanmar', 'Naypyidaw', 54409800, 'Burmese', 'Myanmar Kyat', 1),
  (55, 'Nepal', 'Kathmandu', 29136808, 'Nepali', 'Nepalese Rupee', 1),
  (56, 'North Korea', 'Pyongyang', 25778816, 'Korean', 'North Korean Won', 1),
  (57, 'Oman', 'Muscat', 5106626, 'Arabic', 'Omani Rial', 1),
  (58, 'Pakistan', 'Islamabad', 220892340, 'Urdu', 'Pakistani Rupee', 1),
  (59, 'Palestine', 'Ramallah', 5101414, 'Arabic', 'Israeli New Shekel', 1),
  (60, 'Philippines', 'Manila', 109581078, 'Filipino', 'Philippine Peso', 1),
  (61, 'Qatar', 'Doha', 2881053, 'Arabic', 'Qatari Riyal', 1),
  (62, 'Saudi Arabia', 'Riyadh', 34813871, 'Arabic', 'Saudi Riyal', 1),
  (63, 'Singapore', 'Singapore', 5850342, 'Malay_English_Mandarin_Tamil', 'Singapore Dollar', 1),
  (64, 'South Korea', 'Seoul', 51269185, 'Korean', 'South Korean Won', 1),
  (65, 'Sri Lanka', 'Colombo', 21413249, 'Sinhala_Tamil', 'Sri Lankan Rupee', 1),
  (66, 'Syria', 'Damascus', 17500658, 'Arabic', 'Syrian Pound', 1),
  (67, 'Taiwan', 'Taipei', 23816775, 'Mandarin', 'New Taiwan Dollar', 1),
  (68, 'Tajikistan', 'Dushanbe', 9537645, 'Tajik', 'Tajikistani Somoni', 1),
  (69, 'Thailand', 'Bangkok', 69799978, 'Thai', 'Thai Baht', 1),
  (70, 'Timor-Leste', 'Dili', 1318445, 'Tetum', 'United States Dollar', 1),
  (71, 'Turkey', 'Ankara', 84339067, 'Turkish', 'Turkish Lira', 1),
  (72, 'Turkmenistan', 'Ashgabat', 6031187, 'Turkmen', 'Turkmenistan Manat', 1),
  (73, 'United Arab Emirates', 'Abu Dhabi', 9890402, 'Arabic', 'UAE Dirham', 1),
  (74, 'Uzbekistan', 'Tashkent', 33469203, 'Uzbek', 'Uzbekistani Som', 1),
  (75, 'Vietnam', 'Hanoi', 97338579, 'Vietnamese', 'Vietnamese Dong', 1),
  (76, 'Antigua and Barbuda', 'St. Johns', 97929, 'English', 'Eastern Caribbean Dollar', 3),
  (77, 'Bahamas', 'Nassau', 393244, 'English', 'Bahamian Dollar', 3),
  (78, 'Barbados', 'Bridgetown', 287025, 'English', 'Barbadian Dollar', 3),
  (79, 'Belize', 'Belmopan', 397621, 'English', 'Belize Dollar', 3),
  (80, 'Canada', 'Ottawa', 37742154, 'English_French', 'Canadian Dollar', 3),
  (81, 'Costa Rica', 'San Jose', 5094118, 'Spanish', 'Costa Rican Colón', 3),
  (82, 'Cuba', 'Havana', 11326616, 'Spanish', 'Cuban Peso', 3),
  (83, 'Dominica', 'Roseau', 71986, 'English', 'Eastern Caribbean Dollar', 3),
  (84, 'Dominican Republic', 'Santo Domingo', 10847904, 'Spanish', 'Dominican Peso', 3),
  (85, 'El Salvador', 'San Salvador', 6486205, 'Spanish', 'United States Dollar', 3),
  (86, 'Grenada', 'St. George''s', 112523, 'English', 'Eastern Caribbean Dollar', 3),
  (87, 'Guatemala', 'Guatemala City', 17915568, 'Spanish', 'Guatemalan Quetzal', 3),
  (88, 'Haiti', 'Port-au-Prince', 11402533, 'Haitian _Creole_French', 'Haitian Gourde', 3),
  (89, 'Honduras', 'Tegucigalpa', 9904608, 'Spanish', 'Honduran Lempira', 3),
  (90, 'Jamaica', 'Kingston', 2961161, 'English', 'Jamaican Dollar', 3),
  (91, 'Mexico', 'Mexico City', 128932753, 'Spanish', 'Mexican Peso', 3),
  (92, 'Nicaragua', 'Managua', 6624554, 'Spanish', 'Nicaraguan Córdoba', 3),
  (93, 'Panama', 'Panama City', 4314767, 'Spanish_Panamanian_Balboa', 'United States Dollar', 3),
  (94, 'Saint Kitts and Nevis', 'Basseterre', 53192, 'English', 'Eastern Caribbean Dollar', 3),
  (95, 'Saint Lucia', 'Castries', 183627, 'English', 'Eastern Caribbean Dollar', 3),
  (96, 'Saint Vincent and the Grenadines', 'Kingstown', 110210, 'English', 'Eastern Caribbean Dollar', 3),
  (97, 'Trinidad and Tobago', 'Port of Spain', 1399488, 'English', 'Trinidad and Tobago Dollar', 3),
  (98, 'United States', 'Washington, D.C.', 331002651, 'English', 'United States Dollar', 3),
  (99, 'Argentina', 'Buenos Aires', 45195777, 'Spanish', 'Argentine Peso', 4),
  (100, 'Bolivia', 'Sucre', 11673021, 'Spanish', 'Bolivian Boliviano', 4),
  (101, 'Brazil', 'Brasília', 212559417, 'Portuguese', 'Brazilian Real', 4),
  (102, 'Chile', 'Santiago', 19116201, 'Spanish', 'Chilean Peso', 4),
  (103, 'Colombia', 'Bogotá', 50882891, 'Spanish', 'Colombian Peso', 4),
  (104, 'Ecuador', 'Quito', 17643054, 'Spanish', 'United States Dollar', 4),
  (105, 'Guyana', 'Georgetown', 786508, 'English', 'Guyanese Dollar', 4),
  (106, 'Paraguay', 'Asunción', 7132538, 'Spanish_Guarani', 'Paraguayan Guarani', 4),
  (107, 'Peru', 'Lima', 32971846, 'Spanish', 'Peruvian Sol', 4),
  (108, 'Suriname', 'Paramaribo', 586632, 'Dutch', 'Surinamese Dollar', 4),
  (109, 'Uruguay', 'Montevideo', 3473730, 'Spanish', 'Uruguayan Peso', 4),
  (110, 'Venezuela', 'Caracas', 28435943, 'Spanish', 'Venezuelan Bolívar', 4),
  (111, 'Algeria', 'Algiers', 43851044, 'Arabic', 'Algerian Dinar', 5),
  (112, 'Angola', 'Luanda', 32866272, 'Portuguese', 'Angolan Kwanza', 5),
  (113, 'Benin', 'Porto-Novo', 12123198, 'French', 'West African CFA franc', 5),
  (114, 'Botswana', 'Gaborone', 2351627, 'English', 'Botswana Pula', 5),
  (115, 'Burkina Faso', 'Ouagadougou', 20903273, 'French', 'West African CFA franc', 5),
  (116, 'Burundi', 'Bujumbura', 11890784, 'Kirundi_French_English', 'Burundian Franc', 5),
  (117, 'Cabo Verde', 'Praia', 555988, 'Portuguese', 'Cape Verdean Escudo', 5),
  (118, 'Cameroon', 'Yaoundé', 26545863, 'English_French', 'Central African CFA franc', 5),
  (119, 'Central African Republic', 'Bangui', 4829767, 'French', 'Central African CFA franc', 5),
  (120, 'Chad', 'N Djamena', 16425859, 'French_Arabic', 'Central African CFA franc', 5),
  (121, 'Comoros', 'Moroni', 869601, 'Comorian_Arabic_French', 'Comorian Franc', 5),
  (122, 'Democratic Republic of the Congo', 'Kinshasa', 89561403, 'French', 'Congolese Franc', 5),
  (123, 'Djibouti', 'Djibouti', 988000, 'French_Arabic', 'Djiboutian Franc', 5),
  (124, 'Egypt', 'Cairo', 102334404, 'Arabic', 'Egyptian Pound', 5),
  (125, 'Equatorial Guinea', 'Malabo', 1402985, 'Spanish_French_Portuguese', 'Central African CFA franc', 5),
  (126, 'Eritrea', 'Asmara', 3546421, 'Tigrinya_Arabic_English', 'Eritrean Nakfa', 5),
  (127, 'Eswatini', 'Mbabane', 1160164, 'Swazi_English', 'Swazi Lilangeni', 5),
  (128, 'Ethiopia', 'Addis Ababa', 114963588, 'Amharic', 'Ethiopian Birr', 5),
  (129, 'Gabon', 'Libreville', 2225734, 'French', 'Central African CFA franc', 5),
  (130, 'Gambia', 'Banjul', 2416668, 'English', 'Gambian Dalasi', 5),
  (131, 'Ghana', 'Accra', 31072945, 'English', 'Ghanaian Cedi', 5),
  (132, 'Guinea', 'Conakry', 13132795, 'French', 'Guinean Franc', 5),
  (133, 'Guinea-Bissau', 'Bissau', 1968001, 'Portuguese', 'West African CFA franc', 5),
  (134, 'Ivory Coast', 'Yamoussoukro', 26378274, 'French', 'West African CFA franc', 5),
  (135, 'Kenya', 'Nairobi', 53771296, 'Swahili_English', 'Kenyan Shilling', 5),
  (136, 'Lesotho', 'Maseru', 2142249, 'Sotho_English', 'Lesotho Loti', 5),
  (137, 'Liberia', 'Monrovia', 5057681, 'English', 'Liberian Dollar', 5),
  (138, 'Libya', 'Tripoli', 6871287, 'Arabic', 'Libyan Dinar', 5),
  (139, 'Madagascar', 'Antananarivo', 27691018, 'Malagasy_French_English', 'Malagasy Ariary', 5),
  (140, 'Malawi', 'Lilongwe', 19129952, 'Chichewa_English', 'Malawian Kwacha', 5),
  (141, 'Mali', 'Bamako', 20250833, 'French', 'West African CFA franc', 5),
  (142, 'Mauritania', 'Nouakchott', 4649658, 'Arabic', 'Mauritanian Ouguiya', 5),
  (143, 'Mauritius', 'Port Louis', 1271768, 'English_French_Mauritian Creole', 'Mauritian Rupee', 5),
  (144, 'Morocco', 'Rabat', 36910560, 'Arabic_Berber', 'Moroccan Dirham', 5),
  (145, 'Mozambique', 'Maputo', 31255435, 'Portuguese', 'Mozambican Metical', 5),
  (146, 'Namibia', 'Windhoek', 2540905, 'English_Afrikaans', 'Namibian Dollar', 5),
  (147, 'Niger', 'Niamey', 24206636, 'French', 'West African CFA franc', 5),
  (148, 'Nigeria', 'Abuja', 206139587, 'English', 'Nigerian Naira', 5),
  (149, 'Rwanda', 'Kigali', 12952218, 'Kinyarwanda_French_English', 'Rwandan Franc', 5),
  (150, 'Sao Tome and Principe', 'São Tomé', 219159, 'Portuguese', 'São Tomé and Príncipe Dobra', 5),
  (151, 'Senegal', 'Dakar', 16743927, 'French', 'West African CFA franc', 5),
  (152, 'Seychelles', 'Victoria', 98347, 'Seychellois Creole_English_French', 'Seychellois Rupee', 5),
  (153, 'Sierra Leone', 'Freetown', 7976983, 'English', 'Sierra Leonean Leone', 5),
  (154, 'Somalia', 'Mogadishu', 15893219, 'Somali_Arabic', 'Somali Shilling', 5),
  (155, 'South Africa', 'Pretoria_Bloemfontein_Cape Town', 59308690, 'Afrikaans_English', 'South African Rand', 5),
  (156, 'South Sudan', 'Juba', 11193725, 'English', 'South Sudanese Pound', 5),
  (157, 'Sudan', 'Khartoum', 43849260, 'Arabic_English', 'Sudanese Pound', 5),
  (158, 'Tanzania', 'Dodoma', 59734213, 'Swahili_English', 'Tanzanian Shilling', 5),
  (159, 'Togo', 'Lome', 8278724, 'French', 'West African CFA franc', 5),
  (160, 'Tunisia', 'Tunis', 11818619, 'Arabic', 'Tunisian Dinar', 5),
  (161, 'Uganda', 'Kampala', 45741000, 'English_Swahili', 'Ugandan Shilling', 5),
  (162, 'Zambia', 'Lusaka', 18383956, 'English', 'Zambian Kwacha', 5),
  (163, 'Zimbabwe', 'Harare', 14862927, 'English_Shona_Sindebele', 'Zimbabwean Dollar', 5),
  (164, 'Australia', 'Canberra', 25499884, 'English', 'Australian Dollar', 6),
  (165, 'Fiji', 'Suva', 896445, 'English_Fijian_Hindi', 'Fijian Dollar', 6),
  (166, 'Kiribati', 'Tarawa', 119449, 'English_Kiribati', 'Australian Dollar', 6),
  (167, 'Marshall Islands', 'Majuro', 59190, 'English_Marshallese', 'United States Dollar', 6),
  (168, 'Micronesia', 'Palikir', 115023, 'English', 'United States Dollar', 6),
  (169, 'Nauru', 'Yaren', 10824, 'English_Nauruan', 'Australian Dollar', 6),
  (170, 'New Zealand', 'Wellington', 4822233, 'English_M?ori', 'New Zealand Dollar', 6),
  (171, 'Palau', 'Ngerulmud', 18094, 'English_Palauan', 'United States Dollar', 6),
  (172, 'Papua New Guinea', 'Port Moresby', 8947024, 'English_Tok Pisin_Hiri Motu', 'Papua New Guinean Kina', 6),
  (173, 'Samoa', 'Apia', 198414, 'Samoan_English', 'Samoan Tala', 6),
  (174, 'Solomon Islands', 'Honiara', 686878, 'English', 'Solomon Islands Dollar', 6),
  (175, 'Tonga', 'Nuku alofa', 105695, 'Tongan_English', 'Tongan Pa anga', 6),
  (176, 'Tuvalu', 'Funafuti', 11792, 'Tuvaluan_English', 'Australian Dollar', 6),
  (177, 'Vanuatu', 'Port Vila', 307145, 'Bislama_English_French', 'Vanuatu Vatu', 6),
  (178, 'Western Sahara', 'El Aaiún', 597330, 'Arabic', 'Moroccan Dirham', 5),
  (179, 'Antarctica', NULL, 0, NULL, NULL, 7);

INSERT INTO Countries (CountryID, CountryName, CapitalCity, PopulationCountry, OfficialLanguage, Currency, ContinentID)
VALUES
  (180, 'United Kingdom', 'London', 67886004, 'English', 'British Pound Sterling',2);


-- Insert data for States(United States and United Kingdom) into the States table
INSERT INTO States (StateID, StateName, CapitalCity, PopulationStates, CountryID)
VALUES
  (1, 'Alabama', 'Montgomery', 4908621, 98),
  (2, 'Alaska', 'Juneau', 734002, 98),
  (3, 'Arizona', 'Phoenix', 7378494, 98),
  (4, 'Arkansas', 'Little Rock', 3038999, 98),
  (5, 'California', 'Sacramento', 39937489, 98),
  (6, 'Colorado', 'Denver', 5845526, 98),
  (7, 'Connecticut', 'Hartford', 3563077, 98),
  (8, 'Delaware', 'Dover', 982895, 98),
  (9, 'Florida', 'Tallahassee', 21992985, 98),
  (10, 'Georgia', 'Atlanta', 10736059, 98),
  (11, 'Hawaii', 'Honolulu', 1412687, 98),
  (12, 'Idaho', 'Boise', 1826156, 98),
  (13, 'Illinois', 'Springfield', 12659682, 98),
  (14, 'Indiana', 'Indianapolis', 6745354, 98),
  (15, 'Iowa', 'Des Moines', 3179849, 98),
  (16, 'Kansas', 'Topeka', 2910357, 98),
  (17, 'Kentucky', 'Frankfort', 4499692, 98),
  (18, 'Louisiana', 'Baton Rouge', 4648794, 98),
  (19, 'Maine', 'Augusta', 1344212, 98),
  (20, 'Maryland', 'Annapolis', 6083116, 98),
  (21, 'Massachusetts', 'Boston', 6949503, 98),
  (22, 'Michigan', 'Lansing', 9986857, 98),
  (23, 'Minnesota', 'St. Paul', 5639632, 98),
  (24, 'Mississippi', 'Jackson', 2976149, 98),
  (25, 'Missouri', 'Jefferson City', 6137428, 98),
  (26, 'Montana', 'Helena', 1068778, 98),
  (27, 'Nebraska', 'Lincoln', 1934408, 98),
  (28, 'Nevada', 'Carson City', 3080156, 98),
  (29, 'New Hampshire', 'Concord', 1371246, 98),
  (30, 'New Jersey', 'Trenton', 8936574, 98),
  (31, 'New Mexico', 'Santa Fe', 2117522, 98),
  (32, 'New York', 'Albany', 19453561, 98),
  (33, 'North Carolina', 'Raleigh', 10488084, 98),
  (34, 'North Dakota', 'Bismarck', 762062, 98),
  (35, 'Ohio', 'Columbus', 11689100, 98),
  (36, 'Oklahoma', 'Oklahoma City', 3956971, 98),
  (37, 'Oregon', 'Salem', 4217737, 98),
  (38, 'Pennsylvania', 'Harrisburg', 12801989, 98),
  (39, 'Rhode Island', 'Providence', 1059361, 98),
  (40, 'South Carolina', 'Columbia', 5148714, 98),
  (41, 'South Dakota', 'Pierre', 884659, 98),
  (42, 'Tennessee', 'Nashville', 6833174, 98),
  (43, 'Texas', 'Austin', 28995881, 98),
  (44, 'Utah', 'Salt Lake City', 3205958, 98),
  (45, 'Vermont', 'Montpelier', 623989, 98),
  (46, 'Virginia', 'Richmond', 8626207, 98),
  (47, 'Washington', 'Olympia', 7693612, 98),
  (48, 'West Virginia', 'Charleston', 1792147, 98),
  (49, 'Wisconsin', 'Madison', 5822434, 98),
  (50, 'Wyoming', 'Cheyenne', 578759, 98);


  -- Insert data for states in the United Kingdom into the States table
INSERT INTO States (StateID, StateName, CapitalCity, PopulationStates, CountryID)
VALUES
  (51, 'England', 'London', 56075968, 40),
  (52, 'Scotland', 'Edinburgh', 5450575, 40),
  (53, 'Wales', 'Cardiff', 3164519, 40),
  (54, 'Northern Ireland', 'Belfast', 1893660, 40);

---add unique to CityName to Cities table
ALTER TABLE Cities
ADD CONSTRAINT UC_CityName UNIQUE (CityName);


---insert citites to my citites table
  INSERT INTO Cities (CityID, CityName, CountryID, PopulationCity, StateID)
VALUES
(1, 'Baku', 30, 2300000, NULL),
(2, 'Krakow', 21, 779115, NULL),
(3, 'Warsaw', 21, 1790658, NULL),
(4, 'Gdansk', 21, 470907, NUll),
(5, 'Milano', 15, 1396000, NULL),
(6, 'Lapland', 9,178522, NULL),
(7, 'Ganja', 30, 332600, NULL),
(8, 'London', 40, 8982256, 51),
(9, 'Edinburgh', 40, 488100, 52),
(10, 'Berlin', 11, 3669491, NULL),  
(11, 'Paris', 10, 2140526, NULL), 
(12, 'Rome', 15, 2872800, NULL),  
(13, 'Madrid', 26, 3348536, NULL),  
(14, 'Amsterdam', 20, 821752, NULL),  
(15, 'Stockholm', 27, 975551, NULL),  
(16, 'Athens', 12, 664046, NULL),  
(17, 'Istanbul', 71, 15460525, NULL),  
(18, 'Sydney', 164, 5312163, NULL),  
(19, 'Mumbai', 39, 12442373, NULL),  
(20, 'Cairo', 124, 9754844, NULL),  
(21, 'Bangkok', 69, 8372350, NULL),  
(22, 'Seville', 26, 689434, NULL), 
(23, 'Montreal', 80, 1704694, NULL),  
(24, 'Copenhagen', 7, 616098, NULL),  
(25, 'Dublin', 14, 544107, NULL), 
(26, 'Seoul', 64, 9720846, NULL),  
(27, 'Tokyo', 44, 13929286, NULL),  
(28, 'Beijing', 36, 21723000, NULL),  
(29, 'Moscow', 178, 12616824, NULL),  
(30, 'Cape Town', 155, 433688, NULL),  
(31, 'Rio de Janeiro', 101, 6753560, NULL),   
(32, 'Mexico City', 91, 9209944, NULL),  
  (33, 'New York City', 98, 8336817, 32),  
  (34, 'Los Angeles', 98, 3980400, 5),  
  (35, 'Toronto', 80, 2731571, NULL),  
  (36, 'Nairobi', 135, 4397073, NULL),  
  (37, 'Buenos Aires', 99, 3075646, NULL),  
  (38, 'Lima', 107, 10628470, NULL),  
  (39, 'Marrakech', 144, 928850, NULL), 
  (40, 'Dubai', 73, 3136910, NULL),  
  (41, 'Singapore', 63, 5896688, NULL),  
  (42, 'Prague', 6, 1301132, NULL),      
  (43, 'Budapest', 13, 1752286, NULL),  
  (44, 'Reykjavik', 179, 130166, NULL),  
  (45, 'Riga', 16, 632614, NULL), 
(46,'Vienna', 1, 1897491, NULL),  
(47, 'Brussels', 2, 185103, NULL),  
(48, 'Sofia', 3, 1305596, NULL),  
(49, 'Nashville', 98, 694144, 42),  
(50, 'Salt Lake City', 98, 200591, 44), 
(51, 'Miami', 98, 467963, 9),
(52, 'Las Vegas', 98, 651319, 28),
(53, 'Boston', 98, 694583, 21);

-- insert BestPlace
INSERT INTO BestPlace (PlaceID, CityID, PlaceName, Description, Rating, OpeningHours, EntryFee)
VALUES
(1, 1, 'Baku Old City', 'Historical site with ancient architecture', 4, '9:00 AM - 6:00 PM', 'Free'),
(2, 1, 'Flame Towers', 'Modern skyscrapers with LED displays', 4, '24/7', NULL),
(3, 1, 'Heydar Aliyev Center', 'Architectural masterpiece by Zaha Hadid', 5, '10:00 AM - 6:00 PM', '20 AZN'),
(4, 1, 'Maiden Tower', 'Historical tower with panoramic views', 4, '9:00 AM - 7:00 PM', '10 AZN'),
(5, 2, 'Wawel Castle', 'Historical castle with royal chambers', 5, '9:00 AM - 5:00 PM', '25 PLN'),
(6, 2, 'Main Market Square', 'Large medieval market square', 4, '24/7', 'Free'),
(7, 3, 'Wilanow Palace', 'Baroque royal palace with gardens', 4, '10:00 AM - 6:00 PM', '30 PLN'),
(8, 3, 'Old Town Market Place', 'Historical market square in Old Town', 3, '8:00 AM - 8:00 PM', 'Free'),
(9, 2, 'St. Mary\ s Basilica', 'Gothic church with impressive altarpiece', 4, '9:00 AM - 6:00 PM', '15 PLN'),
(10, 2, 'Tatra National Park', 'National park with stunning mountain views', 5, 'Open all day', 'Free'),
(11, 2, 'Wieliczka Salt Mine', 'Historic salt mine with underground chambers', 4, '9:00 AM - 5:00 PM', '49 PLN'),
(12, 2, 'Gubalowka', 'Mountain offering panoramic views of the Tatras', 4, '8:00 AM - 8:00 PM', '20 PLN'),
(13, 4, 'Old Town Gdansk', 'Historic center with colorful buildings.', 4, '9:00 AM - 7:00 PM', 'Free'),
(14, 4, 'Mariacka Street', 'Cobbled street with amber shops.', 3, '10:00 AM - 6:00 PM', 'Free'),
(15, 5, 'Duomo di Milano', 'Cathedral with stunning architecture.', 5, '8:00 AM - 8:00 PM', '12 EUR'),
(16, 5, 'Galleria Vittorio Emanuele II', 'Luxurious shopping gallery.', 4, '9:00 AM - 10:00 PM', 'Free'),
(17, 4, 'Gdansk Crane', 'Historic crane by the river.', 4, '10:00 AM - 5:00 PM', '10 PLN'),
(18, 4, 'Oliwa Cathedral', 'Baroque cathedral with an organ concert.', 4, '9:00 AM - 6:00 PM', '15 PLN'),
(19, 5, 'Sforza Castle', 'Historical castle with art collections.', 4, '10:00 AM - 7:00 PM', '10 EUR'),
(20, 5, 'Navigli District', 'Canal district with trendy bars and shops.', 3, 'Varies by venue', 'Free'),
(21, 6, 'Santa Claus Village', 'Magical village with Santa Claus and his reindeer.', 5, '10:00 AM - 5:00 PM', 'Free'),
(22, 7, 'Nizami Street', 'Central street with shops and cafes.', 4, '9:00 AM - 8:00 PM', 'Free'),
(23, 8, 'British Museum', 'World-renowned museum with a vast collection.', 5, '10:00 AM - 5:30 PM', 'Free'),
(24, 8, 'The Shard', 'Iconic skyscraper with panoramic views.', 4, '10:00 AM - 10:00 PM', '30 GBP'),
(26, 7, 'Ganja State Philharmonic', 'Cultural venue for music and performances.', 3, 'Varies by event', NULL),
(27, 8, 'Tower of London', 'Historic castle on the banks of the River Thames.', 5, '9:00 AM - 5:30 PM', '27.50 GBP'),
(29, 8, 'Big Ben', 'Iconic clock tower and part of the Palace of Westminster.', 5, 'Open for exterior view 24/7', 'Free'),
(30, 8, 'The National Gallery', 'Art museum with an extensive collection of paintings.', 4, '10:00 AM - 6:00 PM', 'Free'),
(31, 9, 'Edinburgh Castle', 'Historic castle with panoramic views of the city.', 5, '9:30 AM - 5:00 PM', '18 GBP'),
(32, 9, 'Royal Mile', 'Historic street with shops, pubs, and street performers.', 4, '24/7', 'Free'),
(33, 10, 'Brandenburg Gate', 'Iconic neoclassical gate and symbol of Berlin.', 5, 'Open for exterior view 24/7', 'Free'),
(34, 10, 'Museum Island', 'Island with world-renowned museums and historical buildings.', 4, 'Varies by museum', NULL),
(35, 11, 'Eiffel Tower', 'Iconic wrought-iron tower with breathtaking views.', 5, '9:00 AM - 11:45 PM', '25 EUR'),
(36, 11, 'Louvre Museum', 'World s largest art museum and historic monument.', 4, '9:00 AM - 6:00 PM', '17 EUR'),
(37, 12, 'Colosseum', 'Ancient amphitheater and iconic symbol of Rome.', 5, '8:30 AM - 7:15 PM', '16 EUR'),
(38, 12, 'Vatican City', 'Independent city-state within Rome with St. Peter\ s Basilica and the Sistine Chapel.', 5, 'Varies by attraction',NULL),
(39, 13, 'Prado Museum', 'Main Spanish national art museum.', 4, '10:00 AM - 8:00 PM', '15 EUR'),
(40, 13, 'Retiro Park', 'Large park with gardens, sculptures, and a lake.', 4, 'Open all day', 'Free'),
(41, 14, 'Anne Frank House', 'Museum dedicated to the Jewish wartime diarist Anne Frank.', 4, '9:00 AM - 10:00 PM', '14 EUR'),
(42, 14, 'Van Gogh Museum', 'Art museum dedicated to the works of Vincent van Gogh.', 5, '9:00 AM - 6:00 PM', '19 EUR'),
(43, 15, 'Vasa Museum', 'Museum displaying the Vasa warship.', 4, '10:00 AM - 5:00 PM', '150 SEK'),
(44, 15, 'Gamla Stan', 'Historic old town with narrow streets and colorful buildings.', 4, '24/7', 'Free'),
(45, 16, 'Acropolis Museum', 'Museum focused on the findings of the Acropolis archaeological site.', 5, '9:00 AM - 5:00 PM', '5 EUR'),
(46, 16, 'Parthenon', 'Ancient temple on the Acropolis dedicated to the goddess Athena.', 5, '8:00 AM - 8:00 PM', '12 EUR'),
(47, 17, 'Hagia Sophia', 'Former Greek Orthodox Christian basilica, later an Ottoman imperial mosque.', 5, '9:00 AM - 7:00 PM', '100 TRY'),
(48, 17, 'Topkapi Palace', 'Historic palace that was the primary residence of the Ottoman Sultans.', 4, '9:00 AM - 6:00 PM', '100 TRY'),
(49, 18, 'Sydney Opera House', 'Iconic performing arts venue with a distinctive sail-like design.', 5, 'Varies by event', NULL),
(50, 18, 'Bondi Beach', 'Popular beach with golden sands and great surfing.', 4, 'Open all day', 'Free'),
(51, 19, 'Gateway of India', 'Historic arch monument built during the 20th century.', 4, '24/7', 'Free'),
(52, 19, 'Chhatrapati Shivaji Maharaj Terminus', 'Historic railway station and UNESCO World Heritage Site.', 4, 'Varies by train schedule', NULL),
(53, 20, 'Pyramids of Giza', 'Ancient pyramid complex and one of the Seven Wonders of the Ancient World.', 5, '8:00 AM - 5:00 PM', '150 EGP'),
(54, 20, 'Egyptian Museum', 'Museum with a vast collection of ancient Egyptian artifacts.', 4, '9:00 AM - 7:00 PM', '120 EGP'),
(55, 21, 'Grand Palace', 'Historic royal palace with stunning architecture.', 4, '8:30 AM - 3:30 PM', '500 THB'),
(56, 21, 'Wat Arun', 'Buddhist temple with a central spire and river views.', 4, '8:30 AM - 5:30 PM', '50 THB'),
(57, 22, 'Alcazar of Seville', 'Royal palace with stunning Mudejar, Renaissance, and Gothic architecture.', 5, '9:30 AM - 5:00 PM', '12 EUR'),
(58, 22, 'Plaza de España', 'Semicircular plaza with a canal and bridges.', 4, 'Open all day', 'Free'),
(59, 23, 'Old Montreal', 'Historic district with cobblestone streets and architecture.', 4, '24/7', 'Free'),
(60, 23, 'Mont Royal Park', 'Large park with a viewpoint overlooking the city.', 4, 'Open all day', 'Free'),
(61, 24, 'Tivoli Gardens', 'Amusement park with rides, shows, and gardens.', 4, 'Varies by season', NULL),
(62, 24, 'Nyhavn', 'Colorful harbor with historic buildings and waterfront cafes.', 4, '24/7', 'Free'),
(63, 25, 'Guinness Storehouse', 'Museum and brewery experience at the home of Guinness.', 5, '9:30 AM - 7:00 PM', '25 EUR'),
(64, 25, 'Trinity College Library', 'Library with the Book of Kells and Long Room.', 4, '9:30 AM - 5:00 PM', '14 EUR'),
(65, 26, 'Gyeongbokgung Palace', 'Historic palace with traditional architecture.', 4, '9:00 AM - 5:00 PM', '3,000 KRW'),
(66, 26, 'N Seoul Tower', 'Iconic tower with panoramic views of the city.', 4, '10:00 AM - 11:00 PM', '11,000 KRW'),
(67, 27, 'Tokyo Skytree', 'Tallest structure in Japan with observation decks.', 4, '8:00 AM - 10:00 PM', '2,100 JPY'),
(68, 27, 'Senso-ji Temple', 'Historic Buddhist temple in Asakusa.', 4, '6:00 AM - 5:00 PM', 'Free'),
(69, 28, 'Forbidden City', 'Imperial palace complex with extensive grounds.', 5, '8:30 AM - 5:00 PM', '60 CNY'),
(70, 28, 'Great Wall of China', 'World-famous wall with breathtaking views.', 5, 'Varies by section', NULL),
(71, 29, 'Red Square', 'Central square with iconic landmarks.', 4, '24/7', 'Free'),
(72, 29, 'St. Basil\ s Cathedral', 'Colorful cathedral on Red Square.', 5, '10:00 AM - 6:00 PM', '700 RUB'),
(73, 30, 'Table Mountain', 'Iconic flat-topped mountain with cableway access.', 5, '8:00 AM - 5:00 PM', '300 ZAR'),
(74, 30, 'Victoria & Alfred Waterfront', 'Harbor area with shops, restaurants, and attractions.', 4, 'Varies by venue', NULL),
(75, 31, 'Christ the Redeemer', 'Iconic statue atop Corcovado mountain.', 5, '8:00 AM - 7:00 PM', '30 BRL'),
(76, 31, 'Copacabana Beach', 'World-famous beach with a vibrant atmosphere.', 4, 'Open all day', 'Free'),
(77, 32, 'Teotihuacan', 'Ancient Mesoamerican city with pyramids.', 5, '9:00 AM - 5:00 PM', '85 MXN'),
(78, 32, 'Chapultepec Castle', 'Historic castle with gardens and city views.', 4, '9:00 AM - 5:00 PM', '75 MXN'),
(79, 33, 'Central Park', 'Iconic urban park with various recreational activities.', 5, 'Open all day', 'Free'),
(80, 33, 'Statue of Liberty', 'Iconic statue on Liberty Island symbolizing freedom.', 4, '9:30 AM - 5:00 PM', '18.50 USD'),
(81, 34, 'Hollywood Walk of Fame', 'Sidewalk with stars honoring notable personalities in the entertainment industry.', 4, 'Varies by location', 'Free'),
(82, 34, 'Santa Monica Pier', 'Historic pier with an amusement park, aquarium, and family-friendly attractions.', 4, 'Varies by attraction', NULL),
(83, 35, 'CN Tower', 'Iconic tower with an observation deck and glass floor.', 5, '9:00 AM - 10:30 PM', '38 CAD'),
(84, 35, 'Royal Ontario Museum', 'Museum with diverse collections of art, culture, and natural history.', 4, '10:00 AM - 5:30 PM', '20 CAD'),
(85, 36, 'Nairobi National Park', 'Wildlife reserve near the city center with a variety of animals.', 4, '6:00 AM - 6:00 PM', '43 USD'),
(86, 36, 'Giraffe Centre', 'Conservation center with giraffe feeding experiences.', 4, '9:00 AM - 5:30 PM', '15 USD'),
(87, 37, 'La Boca Neighborhood', 'Colorful neighborhood known for its vibrant street art and tango culture.', 4, 'Varies by venue', NULL),
(88, 37, 'Recoleta Cemetery', 'Historic cemetery with ornate mausoleums.', 4, '7:00 AM - 6:00 PM', 'Free'),
(89, 38, 'Miraflores Boardwalk', 'Coastal boardwalk with parks, gardens, and ocean views.', 4, 'Open all day', 'Free'),
(90, 38, 'Historic Centre of Lima', 'UNESCO World Heritage Site with historic architecture.', 4, 'Varies by attraction', NULL),
(91, 39, 'Jardin Majorelle', 'Garden with vibrant blue structures and exotic plants.', 4, '8:00 AM - 6:00 PM', '70 MAD'),
(92, 39, 'Medina of Marrakech', 'Historic district with bustling souks and medieval architecture.', 4, 'Varies by shop', NULL),
(93, 40, 'Burj Khalifa', 'Tallest building in the world with an observation deck.', 5, '8:30 AM - 11:00 PM', '149 AED'),
(94, 40, 'The Dubai Mall', 'Largest shopping mall with entertainment and dining options.', 4, '10:00 AM - 12:00 AM', NULL),
(95, 41, 'Gardens by the Bay', 'Futuristic park with Supertrees and Flower Dome.', 5, '5:00 AM - 2:00 AM', NULL),
(96, 41, 'Marina Bay Sands', 'Iconic resort with a rooftop pool and SkyPark.', 4, 'Varies by venue', NULL),
(97, 42, 'Prague Castle', 'Historic castle complex with Gothic, Romanesque, and Baroque architecture.', 5, '6:00 AM - 10:00 PM', NULL),
(98, 42, 'Charles Bridge', 'Iconic medieval bridge with statues and panoramic views.', 4, '24/7', 'Free'),
(99, 43, 'Buda Castle', 'Historic castle on the Buda side of the Danube River.', 4, 'Varies by attraction', NULL),
(100, 43, 'Fisherman\ s Bastion', 'Architectural and historical lookout terrace with panoramic views.', 4, '9:00 AM - 11:00 PM', 'Free'),
(101, 44, 'Hallgrímskirkja', 'Iconic Lutheran church with a modern design.', 4, '9:00 AM - 5:00 PM', 'Free'),
(102, 44, 'Blue Lagoon', 'Geothermal spa with mineral-rich waters.', 5, '8:00 AM - 10:00 PM', NULL),
(103, 45, 'Old Town Riga', 'Historic district with medieval architecture and cobblestone streets.', 4, '24/7', 'Free'),
(104, 45, 'Riga Central Market', 'Large and vibrant market with diverse products.', 4, '7:00 AM - 8:00 PM', 'Free'),
(105,46, 'Schönbrunn Palace', 'Imperial summer residence with gardens and zoo.', 5, '8:00 AM - 5:30 PM', NULL),
(106, 46, 'St. Stephen\ s Cathedral', 'Gothic cathedral with a tall spire and panoramic views.', 4, '6:00 AM - 10:00 PM', 'Free'),
(107, 47, 'Grand Place', 'Central square with opulent guildhalls and the Town Hall.', 5, '24/7', 'Free'),
(108, 47, 'Atomium', 'Iconic building and museum with spheres connected by tubes.', 4, '10:00 AM - 6:00 PM', '15 EUR'),
(109, 48, 'Alexander Nevsky Cathedral', 'Orthodox cathedral with stunning architecture.', 4, '7:00 AM - 6:00 PM', 'Free'),
(110, 48, 'Vitosha Mountain', 'Mountain with hiking trails and panoramic views of Sofia.', 4, 'Open all day', 'Free'),
(111, 49, 'Grand Ole Opry', 'Famous country music stage and radio show.', 5, 'Varies by show', NULL),
(112, 49, 'Country Music Hall of Fame', 'Museum celebrating the history of country music.', 4, '9:00 AM - 5:00 PM', NULL),
(113, 50, 'Temple Square', 'Religious and cultural square with gardens and historic buildings.', 4, 'Open all day', 'Free'),
(114, 50, 'Great Salt Lake', 'Large saltwater lake with recreational activities.', 4, 'Varies by location', NULL),
(115, 51, 'South Beach', 'Iconic beach with art deco architecture and vibrant nightlife.', 4, 'Open all day', 'Free'),
(116, 51, 'Wynwood Walls', 'Outdoor art gallery with colorful murals.', 4, '10:30 AM - 11:00 PM', 'Free'),
(117, 52, 'The Strip', 'Famous boulevard with hotels, casinos, and entertainment.', 5, '24/7', 'Free'),
(118, 52, 'Fremont Street Experience', 'Entertainment district with light shows and live music.', 4, 'Varies by venue', NULL),
(119, 53, 'Freedom Trail', 'Historic trail passing by 16 significant locations.', 4, 'Varies by attraction', NULL),
(120, 53, 'Boston Common', 'Central public park with recreational activities.', 4, 'Open all day', 'Free');


-- Insert data into TransportApp table
INSERT INTO TransportApp (AppID, CityID, AppName)
VALUES
(1, 1, 'BakuBus'),
(2, 2, 'Jakdojade'),
(3, 3, 'Jakdojade'),
(4, 4, 'Jakdojade'),
(5, 5, 'ATM Milano Official App'),
(6, 6, 'No specific app available'),
(7, 7, 'No specific app available'),
(8,8,'TfL Oyster and Contactless'),
(9, 9, 'Transport for Edinburgh'),
(10, 10, 'BVG FahrInfo Plus'),
(11, 11, 'RATP: Subway, Bus, RER, Bikes - Paris'),
(12, 12, 'Rome Mobility'),
(13, 13, 'EMT Madrid'),
(14, 14, '9292'),
(15, 15, 'SL (Stockholm Public Transport)'),
(16, 16, 'OASA Telematics'),
(17, 17, 'Istanbul Kart'),
(18, 18, 'Transport for NSW'),
(19, 19, 'Mumbai Local Train Timetable'),
(20, 20, 'Cairo Transport'),
(21, 21, 'BTS SkyTrain,MRT Bangkok'),
(22, 22, 'TUSSAN'),
(23, 23, 'STM'),
(24, 24, 'DOT Mobilbilletter'),
(25, 25, 'Transport for Ireland'),
(26, 26, 'Seoul Metro Subway,Kakao T Map'),
(27, 27, 'Japan Travel by NAVITIME'),
(28, 28, 'Beijing Subway'),
(29, 29, 'Moscow Metro Map and Route Planner'),
(30, 30, 'Go Metro Cape Town'),
(31, 31, 'Moovit: Bus, Train & Metro'),
(32, 32, 'CDMX'),
(33, 33, 'MyTransit NYC Subway, Bus, Rail'),
(34, 34, 'LA Metro and Bus'),
(35, 35, 'Transit: Bus & Subway Times'),
(36, 36, 'Ma3Route'),
(37, 37, 'Como Llego BA'),
(38, 38, 'Moovit: Bus, Train & Metro'),
(39, 39, 'No specific app available'),
(40, 40, 'RTA Dubai'),
(41, 41, 'MyTransport Singapore'),
(42, 42, 'IDOS'),
(43, 43, 'BKK Futar'),
(44, 44, 'Stræto'),
(45, 45, 'Rigassatiksme'),
(46, 46, 'WienMobil'),
(47, 47, 'STIB/MIVB'),
(48, 48, 'SofiaUrban Mobility Center'),
(49,49,'MTA Transit'),
(50,50,'Transit: Bus & Train Times'),
(51,51,'Miami-Dade Transit Tracker'),
(52,52,'RTC Transit'),
(53,53,'MBTA mTicket');

ALTER TABLE FamousMeal DROP COLUMN Description;
ALTER TABLE FamousMeal DROP COLUMN Recipe;
ALTER TABLE FamousMeal DROP COLUMN Ingredients;

--insert data to FamousMeal table
INSERT INTO FamousMeal (MealID, CityID, MealName, Price, BestPlaceToTry)
VALUES

-- For Baku
INSERT INTO FamousMeal (MealID, CityID, MealName, Price, BestPlaceToTry)
VALUES
(1, 1, 'Baku Biryani Bliss', 25, 'Spice Haven'),
(2, 2, 'Krakow Pierogi Perfection', 20, 'Pierogi Palace'),
(3, 3, 'Warsaw Bigos Delight', 22, 'Bigos Bistro'),
(4, 4, 'Gdansk Amber Ale Stew', 28, 'Ale & Stew Tavern'),
(5, 5, 'Milano Risotto Romance', 30, 'Risotto Ristorante'),
(6, 6, 'Lapland Arctic Salmon Feast', 35, 'Arctic Salmon Grill'),
(7, 7, 'Ganja Kebab Extravaganza', 30, 'Kebab Kingdom'),
(8, 8, 'London Fish and Chips Delight', 18, 'Chippy Charm'),
(9, 9, 'Edinburgh Haggis Heaven', 25, 'Haggis Hideaway'),
(10, 10, 'Berlin Currywurst Carnival', 15, 'Wurst Wonderland'),
(11, 11, 'Parisian Coq au Vin', 30, 'Vin et Poulet'),
(12, 12, 'Roman Carbonara Delight', 25, 'Carbonara Heaven'),
(13, 13, 'Madrid Paella Fiesta', 35, 'Paella Palace'),
(14, 14, 'Amsterdam Stroopwafel Delight', 10, 'Stroopwafel Haven'),
(15, 15, 'Stockholm Swedish Meatballs', 18, 'Meatball Majesty'),
(16, 16, 'Athenian Moussaka Marvel', 28, 'Moussaka Masterpiece'),
(17, 17, 'Istanbul Kebab Extravaganza', 30, 'Kebab Kingdom'),
(18, 18, 'Sydney Barramundi Bliss', 35, 'Barramundi Bistro'),
(19, 19, 'Mumbai Street Food Extravaganza', 15, 'Street Food Paradise'),
(20, 20, 'Cairo Koshary Feast', 20, 'Koshary Kingdom'),
(21, 21, 'Bangkok Pad Thai Delight', 25, 'Pad Thai Paradise'),
(22, 22, 'Seville Paella Fiesta', 30, 'Paella Fiesta'),
(23, 23, 'Montreal Smoked Meat Delight', 18, 'Smoked Meat Haven'),
(24, 24, 'Copenhagen Smørrebrød Feast', 22, 'Smørrebrød Paradise'),
(25, 25, 'Dublin Irish Stew', 28, 'Irish Stew Haven'),
(26, 26, 'Seoul Kimchi Delight', 20, 'Kimchi Kingdom'),
(27, 27, 'Tokyo Ramen Delight', 25, 'Ramen Kingdom'),
(28, 28, 'Beijing Peking Duck Feast', 35, 'Peking Duck Palace'),
(29, 29, 'Moscow Borscht Bliss', 20, 'Borscht Bistro'),
(30, 30, 'Cape Town Bunny Chow Delight', 18, 'Bunny Chow Bliss'),
(31, 31, 'Rio de Janeiro Feijoada Fiesta', 30, 'Feijoada Paradise'),
(32, 32, 'Mexico City Tacos Extravaganza', 15, 'Tacos Haven'),
(33, 33, 'New York City Pizza Perfection', 20, 'Pizza Paradise'),
(34, 34, 'Los Angeles Street Taco Fiesta', 12, 'Street Taco Delight'),
(35, 35, 'Toronto Poutine Paradise', 18, 'Poutine Palace'),
(36, 36, 'Nairobi Nyama Choma Feast', 25, 'Nyama Choma Haven'),
(37, 37, 'Buenos Aires Asado Extravaganza', 30, 'Asado Paradise'),
(38, 38, 'Lima Ceviche Delight', 22, 'Ceviche Haven'),
(39, 39, 'Marrakech Tagine Fiesta', 28, 'Tagine Palace'),
(40, 40, 'Dubai Shawarma Delight', 15, 'Shawarma Haven'),
(41, 41, 'Singapore Laksa Perfection', 25, 'Laksa Paradise'),
(42, 42, 'Prague Trdelník Delight', 12, 'Trdelník Haven'),
(43, 43, 'Budapest Goulash Feast', 30, 'Goulash Palace'),
(44, 44, 'Reykjavik Skyr Parfait', 18, 'Skyr Delight'),
(45, 45, 'Riga Black Balsam Delight', 22, 'Balsam Bliss'),
(46, 46, 'Vienna Schnitzel Perfection', 28, 'Schnitzel Paradise'),
(47, 47, 'Brussels Waffle Extravaganza', 15, 'Waffle Haven'),
(48, 48, 'Sofia Banitsa Delight', 20, 'Banitsa Bliss'),
(49, 49, 'Nashville Hot Chicken Feast', 25, 'Hot Chicken Haven'),
(50, 50, 'Salt Lake City Fry Sauce Delight', 18, 'Fry Sauce Paradise'),
(51, 51, 'Miami Cubano Sandwich Delight', 22, 'Cubano Haven'),
(52, 52, 'Las Vegas Buffet Extravaganza', 35, 'Buffet Paradise'),
(53, 53, 'Boston Lobster Roll Delight', 30, 'Lobster Roll Haven');



































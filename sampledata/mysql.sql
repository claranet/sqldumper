CREATE TABLE `customer` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `region` varchar(50) default NULL,
  `country` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `postalZip` varchar(15) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Palmer Callahan","1-574-564-6845","Victoria","Sweden","ipsum.dolor@icloud.couk","8005 Ut Street","49560"),
  ("Nayda Henson","1-250-648-5553","Mersin","China","etiam@yahoo.org","P.O. Box 964, 9481 Sed Rd.","P4J 1P2"),
  ("Pamela Walters","1-821-555-5389","Antioquia","Singapore","maecenas.ornare@aol.com","887-1642 Non, Ave","23545"),
  ("Quentin Salinas","1-318-526-2186","Liguria","Russian Federation","ornare@hotmail.net","P.O. Box 802, 8613 Dis Rd.","16594"),
  ("Chester Thomas","1-771-623-3555","Glamorgan","China","id.ante.nunc@outlook.net","Ap #721-8096 Mi Avenue","506952"),
  ("Tyrone Blankenship","(134) 124-5056","Katsina","South Africa","duis.gravida@google.couk","Ap #529-6018 Ornare. Rd.","454723"),
  ("Lareina Richard","1-793-810-9178","Andalucía","Singapore","in@icloud.com","Ap #854-1391 Feugiat Rd.","6742"),
  ("Kyra Bright","(812) 104-2714","Uttarakhand","Ireland","proin.sed@google.com","Ap #978-8655 Lectus, Road","5740"),
  ("Imogene Fuentes","1-851-752-3465","Ancash","Austria","imperdiet.nec@yahoo.org","246-477 Facilisis Rd.","61260-958"),
  ("Maya Whitaker","1-535-314-1261","Idaho","Brazil","commodo@google.net","P.O. Box 835, 6597 Orci. St.","43226");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Madeline Davis","(738) 238-6948","Maule","Ukraine","iaculis.quis@google.org","915-4599 Etiam Street","6774"),
  ("Jonas Clements","1-555-535-5472","Diyarbakır","South Korea","phasellus.ornare@icloud.couk","Ap #848-9874 Tellus Street","18547"),
  ("Justina Juarez","(107) 168-3112","Tyrol","Spain","ornare@yahoo.net","293-5355 Non, Road","21967-88831"),
  ("Norman Jackson","(554) 858-4521","łódzkie","Brazil","ligula@yahoo.edu","178-2688 Mauris Av.","71434"),
  ("Lunea Roth","(278) 606-4661","Alajuela","Pakistan","est.nunc@aol.couk","997-6437 Consectetuer Av.","8215-8203"),
  ("Ginger Farrell","(327) 272-2552","Limón","New Zealand","nec.euismod@google.com","847-1036 Magnis Road","8572"),
  ("Elton Benjamin","1-555-344-4137","Tyrol","Australia","dapibus.gravida@outlook.com","Ap #265-8706 Curae Road","4853"),
  ("Rae Brock","(424) 667-6664","Heredia","Vietnam","nunc@hotmail.com","795-7021 Ipsum Rd.","77209"),
  ("Candice Francis","(886) 575-4784","Quảng Ninh","United Kingdom","mollis.integer@yahoo.com","407-5248 Fusce Av.","5516"),
  ("Prescott Mosley","1-354-433-7382","Dōngběi","Chile","lorem@protonmail.com","229-555 Sollicitudin Street","45L 2H5");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Dominic Levy","(783) 481-4534","Balıkesir","Italy","elementum.at@outlook.org","8786 Morbi Ave","8960"),
  ("Ray Campbell","(477) 457-8035","Östergötlands län","France","purus@hotmail.org","P.O. Box 918, 8567 Dolor. Ave","8321"),
  ("Andrew Combs","(937) 863-6379","West Bengal","Singapore","sed.id@yahoo.com","755-434 Sodales. Rd.","11516"),
  ("Vera Farley","(304) 884-0947","Kirov Oblast","Vietnam","nullam.suscipit@protonmail.net","135-3405 Eu Rd.","284781"),
  ("Elliott Winters","(366) 759-0537","Van","Brazil","non.sollicitudin@aol.couk","Ap #552-797 Nibh. Street","759032"),
  ("Alisa Dennis","1-382-376-0625","Goa","Ukraine","arcu.sed@protonmail.net","P.O. Box 831, 5748 Neque Avenue","6252"),
  ("Brynne Benjamin","1-714-456-1915","East Region","Germany","vehicula.pellentesque@outlook.couk","P.O. Box 664, 6589 Tempus St.","58224-956"),
  ("Bruce Higgins","(895) 282-6204","Euskadi","Nigeria","dignissim.pharetra@google.net","P.O. Box 557, 2471 Sed Road","13029"),
  ("Alan Levine","(386) 827-1317","Jönköpings län","Austria","lacus.pede@outlook.com","Ap #432-8119 Consectetuer Avenue","58-755"),
  ("Malcolm Wolf","(752) 616-1466","South Island","Norway","dui@yahoo.net","904-455 Arcu. Av.","870338");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Aurelia Riley","1-313-654-2671","Kyiv oblast","Netherlands","lacus.vestibulum@protonmail.com","394-1230 Eget Ave","521754"),
  ("Ronan Johns","(577) 432-5387","Castilla - La Mancha","Brazil","dictum.proin@google.couk","P.O. Box 189, 707 Mi Rd.","41041"),
  ("Amy Mcpherson","(369) 903-5594","Piura","Netherlands","curabitur.ut@aol.org","Ap #272-5731 Bibendum. St.","42577"),
  ("Ryan Dyer","1-392-587-6142","Ilocos Region","Indonesia","hendrerit@outlook.org","4073 At Road","55199"),
  ("Susan Vaughn","1-480-741-4701","New South Wales","Singapore","est.vitae@hotmail.net","882-4818 Nibh Road","95-379"),
  ("Rogan Sims","1-596-234-1121","Auvergne","Nigeria","quis.arcu.vel@icloud.ca","2065 Mattis Street","886811"),
  ("Philip Norris","1-792-654-3476","Vorarlberg","China","ut.tincidunt.vehicula@yahoo.com","254-1479 Duis Ave","56-055"),
  ("Brianna Benton","(284) 218-0758","Styria","Pakistan","posuere@icloud.net","372-1856 Rhoncus. Ave","S8W 7B6"),
  ("Hedy Sloan","(261) 158-5718","Balıkesir","Brazil","neque.sed@icloud.edu","P.O. Box 827, 7490 Sodales Ave","2113-5231"),
  ("Alika Dixon","(558) 239-7628","Balochistan","Costa Rica","class.aptent@aol.ca","292-8623 Quisque Ave","4472");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Barry Singleton","1-151-243-1625","Victoria","Singapore","non@protonmail.ca","5794 Pellentesque Av.","22747"),
  ("Lance Walter","1-566-823-7397","Waals-Brabant","Poland","arcu.morbi@google.couk","Ap #875-6421 Commodo Street","3166-9664"),
  ("Jacqueline Cardenas","(467) 557-4902","Agder","Ireland","sed.malesuada.augue@outlook.edu","833-236 Amet, Road","78240"),
  ("Igor Beard","1-888-642-6357","Brandenburg","Colombia","tortor.nibh@google.net","198-467 Et, Avenue","892716"),
  ("Jaden Norton","(460) 146-9052","Guanacaste","Peru","ut.mi@google.edu","671-169 Phasellus Road","6747"),
  ("Byron Solomon","(722) 628-2992","Zuid Holland","Philippines","justo@hotmail.edu","Ap #452-5649 Nisi. St.","3518"),
  ("Aline Rojas","(742) 276-6459","Antioquia","Nigeria","commodo.ipsum.suspendisse@outlook.edu","499-3382 Ligula Av.","Y1Y 6E6"),
  ("Ferris Jenkins","(638) 252-1141","Lazio","Russian Federation","amet.metus@aol.ca","Ap #709-5130 Luctus Av.","396774"),
  ("Sylvester Lindsay","1-651-749-7988","Balochistan","Singapore","lobortis@aol.edu","Ap #704-1857 Nulla. St.","392207"),
  ("Mollie Cole","1-207-514-8754","Languedoc-Roussillon","Poland","nascetur.ridiculus@aol.edu","982-5354 Congue Rd.","71604");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Yuli Navarro","1-165-274-2072","Vorarlberg","Germany","amet.consectetuer@aol.com","Ap #762-1506 Lorem Avenue","2418"),
  ("Irma Macias","(108) 455-4098","Tennessee","United States","curabitur@icloud.edu","615-5593 Nec Road","38785488"),
  ("Zahir Melton","(339) 744-2769","Sardegna","Russian Federation","commodo.auctor@protonmail.org","P.O. Box 770, 1318 Cras St.","30701"),
  ("Tyrone Rowe","1-953-482-3275","Vlaams-Brabant","South Africa","malesuada.vel@protonmail.org","9886 Lorem Av.","054552"),
  ("Berk Sellers","1-657-384-0666","Paraíba","Canada","sit.amet.ornare@aol.couk","Ap #281-2866 Proin Street","569161"),
  ("Brett Todd","1-212-261-1137","Murcia","Sweden","amet.ornare@hotmail.net","Ap #730-2650 Rhoncus. Street","825297"),
  ("Jael Lopez","1-745-997-8041","Maharastra","Canada","felis.ullamcorper@outlook.org","P.O. Box 258, 2521 Convallis Rd.","66753"),
  ("Allistair Carrillo","1-306-783-6616","Montana","Poland","cras@protonmail.net","P.O. Box 725, 202 Ante Av.","29976"),
  ("Sean Pennington","1-125-701-3848","FATA","South Korea","sed.dictum.eleifend@hotmail.net","747-1311 Cras Avenue","159655"),
  ("Yvonne Osborn","1-234-363-5072","Carinthia","Poland","sed@google.com","353-8438 Vitae Rd.","35865");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Winter Carey","1-716-355-4269","Ulyanovsk Oblast","New Zealand","vitae@outlook.couk","Ap #802-5856 Ridiculus Road","72352"),
  ("Keaton Salas","1-152-245-4525","South Island","Ukraine","cursus.et@google.couk","Ap #183-5524 Placerat, Street","11657"),
  ("Timothy Santos","(136) 317-2884","Murmansk Oblast","Peru","pellentesque.tincidunt@aol.org","989-5772 Ante Avenue","18313"),
  ("Kellie Burris","1-699-361-6602","Paraná","Netherlands","nulla@protonmail.edu","Ap #685-4418 Velit Street","236976"),
  ("Judah Sargent","(395) 303-4304","North West","China","proin.mi.aliquam@yahoo.com","280-5334 Lectus St.","53499"),
  ("Luke Shepard","(518) 202-6774","Utrecht","South Africa","nisi@protonmail.couk","9417 Lacus. Road","R4Y 1H2"),
  ("Marcia Jennings","(765) 456-5017","łódzkie","Mexico","ornare.libero.at@outlook.net","7954 At, St.","532686"),
  ("Zephr Franklin","1-272-747-3396","Araucanía","Costa Rica","ultrices@hotmail.org","167-4707 Sem Rd.","3615"),
  ("Tate Leach","1-268-454-7685","Sindh","South Africa","egestas.aliquam.nec@google.net","P.O. Box 963, 4986 Eget Road","7870-8729"),
  ("Simon Mccarthy","1-684-834-6085","Punjab","China","orci.consectetuer.euismod@icloud.com","Ap #476-8567 Neque. Avenue","38-024");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Samson Little","1-779-309-4541","Metropolitana de Santiago","Ukraine","at.risus.nunc@hotmail.org","1749 Nec Road","33-654"),
  ("Tobias Weeks","1-438-643-5487","South Jeolla","United Kingdom","donec.luctus@icloud.ca","8410 Velit. Avenue","24659"),
  ("Cassandra George","(261) 314-4734","Xīběi","Spain","iaculis.lacus.pede@hotmail.com","Ap #861-6233 Non Av.","83636"),
  ("Ira Knowles","(454) 470-1806","Leinster","Colombia","dolor.vitae.dolor@google.couk","588-7173 Vitae Av.","5337"),
  ("Fatima Weaver","(476) 436-1558","Maranhão","South Korea","sem.nulla.interdum@yahoo.com","P.O. Box 294, 1971 Cursus Road","878728"),
  ("Forrest Farley","(676) 373-2474","Hawaii","United States","duis.a@icloud.net","911-3297 Elit. Rd.","835751"),
  ("Troy Santos","(648) 907-1643","North West","Brazil","tincidunt@google.edu","1607 Malesuada Rd.","6468"),
  ("Lillian Weaver","1-963-799-0265","Connacht","Turkey","arcu.iaculis@google.com","Ap #340-7226 Praesent Road","2355"),
  ("Colton White","(525) 661-7147","Minas Gerais","Ireland","felis.purus@outlook.com","Ap #328-141 Dolor Rd.","6290"),
  ("Rhiannon Camacho","(349) 625-3367","Burgenland","Pakistan","gravida.aliquam@hotmail.net","P.O. Box 795, 8101 Semper Avenue","4397-7393");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Dahlia Rasmussen","1-261-926-0189","North Island","South Africa","ipsum.dolor.sit@hotmail.com","8898 Dui. Rd.","027732"),
  ("Keaton Holden","(566) 275-5241","Tasmania","Vietnam","magna.malesuada.vel@icloud.com","9673 Etiam Rd.","995240"),
  ("Eleanor Chapman","1-596-417-3161","Waals-Brabant","Austria","lacinia.vitae.sodales@outlook.edu","Ap #507-359 Ipsum Rd.","5399"),
  ("Gareth Potts","(297) 229-4658","Henegouwen","Chile","pharetra.felis.eget@icloud.net","P.O. Box 131, 1664 Et Rd.","CL3 8WU"),
  ("Jemima Trujillo","(424) 831-6722","Limón","United States","sed.id@hotmail.couk","P.O. Box 477, 1602 Vitae Rd.","40K 8Y2"),
  ("Clark Britt","(517) 140-0255","Lima","Ireland","lorem.eget.mollis@protonmail.edu","218-6760 Dolor, Road","58038"),
  ("Todd Hahn","(952) 519-9755","Trøndelag","Ireland","nullam.nisl@hotmail.com","677-9096 Sed Road","238844"),
  ("Francis Rios","1-673-862-1928","Phú Thọ","France","ligula.elit.pretium@hotmail.com","650-6399 Iaculis Avenue","34-933"),
  ("Kelly Baxter","(216) 675-7213","Maranhão","Ireland","sed.molestie@outlook.net","875-973 Tempus, Ave","48782-02730"),
  ("Brianna Boyle","(809) 624-8081","Gauteng","South Korea","purus@google.ca","1476 Facilisis St.","6365 XG");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Angelica Dawson","1-657-962-4709","Ontario","Brazil","vulputate.ullamcorper@yahoo.org","484-9871 Nec Road","Y3C 1EO"),
  ("Jonas Payne","1-548-667-2642","Ulster","Indonesia","ipsum@icloud.net","Ap #473-7624 Orci, Rd.","303011"),
  ("Maxine Spence","1-723-232-6118","North Jeolla","Ukraine","ornare.lectus.justo@google.edu","Ap #512-2331 Aliquam Avenue","879421"),
  ("Dalton Burris","(385) 705-7816","Balochistan","Norway","ut@yahoo.couk","6282 Maecenas St.","2819 QB"),
  ("Lysandra Newton","(727) 736-8522","Nunavut","United Kingdom","iaculis@aol.ca","Ap #938-5365 Amet, St.","8776"),
  ("Anjolie Wilcox","(258) 884-0464","Trøndelag","South Korea","nisl.maecenas@hotmail.com","790-9984 Sed Street","28252"),
  ("Teegan Ochoa","1-712-306-8136","KwaZulu-Natal","Spain","metus.vivamus@protonmail.edu","Ap #912-9615 Suspendisse Rd.","787127"),
  ("Shea Russell","(815) 664-1424","New Brunswick","New Zealand","sed.eget.lacus@google.edu","484-7936 Est Street","NB4 5NO"),
  ("Zephr Carver","1-307-945-0976","Khyber Pakhtoonkhwa","Spain","diam@yahoo.com","851-2780 Ornare, Road","21107"),
  ("Alfonso Marsh","1-231-107-6632","Daman and Diu","Sweden","hendrerit.consectetuer@aol.edu","P.O. Box 447, 4199 Mi Street","1383");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Cleo Suarez","1-910-827-6597","Paraíba","Nigeria","pellentesque.habitant.morbi@hotmail.com","198-3988 In, Street","06544"),
  ("Kyle Hays","1-669-361-9287","Arequipa","Singapore","vivamus.rhoncus.donec@yahoo.net","P.O. Box 225, 3623 Sem, Street","413699"),
  ("Maris Gross","(208) 312-2759","Quebec","Russian Federation","imperdiet.ornare@yahoo.edu","P.O. Box 424, 9188 Varius St.","317974"),
  ("Kato Schmidt","(644) 567-7734","Puglia","Austria","convallis.convallis.dolor@icloud.couk","Ap #547-737 Enim Road","25-032"),
  ("Hunter Riley","(422) 225-3839","Friuli-Venezia Giulia","Australia","aliquam.vulputate@icloud.net","Ap #732-5330 Mi Road","L5G 0BM"),
  ("Paloma Kennedy","1-442-618-0627","Lakshadweep","Pakistan","est.arcu@yahoo.ca","Ap #702-5920 Facilisis St.","6055 EM"),
  ("Basil Boyer","(562) 566-8375","Oklahoma","South Korea","morbi.vehicula@outlook.ca","Ap #501-7640 Leo. Av.","5357"),
  ("Avram Ortiz","(475) 392-1054","Heredia","Canada","facilisis.vitae@icloud.couk","Ap #174-3583 Vestibulum St.","66897"),
  ("Jasper Mack","(563) 142-3873","Free State","Norway","rhoncus.donec@aol.org","315-8908 Eu, Av.","KG7 0BV"),
  ("Quon Benson","1-776-782-7611","Kansas","Ireland","est.vitae.sodales@aol.org","Ap #413-4877 Metus Av.","04761");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Maisie Puckett","1-768-178-2826","Carinthia","Canada","tellus.phasellus@protonmail.edu","1366 In, Ave","236984"),
  ("Talon Reyes","(436) 275-8463","Manipur","Singapore","in.aliquet@yahoo.com","Ap #153-8099 Fringilla. Rd.","8338 DE"),
  ("Jocelyn Kirk","1-846-529-8431","South Island","Brazil","mus.aenean@yahoo.ca","P.O. Box 544, 3866 Cursus Avenue","4008"),
  ("David Ayers","1-654-648-4486","North Jeolla","Mexico","eu.dolor@google.edu","704-5336 Ultrices. Street","8242"),
  ("Roary Dale","(424) 430-6873","Munster","China","sociis.natoque@hotmail.net","911-2708 Pretium St.","98524-643"),
  ("Mariam Frye","(497) 737-1867","Troms og Finnmark","Spain","aliquam.arcu.aliquam@outlook.net","Ap #796-3115 Et Rd.","7355"),
  ("Griffin Saunders","(577) 339-3422","Namen","India","urna.ut.tincidunt@hotmail.couk","536-753 Tincidunt St.","344174"),
  ("Janna Stephens","(780) 267-9981","North Region","United Kingdom","lobortis.nisi@hotmail.com","P.O. Box 447, 1154 Iaculis, Ave","71365"),
  ("Nyssa Bailey","1-256-801-3598","North Island","Austria","diam.vel@aol.edu","P.O. Box 970, 4651 Dui, St.","632873"),
  ("Wilma Sanchez","(651) 757-5674","Puno","Ukraine","maecenas.ornare@protonmail.edu","Ap #122-6441 Suscipit, Road","323094");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Ann Cummings","(453) 574-7400","Sachsen-Anhalt","Brazil","scelerisque.dui@google.edu","109-2071 Tellus Rd.","174771"),
  ("Garrison Church","(530) 558-2788","Piura","Mexico","libero.nec@aol.org","Ap #367-9330 Pede Ave","JS5 6AW"),
  ("Ingrid Greer","1-369-428-4876","Kemerovo Oblast","Pakistan","aliquam.erat.volutpat@hotmail.couk","P.O. Box 702, 2472 Tortor. Street","566462"),
  ("Yardley Lyons","(233) 801-2148","Basilicata","Austria","arcu.nunc.mauris@protonmail.com","624-3002 Vulputate, Road","6562 JL"),
  ("Kimberley Lloyd","(817) 211-5332","California","India","tincidunt.nunc@protonmail.org","Ap #434-6196 Adipiscing Avenue","31317432"),
  ("Aidan Mclaughlin","1-531-234-1514","South Island","India","lobortis.risus@protonmail.net","653-8544 Tempus Av.","30611"),
  ("Robert Gross","1-555-240-2344","Eastern Cape","Indonesia","enim.commodo@hotmail.org","153-5004 Arcu. St.","56863"),
  ("Price Bowen","(458) 530-1158","Nunavut","Austria","ultricies.adipiscing.enim@icloud.com","890-115 Cum Ave","1012"),
  ("Noel Moon","1-161-828-6714","Saskatchewan","Sweden","duis.sit@protonmail.net","624-5171 Lacinia Street","953838"),
  ("Thomas Riddle","(510) 951-6638","Gauteng","Germany","rhoncus.donec@protonmail.edu","P.O. Box 806, 1167 Venenatis St.","759523");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Armando Scott","1-466-756-6345","Ternopil oblast","Canada","orci.luctus@icloud.edu","3550 Dapibus Av.","4133 JF"),
  ("Joan Nolan","(976) 474-7074","Trentino-Alto Adige","Nigeria","ridiculus.mus@aol.couk","P.O. Box 790, 5321 Nulla St.","46802"),
  ("Neville Head","(836) 711-2392","Loreto","Netherlands","urna.ut@yahoo.net","4679 Arcu. Avenue","3725 GI"),
  ("Athena Tucker","1-662-364-8272","Antwerpen","Poland","auctor.mauris@google.couk","7891 Dui. Rd.","52485"),
  ("Maryam Horton","1-421-541-9255","Kherson oblast","Chile","hendrerit.neque@hotmail.edu","Ap #931-5541 Tellus, Avenue","32088"),
  ("Harrison Mitchell","(278) 876-4317","Nordland","Mexico","tincidunt.congue@google.ca","Ap #684-9794 Turpis. Av.","0635"),
  ("Hayden Barry","(351) 928-8171","Kano","Netherlands","laoreet.lectus.quis@outlook.org","4365 Feugiat Avenue","814452"),
  ("Farrah Castaneda","1-457-361-7072","FATA","Chile","posuere@yahoo.edu","P.O. Box 814, 6189 Vivamus Street","06613"),
  ("Lee Hodges","1-468-633-8212","Sląskie","Spain","consequat@hotmail.net","4698 Euismod Street","862778"),
  ("Lucy Odom","(783) 537-6662","Lviv oblast","Canada","cursus@aol.net","516-5163 Ac Rd.","827112");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Mira Hughes","1-931-834-1272","Vestland","India","sem.egestas@protonmail.couk","P.O. Box 255, 3229 Egestas Road","706872"),
  ("Adele Mcintyre","1-961-551-2638","Stockholms län","Poland","vehicula.et@hotmail.com","Ap #945-1708 Ultricies Street","51-434"),
  ("Juliet Blake","1-632-461-1262","San José","Pakistan","vulputate.velit@hotmail.edu","Ap #605-6290 Faucibus St.","2357"),
  ("Armand Whitney","(581) 267-4717","Drenthe","Peru","duis.a@icloud.edu","Ap #630-7136 Metus. Av.","86-74"),
  ("Lael Mathis","1-487-472-1463","Sevastopol City","Sweden","nulla.aliquet@yahoo.net","P.O. Box 355, 6119 Lectus St.","CP52 7HX"),
  ("Leila Riggs","1-889-846-1242","Alberta","Sweden","sed@yahoo.com","Ap #750-4974 At, St.","51581-541"),
  ("Rafael Howell","(280) 754-1853","Munster","France","urna.convallis@outlook.edu","Ap #798-7817 Vivamus Ave","66-45"),
  ("Nadine Huff","1-599-632-5821","Rostov Oblast","Indonesia","vehicula.risus@hotmail.net","736-9455 Enim Rd.","7423"),
  ("Darrel Yates","1-629-319-7078","Central Luzon","Singapore","ut.quam.vel@google.edu","Ap #261-7204 Quam, Road","71-697"),
  ("Cheyenne Figueroa","1-421-384-7533","Vinnytsia oblast","Singapore","curabitur.dictum@yahoo.couk","469-6539 Neque. St.","58207");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Troy Perez","(544) 876-1443","Michoacán","Philippines","vel.arcu@outlook.org","Ap #649-7676 Cursus Street","447222"),
  ("Guy Mooney","1-235-485-2081","Tasmania","Chile","sed.est.nunc@protonmail.org","P.O. Box 565, 8848 Velit. Avenue","24728"),
  ("Zephania Rowland","1-641-877-8359","North West","Mexico","scelerisque.lorem@google.ca","Ap #526-7327 Sem, Av.","7623"),
  ("Neville Knox","1-549-323-3040","Caldas","Philippines","curabitur@protonmail.org","Ap #563-363 Risus. Avenue","9224"),
  ("Elijah Coffey","1-492-538-5798","Salzburg","Belgium","vehicula.pellentesque@protonmail.edu","Ap #620-2124 Ligula Ave","61768-045"),
  ("Christian Barrera","(102) 588-8188","Cordillera Administrative Region","Ukraine","lorem@google.ca","6148 Cursus St.","4183"),
  ("Ira Rowe","1-855-223-6248","São Paulo","Pakistan","nulla@yahoo.ca","8735 Lobortis. St.","8450"),
  ("Dana Sherman","1-817-853-0189","Leinster","Poland","fringilla.est.mauris@yahoo.edu","Ap #185-9477 Urna. St.","43656"),
  ("Dieter Stark","1-597-274-7324","Hidalgo","Austria","tristique@yahoo.net","514-8213 Lacinia Avenue","287499"),
  ("Gil Wade","(208) 313-3281","West Region","Chile","egestas.duis.ac@google.couk","Ap #808-7945 Diam Rd.","11806");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Signe Gilbert","1-447-831-6551","Carmarthenshire","Canada","fermentum.fermentum@outlook.ca","Ap #659-8771 Lectus Av.","85538-18744"),
  ("Mona Parrish","1-650-878-1562","Ancash","Brazil","mi.lorem@aol.couk","Ap #408-1632 Fusce Ave","33953"),
  ("Madaline Mccoy","(725) 541-7503","Xīnán","Costa Rica","scelerisque.mollis@google.edu","251-1628 Gravida Rd.","8147"),
  ("Martin Fisher","(246) 453-2085","Munster","Nigeria","interdum.libero.dui@protonmail.net","Ap #471-757 Nunc Street","681396"),
  ("Linda Cortez","(130) 780-2416","Lạng Sơn","France","tellus.imperdiet.non@google.org","119-4779 Nec Avenue","3512"),
  ("Baker Marks","1-533-816-7466","Saratov Oblast","Indonesia","turpis.egestas.fusce@hotmail.com","Ap #601-4934 Lorem, St.","31011"),
  ("Kay Grimes","(411) 130-6672","Dalarnas län","Peru","auctor.non.feugiat@outlook.net","P.O. Box 304, 4722 Mattis Rd.","4173"),
  ("Omar Carrillo","1-274-849-2863","South Island","Indonesia","odio.phasellus@aol.com","P.O. Box 819, 9819 Condimentum Av.","6866"),
  ("Noelani Watson","(816) 563-7686","Azad Kashmir","Russian Federation","aliquam.fringilla.cursus@outlook.ca","9382 Velit. Av.","51138-588"),
  ("Cameron Bradford","1-898-742-6683","Dnipropetrovsk oblast","Austria","eu.neque@outlook.couk","102-6894 Nec Street","181553");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Lance Harris","1-318-227-6833","Santander","South Africa","nunc.sed@yahoo.couk","842-7728 Et Road","2715"),
  ("Zia Price","(377) 308-5115","Şanlıurfa","Germany","tellus@google.couk","381-1990 Laoreet Av.","376115"),
  ("Ruby Greer","1-114-727-5621","Västra Götalands län","Nigeria","sed.eget.lacus@yahoo.net","144-9347 Lorem St.","056054"),
  ("Maite Larsen","1-149-441-5765","Bali","Australia","hendrerit.id.ante@icloud.org","2701 Posuere St.","62232"),
  ("Carissa Buck","1-886-637-4773","Ceuta","Peru","aliquet.odio@outlook.edu","7788 Arcu. Av.","131222"),
  ("Juliet Valentine","1-632-446-7368","Free State","Indonesia","nunc.mauris@aol.net","Ap #705-9636 A Ave","71418"),
  ("Trevor Richard","(880) 247-3615","Thanh Hóa","Colombia","lectus.pede@yahoo.com","576-6163 Est Road","07059"),
  ("Megan Navarro","1-667-471-7946","Xīnán","United Kingdom","gravida.sagittis.duis@icloud.org","Ap #877-4041 Interdum Rd.","43673-692"),
  ("Dahlia Haney","1-331-463-6737","O'Higgins","United Kingdom","senectus.et.netus@outlook.org","P.O. Box 985, 3000 Semper. Av.","4672 EO"),
  ("Timothy Mcgee","(840) 535-6313","Noord Holland","France","dis@google.edu","Ap #588-8217 Arcu St.","45557");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Cody Turner","1-378-533-8167","Prince Edward Island","Mexico","lectus.sit@google.org","Ap #850-3756 Conubia St.","43566"),
  ("Thor Sullivan","1-214-464-2913","Veneto","Turkey","nam@hotmail.org","Ap #738-3872 Cras Road","568462"),
  ("Jasper Wise","1-338-227-5953","Calabarzon","Norway","nisi.a.odio@yahoo.com","5405 Mauris Road","17986"),
  ("Kenyon Figueroa","(637) 610-4818","Central Sulawesi","United States","rhoncus.donec@hotmail.edu","P.O. Box 532, 8436 Ipsum Road","2727-7227"),
  ("Jarrod Tanner","(862) 334-5525","Uttarakhand","Mexico","dictum.eu.eleifend@aol.net","1143 Sit Ave","6437"),
  ("Debra Daugherty","1-471-322-7477","Lubelskie","Sweden","ut.pellentesque@aol.com","884-1395 Nullam Rd.","53913"),
  ("Skyler Nelson","1-197-615-7364","Limousin","Turkey","vel.venenatis@icloud.org","P.O. Box 881, 667 Ullamcorper. Ave","221549"),
  ("Dale Larsen","1-713-611-1995","Morelos","South Africa","mauris.id@aol.org","P.O. Box 295, 7922 Mauris Rd.","4802"),
  ("Akeem Coffey","(746) 438-3615","Dumfriesshire","Poland","arcu.vivamus@google.com","941-7234 Et, Ave","28140"),
  ("Austin Fernandez","1-547-381-2651","Heredia","Costa Rica","vitae.erat@icloud.org","1754 Sollicitudin Road","3483");
INSERT INTO `customer` (`name`,`phone`,`region`,`country`,`email`,`address`,`postalZip`)
VALUES
  ("Walter Espinoza","1-512-218-3889","Vinnytsia oblast","Belgium","dignissim.magna@aol.com","9868 Litora Rd.","3842"),
  ("Marsden Dyer","1-187-703-4493","Limburg","Singapore","nunc.interdum.feugiat@google.edu","Ap #958-7507 Auctor Rd.","165231"),
  ("Jermaine Barton","1-118-732-0388","Limpopo","Poland","a.malesuada@hotmail.ca","149-7809 Vel Rd.","01458"),
  ("Dominic Chambers","(857) 441-6935","Xīnán","Nigeria","sed.neque.sed@protonmail.org","573-774 Adipiscing Ave","4447"),
  ("Aristotle Austin","1-815-478-4881","Friesland","Belgium","auctor.vitae@protonmail.ca","P.O. Box 953, 1681 Magna, Av.","3661"),
  ("Xaviera Pollard","1-615-538-0959","Adana","South Africa","mauris@aol.edu","831-3714 Tempor Av.","58734-157"),
  ("Oliver Cannon","(147) 240-1563","Huádōng","Turkey","sodales.nisi@outlook.edu","Ap #110-401 Donec Road","35491"),
  ("Nigel Potter","(620) 743-4549","Kherson oblast","Mexico","amet.diam@yahoo.couk","442-8309 Et Road","43-702"),
  ("George Workman","(640) 232-2385","Veneto","Ireland","felis@icloud.com","783-1083 Cubilia Avenue","7657"),
  ("Sandra Hodge","1-859-760-1215","South Island","China","faucibus@outlook.org","Ap #838-195 Lacus. Road","4416");

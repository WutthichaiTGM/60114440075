CREATE TABLE IF NOT EXISTS "ENGLISH_ALPHABET" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "THAI_ALPHABET" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "NUMBER" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "ANIMAL" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "FRUIT" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "VEHICLE" (
	"id"	TEXT NOT NULL UNIQUE,
	"name"	TEXT NOT NULL,
	"alphabet"	TEXT,
	"thai_sound"	TEXT,
	"english_sound"	TEXT,
	"specific_sound"	TEXT,
	PRIMARY KEY("id")
);
/* ข้อมูลชุดที่ 1 */
CREATE TABLE IF NOT EXISTS "DRAGDROPANIMAL" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "DRAGDROPFRUIT" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "DRAGDROPNUMBER" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENANIMAL" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENFRUIT" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENTHAIALPHABET" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "SORTNUMBER" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "MATCHANIMALSOUND" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
/* ข้อมูลชุดที่ 2 */
CREATE TABLE IF NOT EXISTS "DRAGDROPANIMAL_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "DRAGDROPFRUIT_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "DRAGDROPNUMBER_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"shadow_image"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENANIMAL_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENFRUIT_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "LISTENTHAIALPHABET_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "SORTNUMBER_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "MATCHANIMALSOUND_V2" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"state"	TEXT NOT NULL,
	"alphabet"	TEXT NOT NULL,
	"sound"	TEXT,
	"answer"	TEXT NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "DATA" (
	"id"	TEXT NOT NULL UNIQUE,
	"name_state"	TEXT NOT NULL,
	"category"	TEXT,
	"score_state1"	INTEGER NOT NULL,
	"score_state2"	INTEGER NOT NULL,
	"score_state3"	INTEGER NOT NULL,
	"score_state4"	INTEGER NOT NULL,
	"total_score"	INTEGER NOT NULL,
	PRIMARY KEY("id")
);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng01','englishAlphabet','../../../assets/img/letters/eng/Aa.png',NULL,'assets/audio/letters-sound/en/a.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng02','englishAlphabet','../../../assets/img/letters/eng/Bb.png',NULL,'assets/audio/letters-sound/en/b.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng03','englishAlphabet','../../../assets/img/letters/eng/Cc.png',NULL,'assets/audio/letters-sound/en/c.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng04','englishAlphabet','../../../assets/img/letters/eng/Dd.png',NULL,'assets/audio/letters-sound/en/d.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng05','englishAlphabet','../../../assets/img/letters/eng/Ee.png',NULL,'assets/audio/letters-sound/en/e.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng06','englishAlphabet','../../../assets/img/letters/eng/Ff.png',NULL,'assets/audio/letters-sound/en/f.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng07','englishAlphabet','../../../assets/img/letters/eng/Gg.png',NULL,'assets/audio/letters-sound/en/g.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng08','englishAlphabet','../../../assets/img/letters/eng/Hh.png',NULL,'assets/audio/letters-sound/en/h.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng09','englishAlphabet','../../../assets/img/letters/eng/Ii.png',NULL,'assets/audio/letters-sound/en/i.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng10','englishAlphabet','../../../assets/img/letters/eng/Jj.png',NULL,'assets/audio/letters-sound/en/j.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng11','englishAlphabet','../../../assets/img/letters/eng/Kk.png',NULL,'assets/audio/letters-sound/en/k.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng12','englishAlphabet','../../../assets/img/letters/eng/Ll.png',NULL,'assets/audio/letters-sound/en/l.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng13','englishAlphabet','../../../assets/img/letters/eng/Mm.png',NULL,'assets/audio/letters-sound/en/m.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng14','englishAlphabet','../../../assets/img/letters/eng/Nn.png',NULL,'assets/audio/letters-sound/en/n.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng15','englishAlphabet','../../../assets/img/letters/eng/Oo.png',NULL,'assets/audio/letters-sound/en/o.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng16','englishAlphabet','../../../assets/img/letters/eng/Pp.png',NULL,'assets/audio/letters-sound/en/p.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng17','englishAlphabet','../../../assets/img/letters/eng/Qq.png',NULL,'assets/audio/letters-sound/en/q.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng18','englishAlphabet','../../../assets/img/letters/eng/Rr.png',NULL,'assets/audio/letters-sound/en/r.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng19','englishAlphabet','../../../assets/img/letters/eng/Ss.png',NULL,'assets/audio/letters-sound/en/s.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng20','englishAlphabet','../../../assets/img/letters/eng/Tt.png',NULL,'assets/audio/letters-sound/en/t.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng21','englishAlphabet','../../../assets/img/letters/eng/Uu.png',NULL,'assets/audio/letters-sound/en/u.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng22','englishAlphabet','../../../assets/img/letters/eng/Vv.png',NULL,'assets/audio/letters-sound/en/v.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng23','englishAlphabet','../../../assets/img/letters/eng/Ww.png',NULL,'assets/audio/letters-sound/en/w.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng24','englishAlphabet','../../../assets/img/letters/eng/Xx.png',NULL,'assets/audio/letters-sound/en/x.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng25','englishAlphabet','../../../assets/img/letters/eng/Yy.png',NULL,'assets/audio/letters-sound/en/y.m4a',NULL);
INSERT or IGNORE INTO "ENGLISH_ALPHABET" VALUES ('eng26','englishAlphabet','../../../assets/img/letters/eng/Zz.png',NULL,'assets/audio/letters-sound/en/z.m4a',NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai01','thaiAlphabet','../../../assets/img/letters/thai/1.png','assets/audio/letters-sound/th/1.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai02','thaiAlphabet','../../../assets/img/letters/thai/2.png','assets/audio/letters-sound/th/2.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai03','thaiAlphabet','../../../assets/img/letters/thai/3.png','assets/audio/letters-sound/th/3.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai04','thaiAlphabet','../../../assets/img/letters/thai/4.png','assets/audio/letters-sound/th/4.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai05','thaiAlphabet','../../../assets/img/letters/thai/5.png','assets/audio/letters-sound/th/5.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai06','thaiAlphabet','../../../assets/img/letters/thai/6.png','assets/audio/letters-sound/th/6.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai07','thaiAlphabet','../../../assets/img/letters/thai/7.png','assets/audio/letters-sound/th/7.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai08','thaiAlphabet','../../../assets/img/letters/thai/8.png','assets/audio/letters-sound/th/8.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai09','thaiAlphabet','../../../assets/img/letters/thai/9.png','assets/audio/letters-sound/th/9.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai10','thaiAlphabet','../../../assets/img/letters/thai/10.png','assets/audio/letters-sound/th/10.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai11','thaiAlphabet','../../../assets/img/letters/thai/11.png','assets/audio/letters-sound/th/11.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai12','thaiAlphabet','../../../assets/img/letters/thai/12.png','assets/audio/letters-sound/th/12.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai13','thaiAlphabet','../../../assets/img/letters/thai/13.png','assets/audio/letters-sound/th/13.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai14','thaiAlphabet','../../../assets/img/letters/thai/14.png','assets/audio/letters-sound/th/14.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai15','thaiAlphabet','../../../assets/img/letters/thai/15.png','assets/audio/letters-sound/th/15.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai16','thaiAlphabet','../../../assets/img/letters/thai/16.png','assets/audio/letters-sound/th/16.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai17','thaiAlphabet','../../../assets/img/letters/thai/17.png','assets/audio/letters-sound/th/17.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai18','thaiAlphabet','../../../assets/img/letters/thai/18.png','assets/audio/letters-sound/th/18.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai19','thaiAlphabet','../../../assets/img/letters/thai/19.png','assets/audio/letters-sound/th/19.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai20','thaiAlphabet','../../../assets/img/letters/thai/20.png','assets/audio/letters-sound/th/20.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai21','thaiAlphabet','../../../assets/img/letters/thai/21.png','assets/audio/letters-sound/th/21.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai22','thaiAlphabet','../../../assets/img/letters/thai/22.png','assets/audio/letters-sound/th/22.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai23','thaiAlphabet','../../../assets/img/letters/thai/23.png','assets/audio/letters-sound/th/23.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai24','thaiAlphabet','../../../assets/img/letters/thai/24.png','assets/audio/letters-sound/th/24.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai25','thaiAlphabet','../../../assets/img/letters/thai/25.png','assets/audio/letters-sound/th/25.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai26','thaiAlphabet','../../../assets/img/letters/thai/26.png','assets/audio/letters-sound/th/26.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai27','thaiAlphabet','../../../assets/img/letters/thai/27.png','assets/audio/letters-sound/th/27.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai28','thaiAlphabet','../../../assets/img/letters/thai/28.png','assets/audio/letters-sound/th/28.mp3',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai29','thaiAlphabet','../../../assets/img/letters/thai/29.png','assets/audio/letters-sound/th/29.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai30','thaiAlphabet','../../../assets/img/letters/thai/30.png','assets/audio/letters-sound/th/30.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai31','thaiAlphabet','../../../assets/img/letters/thai/31.png','assets/audio/letters-sound/th/31.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai32','thaiAlphabet','../../../assets/img/letters/thai/32.png','assets/audio/letters-sound/th/32.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai33','thaiAlphabet','../../../assets/img/letters/thai/33.png','assets/audio/letters-sound/th/33.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai34','thaiAlphabet','../../../assets/img/letters/thai/34.png','assets/audio/letters-sound/th/34.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai35','thaiAlphabet','../../../assets/img/letters/thai/35.png','assets/audio/letters-sound/th/35.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai36','thaiAlphabet','../../../assets/img/letters/thai/36.png','assets/audio/letters-sound/th/36.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai37','thaiAlphabet','../../../assets/img/letters/thai/37.png','assets/audio/letters-sound/th/37.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai38','thaiAlphabet','../../../assets/img/letters/thai/38.png','assets/audio/letters-sound/th/38.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai39','thaiAlphabet','../../../assets/img/letters/thai/39.png','assets/audio/letters-sound/th/39.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai40','thaiAlphabet','../../../assets/img/letters/thai/40.png','assets/audio/letters-sound/th/40.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai41','thaiAlphabet','../../../assets/img/letters/thai/41.png','assets/audio/letters-sound/th/41.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai42','thaiAlphabet','../../../assets/img/letters/thai/42.png','assets/audio/letters-sound/th/42.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai43','thaiAlphabet','../../../assets/img/letters/thai/43.png','assets/audio/letters-sound/th/43.m4a',NULL,NULL);
INSERT or IGNORE INTO "THAI_ALPHABET" VALUES ('thai44','thaiAlphabet','../../../assets/img/letters/thai/44.png','assets/audio/letters-sound/th/44.m4a',NULL,NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num01','number','../../../assets/img/number/1.png','assets/audio/number-sound/th/1.m4a','assets/audio/number-sound/en/1.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num02','number','../../../assets/img/number/2.png','assets/audio/number-sound/th/2.m4a','assets/audio/number-sound/en/2.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num03','number','../../../assets/img/number/3.png','assets/audio/number-sound/th/3.m4a','assets/audio/number-sound/en/3.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num04','number','../../../assets/img/number/4.png','assets/audio/number-sound/th/4.m4a','assets/audio/number-sound/en/4.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num05','number','../../../assets/img/number/5.png','assets/audio/number-sound/th/5.m4a','assets/audio/number-sound/en/5.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num06','number','../../../assets/img/number/6.png','assets/audio/number-sound/th/6.m4a','assets/audio/number-sound/en/6.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num07','number','../../../assets/img/number/7.png','assets/audio/number-sound/th/7.m4a','assets/audio/number-sound/en/7.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num08','number','../../../assets/img/number/8.png','assets/audio/number-sound/th/8.m4a','assets/audio/number-sound/en/8.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num09','number','../../../assets/img/number/9.png','assets/audio/number-sound/th/9.m4a','assets/audio/number-sound/en/9.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num10','number','../../../assets/img/number/10.png','assets/audio/number-sound/th/10.m4a','assets/audio/number-sound/en/10.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num11','number','../../../assets/img/number/11.png','assets/audio/number-sound/th/11.m4a','assets/audio/number-sound/en/11.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num12','number','../../../assets/img/number/12.png','assets/audio/number-sound/th/12.m4a','assets/audio/number-sound/en/12.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num13','number','../../../assets/img/number/13.png','assets/audio/number-sound/th/13.m4a','assets/audio/number-sound/en/13.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num14','number','../../../assets/img/number/14.png','assets/audio/number-sound/th/14.m4a','assets/audio/number-sound/en/14.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num15','number','../../../assets/img/number/15.png','assets/audio/number-sound/th/15.m4a','assets/audio/number-sound/en/15.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num16','number','../../../assets/img/number/16.png','assets/audio/number-sound/th/16.m4a','assets/audio/number-sound/en/16.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num17','number','../../../assets/img/number/17.png','assets/audio/number-sound/th/17.m4a','assets/audio/number-sound/en/17.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num18','number','../../../assets/img/number/18.png','assets/audio/number-sound/th/18.m4a','assets/audio/number-sound/en/18.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num19','number','../../../assets/img/number/19.png','assets/audio/number-sound/th/19.m4a','assets/audio/number-sound/en/19.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num20','number','../../../assets/img/number/20.png','assets/audio/number-sound/th/20.m4a','assets/audio/number-sound/en/20.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num30','number','../../../assets/img/number/30.png','assets/audio/number-sound/th/30.m4a','assets/audio/number-sound/en/30.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num40','number','../../../assets/img/number/40.png','assets/audio/number-sound/th/40.m4a','assets/audio/number-sound/en/40.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num50','number','../../../assets/img/number/50.png','assets/audio/number-sound/th/50.m4a','assets/audio/number-sound/en/50.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num60','number','../../../assets/img/number/60.png','assets/audio/number-sound/th/60.m4a','assets/audio/number-sound/en/60.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num70','number','../../../assets/img/number/70.png','assets/audio/number-sound/th/70.m4a','assets/audio/number-sound/en/70.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num80','number','../../../assets/img/number/80.png','assets/audio/number-sound/th/80.m4a','assets/audio/number-sound/en/80.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num90','number','../../../assets/img/number/90.png','assets/audio/number-sound/th/90.m4a','assets/audio/number-sound/en/90.m4a',NULL);
INSERT or IGNORE INTO "NUMBER" VALUES ('num100','number','../../../assets/img/number/100.png','assets/audio/number-sound/th/100.m4a','assets/audio/number-sound/en/100.m4a',NULL);
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal01','animal','../../../assets/img/animal/01-owl.png','assets/audio/animal-sound/th/owl.m4a','assets/audio/animal-sound/en/owl.m4a','assets/audio/animal-sound/specific-sound/owl.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal02','animal','../../../assets/img/animal/02-dog.png','assets/audio/animal-sound/th/dog.m4a','assets/audio/animal-sound/en/dog.m4a','assets/audio/animal-sound/specific-sound/dog.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal03','animal','../../../assets/img/animal/03-pig.png','assets/audio/animal-sound/th/pig.m4a','assets/audio/animal-sound/en/pig.m4a','assets/audio/animal-sound/specific-sound/pig.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal04','animal','../../../assets/img/animal/04-cow.png','assets/audio/animal-sound/th/cow.m4a','assets/audio/animal-sound/en/cow.m4a','assets/audio/animal-sound/specific-sound/cow.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal05','animal','../../../assets/img/animal/05-elephant.png','assets/audio/animal-sound/th/elephant.m4a','assets/audio/animal-sound/en/elephant.m4a','assets/audio/animal-sound/specific-sound/elephant.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal06','animal','../../../assets/img/animal/06-horse.png','assets/audio/animal-sound/th/horse.m4a','assets/audio/animal-sound/en/horse.m4a','assets/audio/animal-sound/specific-sound/horse.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal07','animal','../../../assets/img/animal/07-cat.png','assets/audio/animal-sound/th/cat.m4a','assets/audio/animal-sound/en/at.m4a','assets/audio/animal-sound/specific-sound/cat.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal08','animal','../../../assets/img/animal/08-frog.png','assets/audio/animal-sound/th/frog.m4a','assets/audio/animal-sound/en/frog.m4a','assets/audio/animal-sound/specific-sound/frog.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal09','animal','../../../assets/img/animal/09-crocodile.png','assets/audio/animal-sound/th/crocodile.m4a','assets/audio/animal-sound/en/crocodile.m4a','assets/audio/animal-sound/specific-sound/crocodile.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal10','animal','../../../assets/img/animal/10-panda.png','assets/audio/animal-sound/th/panda.m4a','assets/audio/animal-sound/en/panda.m4a','assets/audio/animal-sound/specific-sound/panda.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal11','animal','../../../assets/img/animal/11-hippopotamus.png','assets/audio/animal-sound/th/hippopotamus.m4a','assets/audio/animal-sound/en/hippopotamus.m4a','assets/audio/animal-sound/specific-sound/hippopotamus.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal12','animal','../../../assets/img/animal/12-bear.png','assets/audio/animal-sound/th/bear.m4a','assets/audio/animal-sound/en/bear.m4a','assets/audio/animal-sound/specific-sound/bear.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal13','animal','../../../assets/img/animal/13-parot.png','assets/audio/animal-sound/th/parrot.m4a','assets/audio/animal-sound/en/parrot.m4a','assets/audio/animal-sound/specific-sound/parrot.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal14','animal','../../../assets/img/animal/14-rat.png','assets/audio/animal-sound/th/rat.m4a','assets/audio/animal-sound/en/rat.m4a','assets/audio/animal-sound/specific-sound/rat.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal15','animal','../../../assets/img/animal/15-lion.png','assets/audio/animal-sound/th/lion.m4a','assets/audio/animal-sound/en/lion.m4a','assets/audio/animal-sound/specific-sound/lion.mp3');
INSERT or IGNORE INTO "ANIMAL" VALUES ('animal16','animal','../../../assets/img/animal/16-monkey.png','assets/audio/animal-sound/th/monkey.m4a','assets/audio/animal-sound/en/monkey.m4a','assets/audio/animal-sound/specific-sound/monkey.mp3');
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit01','fruit','../../../assets/img/fruit/01-banana.png','assets/audio/fruit-sound/th/banana.m4a','assets/audio/fruit-sound/en/banana.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit02','fruit','../../../assets/img/fruit/02-rambutan.png','assets/audio/fruit-sound/th/rambutan.m4a','assets/audio/fruit-sound/en/rambutan.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit03','fruit','../../../assets/img/fruit/03-ruby.png','assets/audio/fruit-sound/th/ruby.m4a','assets/audio/fruit-sound/en/ruby.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit04','fruit','../../../assets/img/fruit/04-grape.png','assets/audio/fruit-sound/th/grape.m4a','assets/audio/fruit-sound/en/grape.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit05','fruit','../../../assets/img/fruit/05-strowberry.png','assets/audio/fruit-sound/th/strawberry.m4a','assets/audio/fruit-sound/en/strawberry.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit06','fruit','../../../assets/img/fruit/06-cherries.png','assets/audio/fruit-sound/th/cherries.m4a','assets/audio/fruit-sound/en/cherries.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit07','fruit','../../../assets/img/fruit/07-apple.png','assets/audio/fruit-sound/th/apple.m4a','assets/audio/fruit-sound/en/apple.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit08','fruit','../../../assets/img/fruit/08-piapple.png','assets/audio/fruit-sound/th/pineapple.m4a','assets/audio/fruit-sound/en/pineapple.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit09','fruit','../../../assets/img/fruit/09-watermalon.png','assets/audio/fruit-sound/th/watermelon.m4a','assets/audio/fruit-sound/en/watermelon.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit10','fruit','../../../assets/img/fruit/10-orange.png','assets/audio/fruit-sound/th/orange.m4a','assets/audio/fruit-sound/en/orange.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit11','fruit','../../../assets/img/fruit/11-mango.png','assets/audio/fruit-sound/th/mango.m4a','assets/audio/fruit-sound/en/mango.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit12','fruit','../../../assets/img/fruit/12-mangosateen.png','assets/audio/fruit-sound/th/mangosteen.m4a','assets/audio/fruit-sound/en/mangosteen.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit13','fruit','../../../assets/img/fruit/13-kiwi.png','assets/audio/fruit-sound/th/kiwi.m4a','assets/audio/fruit-sound/en/kiwi.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit14','fruit','../../../assets/img/fruit/14-durian.png','assets/audio/fruit-sound/th/durian.m4a','assets/audio/fruit-sound/en/durian.m4a',NULL);
INSERT or IGNORE INTO "FRUIT" VALUES ('fruit15','fruit','../../../assets/img/fruit/15-lychee.png','assets/audio/fruit-sound/th/lychee.m4a','assets/audio/fruit-sound/th/lychee.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc01','vehicle','../../../assets/img/vehicle/01-shcoll-bus.png','assets/audio/vehicle-sound/th/school-bus.m4a','assets/audio/vehicle-sound/en/school-bus.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc02','vehicle','../../../assets/img/vehicle/02-car.png','assets/audio/vehicle-sound/th/car.m4a','assets/audio/vehicle-sound/en/car.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc03','vehicle','../../../assets/img/vehicle/03-taxi.png','assets/audio/vehicle-sound/th/taxi.m4a','assets/audio/vehicle-sound/en/taxi.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc04','vehicle','../../../assets/img/vehicle/04-airplane.png','assets/audio/vehicle-sound/th/airplane.m4a','assets/audio/vehicle-sound/en/airplane.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc05','vehicle','../../../assets/img/vehicle/05-both.png','assets/audio/vehicle-sound/th/boat.m4a','assets/audio/vehicle-sound/en/boat.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc06','vehicle','../../../assets/img/vehicle/06-bycicle.png','assets/audio/vehicle-sound/th/motorcycle.m4a','assets/audio/vehicle-sound/en/motorcycle.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc07','vehicle','../../../assets/img/vehicle/07-balloon.png','assets/audio/vehicle-sound/th/balloon.m4a','assets/audio/vehicle-sound/en/balloon.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc08','vehicle','../../../assets/img/vehicle/08-train.png','assets/audio/vehicle-sound/th/train.m4a','assets/audio/vehicle-sound/en/train.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc09','vehicle','../../../assets/img/vehicle/09-bike.png','assets/audio/vehicle-sound/th/bicycle.m4a','assets/audio/vehicle-sound/en/bicycle.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc10','vehicle','../../../assets/img/vehicle/10-Fireengine.png','assets/audio/vehicle-sound/th/fire-engine.m4a','assets/audio/vehicle-sound/en/fire-engine.m4a',NULL);
INSERT or IGNORE INTO "VEHICLE" VALUES ('vhc11','vehicle','../../../assets/img/vehicle/11-ambulance.png','assets/audio/vehicle-sound/th/ambulance.m4a','assets/audio/vehicle-sound/en/ambulance.m4a',NULL);
/* ข้อมูลชุดที่ 1 */
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('1001','ลากวาง','1','สัตว์','../../../../assets/img/animal/05-elephant.png','../../../../assets/img/shadow-animals/05-elephant.png','1');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('2001','ลากวาง','2','สัตว์','../../../../assets/img/animal/01-owl.png','../../../../assets/img/shadow-animals/02-dog.png','2');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('2002','ลากวาง','2','สัตว์','../../../../assets/img/animal/02-dog.png','../../../../assets/img/shadow-animals/02-dog.png','2');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('3001','ลากวาง','3','สัตว์','../../../../assets/img/animal/03-pig.png','../../../../assets/img/shadow-animals/07-cat.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('3002','ลากวาง','3','สัตว์','../../../../assets/img/animal/04-cow.png','../../../../assets/img/shadow-animals/07-cat.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('3003','ลากวาง','3','สัตว์','../../../../assets/img/animal/07-cat.png','../../../../assets/img/shadow-animals/07-cat.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('4001','ลากวาง','4','สัตว์','../../../../assets/img/animal/08-frog.png','../../../../assets/img/shadow-animals/11-hippopotamus.png','4');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('4002','ลากวาง','4','สัตว์','../../../../assets/img/animal/09-crocodile.png','../../../../assets/img/shadow-animals/11-hippopotamus.png','4');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('4003','ลากวาง','4','สัตว์','../../../../assets/img/animal/10-panda.png','../../../../assets/img/shadow-animals/11-hippopotamus.png','4');
INSERT or IGNORE INTO "DRAGDROPANIMAL" VALUES ('4004','ลากวาง','4','สัตว์','../../../../assets/img/animal/11-hippopotamus.png','../../../../assets/img/shadow-animals/11-hippopotamus.png','4');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('1001','ลากวาง','1','ผลไม้','../../../../assets/img/fruit/01-banana.png','../../../../assets/img/shadow-fruit/banana.png','1');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('2003','ลากวาง','2','ผลไม้','../../../../assets/img/fruit/04-grape.png','../../../../assets/img/shadow-fruit/grape.png','1');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('2001','ลากวาง','2','ผลไม้','../../../../assets/img/fruit/02-rambutan.png','../../../../assets/img/shadow-fruit/grape.png','1');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('2002','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/03-ruby.png','../../../../assets/img/shadow-fruit/strowberry.png','2');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('3002','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/05-strowberry.png','../../../../assets/img/shadow-fruit/strowberry.png','2');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('3003','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/06-cherries.png','../../../../../../../../assets/img/shadow-fruit/strowberry.png','2');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('4001','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/07-apple.png','../../../../assets/img/shadow-fruit/watermalon.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('4002','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/08-piapple.png','../../../../assets/img/shadow-fruit/watermalon.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('4003','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/09-watermalon.png','../../../../assets/img/shadow-fruit/watermalon.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT" VALUES ('4004','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/11-mango.png','../../../../assets/img/shadow-fruit/watermalon.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('1001','ลากวาง','1','ตัวเลข','../../../../assets/img/number/1.png','../../../../assets/img/shadow-number/1.png','1');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('2003','ลากวาง','2','ตัวเลข','../../../../assets/img/number/2.png','../../../../assets/img/shadow-number/2.png','1');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('2002','ลากวาง','2','ตัวเลข','../../../../assets/img/number/3.png','../../../../assets/img/shadow-number/2.png','1');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('3001','ลากวาง','3','ตัวเลข','../../../../assets/img/number/4.png','../../../../assets/img/shadow-number/6.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('3003','ลากวาง','3','ตัวเลข','../../../../assets/img/number/6.png','../../../../assets/img/shadow-number/6.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('4001','ลากวาง','4','ตัวเลข','../../../../assets/img/number/7.png','../../../../assets/img/shadow-number/6.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('3002','ลากวาง','3','ตัวเลข','../../../../assets/img/number/5.png','../../../../assets/img/shadow-number/10.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('4002','ลากวาง','4','ตัวเลข','../../../../assets/img/number/8.png','../../../../assets/img/shadow-number/10.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('4003','ลากวาง','4','ตัวเลข','../../../../assets/img/number/9.png','../../../../assets/img/shadow-number/10.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER" VALUES ('4004','ลากวาง','4','ตัวเลข','../../../../assets/img/number/10.png','../../../../assets/img/shadow-number/10.png','4');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','สัตว์','../../../../assets/img/animal/05-elephant.png','assets/audio/animal-sound/specific-sound/elephant.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','สัตว์','../../../../assets/img/animal/01-owl.png','assets/audio/animal-sound/specific-sound/owl.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','สัตว์','../../../../assets/img/animal/02-dog.png','assets/audio/animal-sound/specific-sound/owl.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/03-pig.png','assets/audio/animal-sound/specific-sound/cow.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/04-cow.png','assets/audio/animal-sound/specific-sound/cow.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/07-cat.png','assets/audio/animal-sound/specific-sound/cow.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/08-frog.png','assets/audio/animal-sound/specific-sound/panda.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/09-crocodile.png','assets/audio/animal-sound/specific-sound/panda.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/10-panda.png','assets/audio/animal-sound/specific-sound/panda.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/11-hippopotamus.png','assets/audio/animal-sound/specific-sound/panda.mp3','3');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','ผลไม้','../../../../assets/img/fruit/01-banana.png','assets/audio/fruit-sound/en/banana.m4a','1');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','ผลไม้','../../../../assets/img/fruit/04-grape.png','assets/audio/fruit-sound/en/rambutan.m4a','2');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','ผลไม้','../../../../assets/img/fruit/02-rambutan.png','assets/audio/fruit-sound/en/rambutan.m4a','2');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/03-ruby.png','assets/audio/fruit-sound/en/cherries.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/05-strowberry.png','assets/audio/fruit-sound/en/cherries.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/06-cherries.png','assets/audio/fruit-sound/en/cherries.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/07-apple.png','assets/audio/fruit-sound/en/mango.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/08-piapple.png','assets/audio/fruit-sound/en/mango.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/09-watermalon.png','assets/audio/fruit-sound/en/mango.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/11-mango.png','assets/audio/fruit-sound/en/mango.m4a','4');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/1.png','assets/audio/letters-sound/th/1.m4a','1');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/2.png','assets/audio/letters-sound/th/2.m4a','1');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/3.png','assets/audio/letters-sound/th/2.m4a','1');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/4.png','assets/audio/letters-sound/th/7.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/7.png','assets/audio/letters-sound/th/7.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/8.png','assets/audio/letters-sound/th/7.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/11.png','assets/audio/letters-sound/th/13.m4a','3');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/12.png','assets/audio/letters-sound/th/13.m4a','3');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/13.png','assets/audio/letters-sound/th/13.m4a','3');
INSERT or IGNORE INTO "LISTENTHAIALPHABET" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/15.png','assets/audio/letters-sound/th/13.m4a','3');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('1001','เรียงลำดับตัวเลข','1','../../../../assets/img/number/1.png','1');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('2001','เรียงลำดับตัวเลข','2','../../../../assets/img/number/3.png','2');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('2002','เรียงลำดับตัวเลข','2','../../../../assets/img/number/2.png','1');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('3001','เรียงลำดับตัวเลข','3','../../../../assets/img/number/6.png','3');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('3002','เรียงลำดับตัวเลข','3','../../../../assets/img/number/4.png','1');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('3003','เรียงลำดับตัวเลข','3','../../../../assets/img/number/5.png','2');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('4001','เรียงลำดับตัวเลข','4','../../../../assets/img/number/9.png','3');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('4002','เรียงลำดับตัวเลข','4','../../../../assets/img/number/10.png','4');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('4003','เรียงลำดับตัวเลข','4','../../../../assets/img/number/8.png','2');
INSERT or IGNORE INTO "SORTNUMBER" VALUES ('4004','เรียงลำดับตัวเลข','4','../../../../assets/img/number/7.png','1');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('1001','จับคู่เสียงของสัตว์','1','../../../../assets/img/animal/05-elephant.png','assets/audio/animal-sound/specific-sound/elephant.mp3','1');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('2001','จับคู่เสียงของสัตว์','2','../../../../assets/img/animal/01-owl.png','assets/audio/animal-sound/specific-sound/dog.mp3','2');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('2002','จับคู่เสียงของสัตว์','2','../../../../assets/img/animal/02-dog.png','assets/audio/animal-sound/specific-sound/dog.mp3','2');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('3001','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/03-pig.png','assets/audio/animal-sound/specific-sound/cat.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('3002','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/04-cow.png','assets/audio/animal-sound/specific-sound/cat.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('3003','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/07-cat.png','assets/audio/animal-sound/specific-sound/cat.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('4001','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/08-frog.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('4002','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/09-crocodile.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('4003','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/10-panda.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND" VALUES ('4004','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/11-hippopotamus.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','4');
/* ข้อมูลชุดที่ 2 */
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('1001','ลากวาง','1','สัตว์','../../../../assets/img/animal/16-monkey.png','../../../../assets/img/shadow-animals/16-monkey.png','1');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('2001','ลากวาง','2','สัตว์','../../../../assets/img/animal/15-lion.png','../../../../assets/img/shadow-animals/15-lion.png','1');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('2002','ลากวาง','2','สัตว์','../../../../assets/img/animal/14-rat.png','../../../../assets/img/shadow-animals/15-lion.png','1');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('3001','ลากวาง','3','สัตว์','../../../../assets/img/animal/13-parot.png','../../../../assets/img/shadow-animals/12-bear.png','2');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('3002','ลากวาง','3','สัตว์','../../../../assets/img/animal/12-bear.png','../../../../assets/img/shadow-animals/12-bear.png','2');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('3003','ลากวาง','3','สัตว์','../../../../assets/img/animal/11-hippopotamus.png','../../../../assets/img/shadow-animals/12-bear.png','2');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('4001','ลากวาง','4','สัตว์','../../../../assets/img/animal/10-panda.png','../../../../assets/img/shadow-animals/06-horse.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('4002','ลากวาง','4','สัตว์','../../../../assets/img/animal/09-crocodile.png','../../../../assets/img/shadow-animals/06-horse.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('4003','ลากวาง','4','สัตว์','../../../../assets/img/animal/06-horse.png','../../../../assets/img/shadow-animals/06-horse.png','3');
INSERT or IGNORE INTO "DRAGDROPANIMAL_V2" VALUES ('4004','ลากวาง','4','สัตว์','../../../../assets/img/animal/05-elephant.png','../../../../assets/img/shadow-animals/06-horse.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('1001','ลากวาง','1','ผลไม้','../../../../assets/img/fruit/06-cherries.png','../../../../assets/img/shadow-fruit/cherries.png','1');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('2003','ลากวาง','2','ผลไม้','../../../../assets/img/fruit/07-apple.png','../../../../assets/img/shadow-fruit/piapple.png','2');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('2001','ลากวาง','2','ผลไม้','../../../../assets/img/fruit/08-piapple.png','../../../../assets/img/shadow-fruit/piapple.png','2');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('2002','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/09-watermalon.png','../../../../assets/img/shadow-fruit/mango.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('3002','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/10-orange.png','../../../../assets/img/shadow-fruit/mango.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('3003','ลากวาง','3','ผลไม้','../../../../assets/img/fruit/11-mango.png','../../../../assets/img/shadow-fruit/mango.png','3');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('4001','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/12-mangosateen.png','../../../../assets/img/shadow-fruit/lychee.png','4');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('4002','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/13-kiwi.png','../../../../assets/img/shadow-fruit/lychee.png','4');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('4003','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/14-durian.png','../../../../assets/img/shadow-fruit/lychee.png','4');
INSERT or IGNORE INTO "DRAGDROPFRUIT_V2" VALUES ('4004','ลากวาง','4','ผลไม้','../../../../assets/img/fruit/15-lychee.png','../../../../assets/img/shadow-fruit/lychee.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('1001','ลากวาง','1','ตัวเลข','../../../../assets/img/number/11.png','../../../../assets/img/shadow-number/11.png','1');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('2003','ลากวาง','2','ตัวเลข','../../../../assets/img/number/12.png','../../../../assets/img/shadow-number/13.png','2');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('2002','ลากวาง','2','ตัวเลข','../../../../assets/img/number/13.png','../../../../assets/img/shadow-number/13.png','2');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('3001','ลากวาง','3','ตัวเลข','../../../../assets/img/number/14.png','../../../../assets/img/shadow-number/16.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('3002','ลากวาง','3','ตัวเลข','../../../../assets/img/number/15.png','../../../../assets/img/shadow-number/16.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('3003','ลากวาง','3','ตัวเลข','../../../../assets/img/number/16.png','../../../../assets/img/shadow-number/16.png','3');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('4001','ลากวาง','4','ตัวเลข','../../../../assets/img/number/17.png','../../../../assets/img/shadow-number/20.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('4002','ลากวาง','4','ตัวเลข','../../../../assets/img/number/18.png','../../../../assets/img/shadow-number/20.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('4003','ลากวาง','4','ตัวเลข','../../../../assets/img/number/19.png','../../../../assets/img/shadow-number/20.png','4');
INSERT or IGNORE INTO "DRAGDROPNUMBER_V2" VALUES ('4004','ลากวาง','4','ตัวเลข','../../../../assets/img/number/20.png','../../../../assets/img/shadow-number/20.png','4');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','สัตว์','../../../../assets/img/animal/16-monkey.png','assets/audio/animal-sound/specific-sound/monkey.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','สัตว์','../../../../assets/img/animal/15-lion.png','assets/audio/animal-sound/specific-sound/lion.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','สัตว์','../../../../assets/img/animal/14-rat.png','assets/audio/animal-sound/specific-sound/lion.mp3','1');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/13-parot.png','assets/audio/animal-sound/specific-sound/bear.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/12-bear.png','assets/audio/animal-sound/specific-sound/bear.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','สัตว์','../../../../assets/img/animal/11-hippopotamus.png','assets/audio/animal-sound/specific-sound/bear.mp3','2');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/10-panda.png','assets/audio/animal-sound/specific-sound/horse.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/09-crocodile.png','assets/audio/animal-sound/specific-sound/horse.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/06-horse.png','assets/audio/animal-sound/specific-sound/horse.mp3','3');
INSERT or IGNORE INTO "LISTENANIMAL_V2" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','สัตว์','../../../../assets/img/animal/05-elephant.png','assets/audio/animal-sound/specific-sound/horse.mp3','3');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','ผลไม้','../../../../assets/img/fruit/15-lychee.png','assets/audio/fruit-sound/en/lychee.m4a','1');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','ผลไม้','../../../../assets/img/fruit/14-durian.png','assets/audio/fruit-sound/en/kiwi.m4a','2');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','ผลไม้','../../../../assets/img/fruit/13-kiwi.png','assets/audio/fruit-sound/en/kiwi.m4a','2');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/12-mangosateen.png','assets/audio/fruit-sound/en/orange.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/11-mango.png','assets/audio/fruit-sound/en/orange.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','ผลไม้','../../../../assets/img/fruit/10-orange.png','assets/audio/fruit-sound/en/orange.m4a','3');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/09-watermalon.png','assets/audio/fruit-sound/en/chrries.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/08-piapple.png','assets/audio/fruit-sound/en/chrries.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/07-apple.png','assets/audio/fruit-sound/en/cherries.m4a','4');
INSERT or IGNORE INTO "LISTENFRUIT_V2" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','ผลไม้','../../../../assets/img/fruit/06-cherries.png','assets/audio/fruit-sound/en/chrries.m4a','4');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('1001','ฟังเสียงเพื่อตอบคำถาม','1','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/44.png','assets/audio/letters-sound/th/44.m4a','1');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','2','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/40.png','assets/audio/letters-sound/th/41.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','2','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/41.png','assets/audio/letters-sound/th/41.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('3001','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/35.png','assets/audio/letters-sound/th/36.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('3002','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/36.png','assets/audio/letters-sound/th/36.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('3003','ฟังเสียงเพื่อตอบคำถาม','3','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/37.png','assets/audio/letters-sound/th/36.m4a','2');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('4001','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/30.png','assets/audio/letters-sound/th/33.m4a','4');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('4002','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/31.png','assets/audio/letters-sound/th/33.m4a','4');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('4003','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/32.png','assets/audio/letters-sound/th/33.m4a','4');
INSERT or IGNORE INTO "LISTENTHAIALPHABET_V2" VALUES ('4004','ฟังเสียงเพื่อตอบคำถาม','4','ตัวอักษรภาษาไทย','../../../../assets/img/letters/thai/33.png','assets/audio/letters-sound/th/33.m4a','4');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('1001','เรียงลำดับตัวเลข','1','../../../../assets/img/number/100.png','1');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('2001','เรียงลำดับตัวเลข','2','../../../../assets/img/number/90.png','2');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('2002','เรียงลำดับตัวเลข','2','../../../../assets/img/number/80.png','1');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('3001','เรียงลำดับตัวเลข','3','../../../../assets/img/number/70.png','3');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('3002','เรียงลำดับตัวเลข','3','../../../../assets/img/number/50.png','1');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('3003','เรียงลำดับตัวเลข','3','../../../../assets/img/number/60.png','2');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('4001','เรียงลำดับตัวเลข','4','../../../../assets/img/number/20.png','2');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('4002','เรียงลำดับตัวเลข','4','../../../../assets/img/number/40.png','4');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('4003','เรียงลำดับตัวเลข','4','../../../../assets/img/number/30.png','3');
INSERT or IGNORE INTO "SORTNUMBER_V2" VALUES ('4004','เรียงลำดับตัวเลข','4','../../../../assets/img/number/10.png','1');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('1001','จับคู่เสียงของสัตว์','1','../../../../assets/img/animal/16-monkey.png','assets/audio/animal-sound/specific-sound/monkey.mp3','1');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('2001','จับคู่เสียงของสัตว์','2','../../../../assets/img/animal/15-lion.png','assets/audio/animal-sound/specific-sound/rat.mp3','2');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('2002','จับคู่เสียงของสัตว์','2','../../../../assets/img/animal/14-rat.png','assets/audio/animal-sound/specific-sound/rat.mp3','2');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('3001','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/13-parot.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('3002','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/12-bear.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('3003','จับคู่เสียงของสัตว์','3','../../../../assets/img/animal/11-hippopotamus.png','assets/audio/animal-sound/specific-sound/hippopotamus.mp3','3');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('4001','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/10-panda.png','assets/audio/animal-sound/specific-sound/elephant.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('4002','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/09-crocodile.png','assets/audio/animal-sound/specific-sound/elephant.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('4003','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/06-horse.png','assets/audio/animal-sound/specific-sound/elephant.mp3','4');
INSERT or IGNORE INTO "MATCHANIMALSOUND_V2" VALUES ('4004','จับคู่เสียงของสัตว์','4','../../../../assets/img/animal/05-elephant.png','assets/audio/animal-sound/specific-sound/elephant.mp3','4');
INSERT or IGNORE INTO "DATA" VALUES ('1001','ลากวาง','สัตว์',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('1002','ลากวาง','ตัวเลข',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('1003','ลากวาง','ผลไม้',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('2001','ฟังเสียงเพื่อตอบคำถาม','สัตว์',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('2002','ฟังเสียงเพื่อตอบคำถาม','ตัวอักษรภาษาไทย',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('2003','ฟังเสียงเพื่อตอบคำถาม','ผลไม้',0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('3001','เรียงลำดับตัวเลข',NULL,0,0,0,0,0);
INSERT or IGNORE INTO "DATA" VALUES ('4001','จับคู่เสียงของสัตว์',NULL,0,0,0,0,0);
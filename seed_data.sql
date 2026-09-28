USE db_god_of_war;

-- 1. Fix Series Descriptions & Bosses
UPDATE series SET deskripsi = 'Awal mula perjalanan Kratos menuntut balas kepada Dewa Perang Ares atas tragedi masa lalunya.' WHERE id = 1;
UPDATE series SET boss_name = 'ZEUS', boss_img = 'Youngzeus.webp', boss_hp = 1500 WHERE id = 3;
UPDATE series SET boss_name = 'BALDUR', boss_img = 'AresGod.webp', boss_hp = 1500 WHERE id = 4;
UPDATE series SET boss_name = 'THOR', boss_img = 'GOWRG_Wallpaper_Desktop_WolfSled_4k.jpg', boss_hp = 2000 WHERE id = 5;

-- 2. Clean and Populate Characters
TRUNCATE TABLE characters;
INSERT INTO characters (series_id, nama, peran, gambar) VALUES
-- Series 1 (God of War 1)
(1, 'Kratos', 'The Ghost of Sparta', 'kratosss.jpeg'),
(1, 'Athena', 'Goddess of Wisdom', 'Athena_29.webp'),
(1, 'Artemis', 'Goddess of the Hunt', 'Artemis.webp'),
(1, 'Ares', 'God of War', 'AresGod.webp'),
(1, 'Kratos (God Mode)', 'Ascended to Olympus', 'Pcsx2-r4600_2011-07-17_19-56-02-28.webp'),

-- Series 2 (God of War II)
(2, 'Kratos', 'Vengeful Spartan God', 'Pcsx2-r4600_2011-07-17_19-56-02-28.webp'),
(2, 'Zeus', 'King of the Gods', 'Youngzeus.webp'),
(2, 'Athena', 'Protector of Olympus', 'Athena_29.webp'),
(2, 'Colossus of Rhodes', 'Animated Titan of Rhodes', 'Gow2-titan.webp'),

-- Series 3 (God of War III)
(3, 'Kratos', 'The God Slayer', 'kratosss.jpeg'),
(3, 'Zeus', 'Ruler of Olympus', 'Youngzeus.webp'),
(3, 'Athena', 'Astral Guide', 'Athena_29.webp'),
(3, 'Titan Gaia', 'Mother of Earth', 'Gow2-titan.webp'),

-- Series 4 (God of War 2018)
(4, 'Kratos', 'Retired Greek God', 'GOW 2018.jpg'),
(4, 'Atreus', 'The Son (Loki)', 'GOW RAGNAROK.jpg'),
(4, 'Baldur', 'The Invulnerable God', 'AresGod.webp'),

-- Series 5 (God of War Ragnarök)
(5, 'Kratos', 'General of the Nine Realms', 'GOWRG_Wallpaper_Desktop_WolfSled_4k.jpg'),
(5, 'Atreus', 'Champion of the Giants', 'GODRagnarokCover1.webp'),
(5, 'Thor', 'God of Thunder', 'GOWRG_Wallpaper_Desktop_Vista_4k.jpg');

-- 3. Clean and Populate Timeline
TRUNCATE TABLE timeline;
INSERT INTO timeline (series_id, judul_chapter, deskripsi, urutan, gambar) VALUES
-- Series 1 (God of War 1)
(1, 'Hydra Battle', 'Kratos melawan monster Hydra berkepala banyak di Laut Aegean atas perintah Poseidon.', 1, 'Hydra_Boss_Fight4_-_God_of_War2005.webp'),
(1, 'Pandora Temple', 'Kratos menjelajahi Kuil Pandora di punggung Titan Cronos demi mencari Kotak Pandora.', 2, 'Temple_5.webp'),
(1, 'Fall of Ares', 'Pertarungan sengit Kratos membantai Ares demi membalas dendam keluarga dan sumpahnya.', 3, 'AresGod.webp'),
(1, 'Ascent to Olympus', 'Kratos menduduki tahta Olympus dan dinobatkan menjadi Dewa Perang yang baru.', 4, 'Pcsx2-r4600_2011-07-17_19-56-02-28.webp'),

-- Series 2 (God of War II)
(2, 'Betrayal in Rhodes', 'Zeus mengkhianati Kratos dan merenggut seluruh kekuatan keilahiannya dengan Blade of Olympus.', 1, 'GOW2.jpg'),
(2, 'Island of Creation', 'Kratos memulai perjalanan melintasi pulau terkutuk untuk menemui Sisters of Fate.', 2, 'Island_of_creation.webp'),
(2, 'The Loom Chamber', 'Kratos mengalahkan para penentu takdir dan merebut kembali kendali atas masa lalu.', 3, 'Loom_chamber_5.png'),
(2, 'Titan March on Olympus', 'Kratos memimpin barisan para Titan mendaki Gunung Olympus untuk memulai perang besar.', 4, 'Gow2-titan.webp'),

-- Series 3 (God of War III)
(3, 'The Siege of Olympus', 'Kratos dan para Titan menyerang istana Dewa di puncak Gunung Olympus.', 1, 'GOW3.jpg'),
(3, 'Realm of the Underworld', 'Terlempar ke neraka terdalam, Kratos mengalahkan Hades dan merebut Soul of Hades.', 2, 'Temple_5.webp'),
(3, 'The Death of Zeus', 'Kratos melepaskan kekuatan Harapan dan mengakhiri kekuasaan Zeus selamanya.', 3, 'Youngzeus.webp'),

-- Series 4 (God of War 2018)
(4, 'The Marked Trees', 'Kratos dan putranya Atreus memulai perjalanan membawa abu Faye ke puncak tertinggi.', 1, 'GOWRG_Wallpaper_Desktop_Boat_4k.jpg'),
(4, 'The Stranger', 'Pertarungan brutal pertama melawan Baldur yang tidak bisa merasakan rasa sakit.', 2, 'GOW ascension.jpg'),
(4, 'Peak of Jötunheim', 'Kratos dan Atreus mencapai tanah para raksasa dan mengungkap kebenaran jati diri Loki.', 3, 'GOWRG_Wallpaper_Desktop_Vista_4k.jpg'),

-- Series 5 (God of War Ragnarök)
(5, 'Surviving Fimbulwinter', 'Kratos dan Atreus bertahan hidup di musim dingin abadi menghadapi kemarahan para Dewa Asgard.', 1, 'GOWRG_Wallpaper_Desktop_WolfSled_4k.jpg'),
(5, 'Across the Nine Realms', 'Menyatukan sekutu dari sembilan realm demi persiapan menghadapi perang penentu takdir.', 2, 'GOWRG_Wallpaper_Desktop_Vista_4k.jpg'),
(5, 'Ragnarök Falls', 'Perang akhir zaman pecah di Asgard, meruntuhkan tahta Odin dan mengakhiri siklus balas dendam.', 3, 'GOW RAGNAROK.jpg');

-- 4. Clean and Populate Weapons
TRUNCATE TABLE weapons;
INSERT INTO weapons (series_id, nama_senjata, deskripsi, gambar, stat_damage, stat_speed, stat_range, stat_cc) VALUES
-- Series 1
(1, 'Blades of Chaos', 'Senjata ikonik berantai yang ditempa di neraka Hades, terikat ke lengan Kratos.', 'BladeOfChaos_29.webp', 85, 80, 90, 70),
(1, 'Blade of Artemis', 'Pedang besar pemberian Dewi Artemis dengan kekuatan tebasan mematikan.', 'Blade_of_Artemis_29.webp', 95, 45, 55, 80),
(1, 'Barbarian Hammer', 'Palu raksasa Raja Barbarian yang menghasilkan gempa dan memanggil arwah.', 'Barbarian_Hammer.jpg', 90, 30, 85, 85),

-- Series 2
(2, 'Athena Blades', 'Sepasang pedang suci anugerah Dewi Athena berwarna keemasan.', 'GoWII_Blades_of_Athena.jpg', 80, 85, 85, 75),
(2, 'Blade of Olympus', 'Pedang dewa legendaris yang ditempa Zeus untuk memenangkan Perang Titan.', 'Blade_of_Olympus.jpg', 100, 60, 75, 95),
(2, 'Spear of Destiny', 'Tombak ungu bertuah dengan serangan tusukan jarak jauh dan kristal sihir.', 'GOW2_Spear_Of_Destiny.jpg', 75, 80, 95, 60),

-- Series 3
(3, 'Blades of Exile', 'Pedang pengasingan pemberian arwah Athena untuk membantai para Dewa Olympus.', 'BladeOfChaos_29.webp', 90, 85, 90, 80),
(3, 'Blade of Olympus', 'Senjata terkuat pembunuh dewa bermuatan petir langit Olympus.', 'Blade_of_Olympus.jpg', 100, 55, 70, 95),

-- Series 4
(4, 'Leviathan Axe', 'Kapak es buatan kurcaci Brok & Sindri dengan kemampuan kembali ke tangan pelemparnya.', 'GOW 2018.jpg', 88, 65, 70, 85),
(4, 'Blades of Chaos', 'Senjata masa lalu yang terpaksa diambil kembali Kratos demi menyelamatkan Atreus.', 'BladeOfChaos_29.webp', 85, 85, 90, 75),

-- Series 5
(5, 'Leviathan Axe', 'Kapak berkekuatan es kutub Fimbulwinter pembeku para musuh.', 'GODRagnarokCover1.webp', 90, 70, 75, 85),
(5, 'Blades of Chaos', 'Pedang api abadi pembakar es dan musuh-musuh di sembilan alam.', 'BladeOfChaos_29.webp', 88, 85, 90, 80),
(5, 'Draupnir Spear', 'Tombak sakti ciptaan Lady of the Forge dari cincin Draupnir yang berlipat ganda tanpa batas.', 'GOW2_Spear_Of_Destiny.jpg', 82, 95, 95, 70);

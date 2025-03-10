Config = {}


Config.EnableShops                = true    -- If true spawn Some Shop & Interior NPCs

--Cops--
Config.EnableCops                 = false    -- If true spawn All Cops at Departments
--Cops--

--Mafia--
Config.EnableMafia                = false    -- If true spawn All Mafia
--Mafia--

--Dealer
Config.EnableDealer				= false
--Dealer

--Nightclub--
Config.EnableNightclubs           = true    -- If true spawn Nightclub NPCs (Need a IPL Loader https://github.com/Bob74/bob74_ipl or other) (After Hours DLC)
Config.EnableSolomun              = false    -- If true spawn Solomun at Nightclub DJ
Config.EnableDixon                = false   -- If true spawn Dixon at Nightclub DJ
--Nightclub--

--Biker DLC--
Config.EnableDrugs                = true    -- If true spawn NPCs & Guards at Druglabors (Biker DLC)
Config.EnableWeapons              = true    -- If true spawn Guards with Weapons (can change in ped.lua)
--Biker DLC--

--Military Base Race--
Config.EnableMilibase             = true 
--Military Base Race--

--Autohaus Santori--
Config.EnableSantori              = true 
--Autohaus Santori--

-------------------------------------RANDOMSHOPS-------------------------------------
Config.Locations1 = { -- Some Shop & Interior NPCs
	{ x = 241.06,   y = -1378.91, z = 32.74, heading = 148.30 },	-- esx_dmvschool
	{ x = 262.43,   y = -1360.00, z = 23.55, heading = 47.15 },    -- Central Hospital Main
	{ x = 265.91,   y = -1358.64, z = 23.55, heading = 316.30 },    -- Central Hospital Main 2
	{ x = 440.85,   y = -978.41,  z = 29.69, heading = 165.95 },    -- PD Main Welcome
	{ x = 458.97,   y = -1017.28, z = 27.16, heading = 93.50 },    -- PD Main Garage
	{ x = -1117.15, y = -503.20,  z = 34.81, heading = 294.48 },    -- Moneywash Moveact
	{ x = -705.93,  y = -914.33,  z = 18.22, heading = 81.50 },    -- LT Gasoline1
	{ x = -47.14,   y = -1758.82, z = 28.42, heading = 46.58 },    -- LT Gasoline2
	{ x = 2678.57,  y = 3278.88,  z = 54.24, heading = 337.70 },    -- 24/7 Freeway
	{ x = 1960.20,  y = 3739.33,  z = 31.34, heading = 296.50 },    -- 24/7 Sandy Shores
	{ x = -1196.19, y = -892.78,  z = 13.00, heading = 300.42 },    -- Burgershot
	{ x = -32.94,   y = -1103.65, z = 25.42, heading = 77.25 },    -- Cardealer1
	{ x = 1224.68,  y = 2728.74,  z = 37.01, heading = 178.82 },    -- Cardealer2
	{ x = 1133.87,  y = -983.21,  z = 45.42, heading = 274.80 },    -- EL Rancho Robs Li
	{ x = 85.88,    y = -1959.85, z = 20.12, heading = 27.20 },    -- Grove Str Cannabis Dealer
	{ x = 6.80,     y = 6468.32,  z = 30.43, heading = 51.28 },    -- Paleto Bay Meth Dealer
	{ x = -3155.14, y = 1126.35,  z = 19.86, heading = 42.10 },    -- Cusmash opium Dealer
	{ x = 959.31,   y = -121.22,  z = 73.96, heading = 185.45 },    -- Vinewood Coke Dealer
	{ x = 408.06,   y = -1623.68, z = 28.29, heading = 219.45 },    -- Vehicle Impound
	{ x = 24.20,    y = -1347.60, z = 28.50, heading = 271.32 },    -- Strawberry 24/7
	{ x = 1165.09,  y = -323.51,  z = 68.21, heading = 93.72 },    -- LT Gasoline3
	{ x = -1486.41, y = -377.33,  z = 39.16, heading = 138.12 },    -- Morningwood Robs Li
	{ x = 1165.15,  y = 2711.11,  z = 37.16, heading = 176.58 },    -- Route 68 Robs Li
	{ x = 2557.46,  y = 380.49,   z = 107.62,heading = 4.25 },    -- Mountains Freeway 24/7
	{ x = 1391.82,  y = 3606.29,  z = 33.98, heading = 204.25 },    -- Sandy Shores ACE
	{ x = 549.27,   y = 2671.82,  z = 41.16, heading = 100.35 },    -- Sandy Shores 24/7
	{ x = 1697.35,  y = 4923.32,  z = 41.06, heading = 332.42 },    -- Sandy Shores LT Gasoline4
	{ x = 1727.62,  y = 6415.18,  z = 34.04, heading = 241.98 },    -- Chilliad Freeway 24/7
	{ x = -3241.96, y = 999.86,   z = 11.83, heading = 4.68 },    -- cumash Freeway 24/7
	{ x = -3038.68, y = 584.38,   z = 6.91,  heading = 24.72 },    -- Ocean Freeway 24/7
	{ x = -2966.12, y = 391.35,   z = 14.04, heading = 77.04 },    -- Ocean Freeway LT Gasoline5
	{ x = -1819.51, y = 793.72,   z = 137.08,heading = 134.72 },  -- Ocean Freeway LT Gasoline5
	{x=-684.5, y=5795.8, z=16.33, heading=148.88},
	{x = 191.4,y = -923.98,z = 29.69, heading = 142.17},
	{x = -86.1,y = 36.86,z = 70.8, heading = 331.84},  -- Phone Verkäufer    
	{x=-1167.6, y=4925.97, z=222.05, heading=259.37}, -- Kartoffel Verkäufer
	{x = -2650.41,  y = 3254.48,   z = 32.11, heading=324.96}
}

------------------------------------NIGHTCLUBS-------------------------------------
Config.Locations2 = { -- Nightclub Girls1
	{ x = -1593.89,   y = -3008.52, z = -80.01, heading = 209.22 },	-- NClub1
	{ x = -1587.04,   y = -3005.37, z = -80.01, heading = 137.55 },	-- NClub2
	{ x = -1576.61,   y = -3014.49, z = -80.01, heading = 168.78 },	-- NClub3
	{ x = -1590.54,   y = -3018.24, z = -77.00, heading = 317.10 },	-- NClub4
	{ x = -1585.82,   y = -3008.32, z = -77.00, heading = 218.75 },	-- NClub5
	{ x = -1599.40,   y = -3000.15, z = -76.81, heading = 233.95 },	-- NClub6
	{ x =  987.94,	y = -95.16,	z = 73.85,	heading = 218.5 },	-- BikerClub
	{ x = -2680.53, y = 3229.25, z = 36.22, heading = 239.25 }
}

Config.Locations3 = { -- Nightclub Girls Cheering
	{ x = -1594.81,   y = -3014.21, z = -80.01, heading = 71.46 },	-- NClub1
	{ x = -1597.48,   y = -3010.60, z = -80.01, heading = 104.40 },	-- NClub2
	{ x = -1595.69,   y = -3015.98, z = -78.81, heading = 7.77 },	-- NClub3
	{ x = -1590.34,   y = -3012.13, z = -77.00, heading = 92.40 },	-- NClub4
	{ x = -1605.82,   y = -3011.27, z = -78.80, heading = 244.36 },	-- NClub5
	{ x = -1383.55,   y = -612.17, z = 30.8, heading = 119.32 },
	{ x = -1379.91,   y = -617.64, z = 30.8, heading = 119.32 }
	
}

Config.Locations4 = { -- Nightclub Girls Partying
	{ x = -1597.33,   y = -3009.50, z = -80.01, heading = 170.30 },	-- NClub1
	{ x = -1588.78,   y = -3017.87, z = -77.01, heading = 65.83 },	-- NClub2
	{ x = -1597.09,   y = -3000.30, z = -76.81, heading = 145.02 },	-- NClub3
	{ x = -1577.94,   y = -3014.36, z = -80.01, heading = 225.58 },	-- NClub4
	--{ x = -1379.91,   y = -617.64, z = 30.9, heading = 119.32 },
	--{ x = -1383.55,   y = -612.17, z = 30.7, heading = 135.32 }
}

Config.Locations5 = { -- Nightclub Girls Slow
	{ x = -1596.56,   y = -3013.57, z = -80.01, heading = 65.55 },	-- NClub1
	{ x = -1591.78,   y = -3010.03, z = -80.01, heading = 116.30 },	-- NClub2
	{ x = -1587.04,   y = -3011.44, z = -77.00, heading = 101.45 },	-- NClub3
	{ x = -1598.90,   y = -3006.84, z = -77.00, heading = 268.78 },	-- NClub4
	{ x = -1575.12,   y = -3006.97, z = -80.01, heading = 157.70 },	-- NClub5
	{ x = -1391.75,   y = -605.6, z = 29.32, heading = 117.70 },
	{ x = -1376.75,   y = -628.6, z = 29.9, heading = 25.70 }
}

Config.Locations6 = { -- Nightclub Girls Tops
	{ x = -1598.59,   y = -3015.69, z = -79.21, heading = 282.30 },	-- NCTop1
	{ x = -1596.21,   y = -3007.97, z = -79.21, heading = 151.05 }	-- NCTop2
}

Config.Locations7 = { -- Nightclub Mens1
	{ x = -1599.30,   y = -3012.06, z = -80.01, heading = 316.20 },	-- NClub1
	{ x = -1587.75,   y = -3007.00, z = -80.01, heading = 354.15 },	-- NClub2
	{ x = -1575.79,   y = -3008.55, z = -80.01, heading = 324.48 }	-- NClub3
}

Config.Locations8 = { -- Nightclub Mens2
	{ x = -1592.69,   y = -3008.70, z = -80.01, heading = 133.05 },	-- NClub1
	{ x = -1606.27,   y = -3014.39, z = -78.80, heading = 337.85 },	-- NClub2
	{ x = -1575.75,   y = -3012.27, z = -80.01, heading = 135.35 },	-- NClub3
	{ x = -1588.74,   y = -3011.59, z = -77.00, heading = 277.38 },	-- NClub4
	{ x = -1599.36,   y = -3002.17, z = -76.81, heading = 325.15 }	-- NClub5
}

Config.Locations9 = { -- Nightclub Mens3
	{ x = -1597.49,   y = -3006.86, z = -77.00, heading = 93.60 },	-- NClub1
	{ x = -1596.35,   y = -3011.46, z = -80.01, heading = 107.00 },	-- NClub2
	{ x = -1611.66,   y = -3009.90, z = -80.01, heading = 119.85 }	-- NClub3
}

Config.Locations10 = { -- Nightclub Bartender
	{ x = -1584.95,   y = -3012.60, z = -77.01, heading = 92.70 },	-- NClub1
	{ x = -1577.97,   y = -3016.80, z = -80.01, heading = 359.28 },	-- NClub2
	{ x = -1572.20,   y = -3013.56, z = -75.41, heading = 272.63 }	-- NCWelcome
}

Config.Locations11 = { -- Nightclub Guards
	{ x = -1576.46,   y = -3010.37, z = -80.01, heading = 79.00 },	-- NClub1
	{ x = -1588.06,   y = -3014.43, z = -80.01, heading = 349.75 },	-- NClub2
	{ x = -1585.96,   y = -3016.78, z = -77.00, heading = 136.40 },	-- NClub3
	{ x = -1605.85,   y = -3013.04, z = -78.80, heading = 288.05 },	-- NClub4
	{ x = -1614.12,   y = -3009.50, z = -76.21, heading = 119.75 },	-- NClub5
	{ x = -1568.17,   y = -3015.47, z = -75.41, heading = 39.15 },	-- NCWelcome
	{ x = 194.45,     y = -3165.86, z = 4.79,   heading = 115.62 },	-- NCOut
	--
	{ x = 123.57,     y = -1290.38, z = 28.29,  heading = 240.82 },	-- Vanilla1
	{ x = 107.82,     y = -1298.90, z = 27.77,  heading = 172.95 },	-- Vanilla2
	{ x = 462.81,     y = -992.30,  z = 23.91,  heading = 349.60 },	-- LSPD Prison1
	{ x = 462.89,     y = -1003.08, z = 23.91,  heading = 347.88 },	-- LSPD Prison2
	{ x = 470.40,     y = -1015.15, z = 25.39,  heading = 154.75 },	-- LSPD Prison3
	{ x = -1388.12,   y = -591.25, z = 29.32, heading = 31.70 },
	{ x = -1397.12,   y = -594.25, z = 29.32, heading = 263.70 }
	
}

Config.Locations12 = { -- Nightclub Solomun
	{ x = -1604.01,   y = -3011.99, z = -78.80, heading = 266.30 }	-- NCSolomun
}

Config.Locations13 = { -- Nightclub Dixon
	{ x = -1604.01,   y = -3011.99, z = -78.80, heading = 266.30 },
	{ x = -1381.29,   y = -616.41, z = 30.5, heading = 103.32 }	-- NCDixon
}


------------------------------------BIKER DLC------------------------------------------
Config.Locations14 = { -- Biker Guards
	{ x = 1090.08,   y = -3191.25, z = -39.99, heading = 22.10 },	-- Guard1 Coca
	{ x = 1087.06,   y = -3187.90, z = -39.99, heading = 212.00 },	-- Guard2
	{ x = 1097.42,   y = -3198.71, z = -39.99, heading = 61.72 },	-- Guard3
	{ x = 1065.86,   y = -3185.16, z = -40.16, heading = 55.12 },	-- Guard4 Weed
	{ x = 1053.91,   y = -3192.39, z = -40.16, heading = 236.00 },	-- Guard5
	{ x = 1039.30,   y = -3196.09, z = -39.17, heading = 237.02 },	-- Guard6
	{ x = 2436.27,   y = 4976.72,  z = 45.57,  heading = 55.40 },
	--{ x = 1452.06,   y = -1683.54, z = 65.1,  	heading = 195.11 },	-- Guard7 Opium
	{ x = 2432.61,   y = 4961.56,  z = 45.82,  heading = 277.35 },	-- Guard8
	{ x = 997.14,    y = -3201.97, z = -37.39, heading = 322.08 },	-- Guard9 Meth
	{ x = 1001.31,   y = -3197.73, z = -39.99, heading = 293.75 },	-- Guard10
	{ x = 1014.44,   y = -3201.72, z = -39.99, heading = 36.63 }	-- Guard11
}

Config.Locations15 = { -- Biker Meth Cook
	{ x = 1005.75,   y = -3200.32, z = -39.52, heading = 178.83 }	-- Biker Cook
	

}

Config.Locations16 = { -- Meth Worker
	{ x = 1006.33,   y = -3197.67, z = -39.99, heading = 265.40 },	-- Biker Worker
	{ x = 1011.74,   y = -3196.86, z = -39.99, heading = 145.00 }	-- Biker Worker

}

Config.Locations17 = { -- Coca & Opium Worker
	{ x = 1091.35,   y = -3196.83, z = -39.99, heading = 359.28 },	-- Biker Worker
	{ x = 1101.37,   y = -3194.05, z = -39.99, heading = 6.90 },	-- Biker Worker
	{ x = 2431.59,   y = 4971.02,  z = 41.35,  heading = 37.75 },	-- Biker Worker
	{ x = 2435.69,   y = 4965.52,  z = 41.35,  heading = 221.82 },	-- Biker Worker
	{ x = 2222.52,	 y = 135.3,	 z = 225.47,	heading = 92.87},	-- Opium Verkäufer
	{ x = 912.46, 	y = 3206.67, z = 37.15,	heading = 335}	-- Opium Verkäufer

}

Config.Locations18 = { -- Biker Weed Worker
	{ x = 1055.29,   y = -3198.18, z = -40.16, heading = 298.92 },	-- Biker Worker
	{ x = 1063.62,   y = -3192.31, z = -40.10, heading = 210.30 },	-- Biker Worker
	{ x = 1058.15,   y = -3202.37, z = -40.05, heading = 44.00 },	-- Biker Worker
	{ x = 1050.60,   y = -3204.92, z = -40.12, heading = 213.05 }	-- Biker Worker
	
}

Config.Locations19 = { -- Cops Men LSPD
	{ x = 431.19,   y = -978.44, z = 29.71, heading = 206.50 },	-- Cops
	{ x = 431.75,   y = -979.22, z = 29.71, heading = 34.40 },	-- Cops
	{ x = 443.30,   y = -981.24, z = 29.69, heading = 0.70 },	-- Cops
	{ x = 454.05,   y = -980.02, z = 29.69, heading = 90.25 },	-- Cops
	{ x = 456.33,   y = -988.56, z = 29.69, heading = 2.66 },	-- Cops
	{ x = 459.73,   y = -989.61, z = 23.91, heading = 264.81 },	-- Cops
	{ x = 467.73,   y = -1016.14,z = 25.45, heading = 276.80 },	-- Cops
	--Sandy--
	{ x = 1852.67,  y = 3688.85,z = 33.27, heading = 204.98 },	-- Cops
	--PB--
	{ x = -448.19,  y = 6012.36,z = 30.72, heading = 310.80 }	-- Cops
	
}

Config.Locations20 = { -- Cops Men LSPD2
	{ x = 440.24,   y = -975.67, z = 29.69, heading = 24.28 },	-- Cops
	{ x = 437.07,   y = -996.31, z = 29.69, heading = 30.02	},	-- Cops
	{ x = 459.84,   y = -988.52, z = 23.91, heading = 230.57 },	-- Cops
	--Sandy--
	{ x = 1853.15,  y = 3690.16, z = 33.27, heading = 304.32 },	-- Cops
	--PB--
	{ x = -449.49,  y = 6012.42, z = 30.72, heading = 69.25 }	-- Cops
	
}

Config.Locations21 = { -- Cops Girl LSPD3
	{ x = 437.68,   y = -979.22, z = 29.69, heading = 245.80 },	-- Cops
	{ x = 430.80,   y = -979.18, z = 29.71, heading = 277.25 },	-- Cops
	{ x = 420.30,   y = -989.65, z = 29.71, heading = 208.18 },	-- Cops
	{ x = 452.85,   y = -988.00, z = 25.67, heading = 348.15 },	-- Cops
	--Sandy--
	{ x = 1854.39,  y = 3688.27, z = 33.27, heading = 97.55 },	-- Cops
	--PB--
	{ x = -441.35,  y = 6016.41, z = 30.70, heading = 342.40 }	-- Cops
	
}

Config.Locations22 = { -- Guards Weapons 
	--{ x = 448.64,   y = -988.45, z = 29.69, heading = 43.60 },	-- LSPDGuards
	--{ x = 436.02,   y = -978.95, z = 29.69, heading = 216.95 },	-- LSPDGuards
	{ x = 1064.35,  y = -3187.37,z = -40.13,heading = 140.85 },	-- GuardsWeed
	{ x = 1055.62,  y = -3191.79,z = -40.15,heading = 178.32 },	-- GuardsWeed
	{ x = 1035.94,  y = -3206.06,z = -39.17,heading = 284.78 },	-- GuardsWeed
	{ x = 1042.39,  y = -3194.08,z = -39.16,heading = 180.62 },	-- GuardsWeed
	{ x = 999.07,   y = -3198.55,z = -37.39,heading = 264.22 },	-- GuardsMeth
	{ x = 1016.91,  y = -3198.42,z = -39.99,heading = 122.70 },	-- GuardsMeth
	{ x = 2433.71,  y = 4975.68, z = 45.57, heading = 16.02 },	-- Guardsopium
	{ x = 2437.40,  y = 4966.65, z = 41.35, heading = 66.08 },	-- Guardsopium
	{ x = 1089.90,  y = -3187.78,z = -39.99,heading = 158.60 },	-- GuardsCoca
	{ x = 1099.33,  y = -3199.25,z = -39.99,heading = 347.42 }	-- GuardsCoca
	
}

Config.Locations23 = { -- MAFIA Vagos NPCS - Leuchtturm
--	{ x = 3320.61,   y = 5167.37, z = 17.42, heading = 228.23 },	-- MAFIA 
--	{ x = 3322.84,   y = 5170.12, z = 17.42, heading = 228.12 },	-- Mafia 
--	{ x = 3325.70,   y = 5167.55, z = 17.39, heading = 238.77 },	-- Mafia 
--	{ x = 3326.83,   y = 5165.49, z = 17.47, heading = 8.13 },	-- Mafia 
--	{ x = 3329.83,   y = 5164.85, z = 17.52, heading = 157.26 },	-- Mafia 
--	{ x = 3327.33,   y = 5161.31, z = 17.56, heading = 182.00 },	-- Mafia 
--	{ x = 3321.37,   y = 5161.89, z = 17.38, heading = 182.92 },	-- Mafia 
--	{ x = 3322.48,   y = 5159.31, z = 17.41, heading = 36.15 },	-- Mafia 
--	{ x = 3318.76,   y = 5160.05, z = 17.41, heading = 200.39 },	-- Mafia 
--	{ x = 3317.85,   y = 5154.84, z = 17.35, heading = 175.80 },	-- Mafia 
--	{ x = 3316.16,   y = 5153.89, z = 17.34, heading = 260.75 },	-- Mafia 
--	{ x = 3328.88,   y = 5138.79, z = 16.54, heading = 209.12 },	-- Mafia 
--	{ x = 3347.41,   y = 5147.03, z = 18.30, heading = 232.42 },	-- Mafia 
--	{ x = 3350.80,   y = 5152.65, z = 18.82, heading = 302.73 },	-- Mafia 
--	{ x = 3336.79,   y = 5169.39, z = 17.30, heading = 282.01 },	-- Mafia 
--	{ x = 3337.23,   y = 5174.06, z = 17.26, heading = 270.79 },	-- Mafia 
--	{ x = 3309.51,   y = 5127.69, z = 16.21, heading = 156.88 },	-- Mafia 
--	{ x = 3313.82,   y = 5163.41, z = 17.42, heading = 116.71 },	-- Mafia 
--	{ x = 3306.62,   y = 5154.39, z = 17.39, heading = 31.43 },	-- Mafia 
--	{ x = 3306.19,   y = 5157.07, z = 17.39, heading = 161.62 },	-- Mafia 
--	{ x = 3294.18,   y = 5161.00, z = 17.35, heading = 4.97 },	-- Mafia 
--	{ x = 3294.96,   y = 5163.91, z = 17.35, heading = 125.27 },	-- Mafia 
--	{ x = 3292.67,   y = 5164.36, z = 17.35, heading = 216.75 },	-- Mafia 
--	{ x = 3284.47,   y = 5171.04, z = 17.59, heading = 147.70 },	-- Mafia 
--	{ x = 3280.86,   y = 5173.69, z = 17.79, heading = 172.81 },	-- Mafia 
--	{ x = 3279.24,   y = 5171.60, z = 18.01, heading = 314.42 },	-- Mafia 
--	{ x = 3272.86,   y = 5181.90, z = 18.50, heading = 118.26 },	-- Mafia 
--	{ x = 3269.86,   y = 5192.80, z = 18.58, heading = 42.04 },	-- Mafia 
--	{ x = 3274.79,   y = 5217.09, z = 17.65, heading = 355.84 },	-- Mafia 
--	{ x = 3268.93,   y = 5219.44, z = 18.13, heading = 52.19 },	-- Mafia 
--	{ x = 3301.10,   y = 5226.72, z = 15.04, heading = 13.34 },	-- Mafia 
--	{ x = 3316.62,   y = 5213.51, z = 16.50, heading = 304.11 },	-- Mafia 
--	{ x = 3334.63,   y = 5196.84, z = 16.08, heading = 288.23 },	-- Mafia 
--	{ x = 3356.99,   y = 5177.89, z = 9.76, heading = 268.47 },	-- Mafia 
--	{ x = 3297.76,   y = 5172.49, z = 19.11, heading = 139.72 },	-- Mafia 
--	{ x = 3305.89,   y = 5166.35, z = 22.52, heading = 177.05 },	-- Mafia 
--	{ x = 3316.85,   y = 5181.97, z = 22.51, heading = 202.29 },	-- Mafia 
--	{ x = 3213.85,   y = 5121.73, z = 17.51, heading = 150.20 },	-- Mafia
--  { x = 3211.88,   y = 5134.30, z = 17.71, heading = 120.48 },	-- Mafia 	
--	{ x = 3202.40,   y = 5180.43, z = 36.72, heading = 246.75 },	-- Mafia
--	{ x = 3155.62,   y = 5198.87, z = 58.10, heading = 219.15 },	-- Mafia
--	{ x = 3160.37,   y = 5207.84, z = 59.02, heading = 349.68 },	-- Mafia
--	{ x = 3174.36,   y = 5202.60, z = 49.42, heading = 316.93 },	-- Mafia	
--	{ x = 3202.42,   y = 5233.57, z = 23.76, heading = 20.59 },	    -- Mafia
--	{ x = 3208.01,   y = 5237.32, z = 23.73, heading = 34.12 },	-- Mafia
}
Config.Locations24 = { -- MAFIA Sniper NPCS - Leuchtturm
--	{ x = 3304.54,   y = 5174.74, z = 29.90, heading = 141.89 },	-- MAFIA Sniper Dach  Leuchtturm
--	{ x = 3299.23,   y = 5179.52, z = 29.43, heading = 60.52 },	    -- MAFIA Sniper Dach Leuchtturm
	{ x = 1229.50,   y = -2921.32, z = 16.33, heading = 112.29 },	-- MAFIA Sniper Schiff Containerhafen Treppenaufgang oben
	{ x = 1211.06,   y = -2946.57, z = 28.66, heading = 160.89 },	-- MAFIA Sniper Schiff Containerhafen Kran vorne oben
}
Config.Locations25 = { -- MAFIA Sturm NPCS - 
	--	{ x = 3314.11,   y = 5177.12, z = 18.61, heading = 215.05 },	-- MAFIA Sturm Leuchtturm
	--	{ x = 3311.32,   y = 5173.46, z = 18.62, heading = 241.25 },	-- MAFIA Sturm Leuchtturm
	--	{ x = 3316.50,   y = 5176.38, z = 17.46, heading = 234.53 },	-- MAFIA Sturm Leuchtturm
	--	{ x = 3312.77,   y = 5172.21, z = 17.45, heading = 219.42 },	-- MAFIA Sturm Leuchtturm
	-- 	{ x = 3067.06,   y = 5085.43, z = 23.37, heading = 130.18 },	-- MAFIA Sturm Bridge Leuchtturm
	--	{ x = 3052.84,   y = 5085.84, z = 23.66, heading = 223.40 },	-- MAFIA Sturm Bridge Leuchtturm
	{ x = 1228.07,   y = -2924.83, z = 8.32, heading = 100.06 },		-- MAFIA Sturm Schiff Containerhafen Treppenaufgang rechts 
	{ x = 1227.89,   y = -2964.11, z = 8.32, heading = 87.08 },			-- MAFIA Sturm Schiff Containerhafen Lauf Mitte
	{ x = 1227.88,   y = -3003.80, z = 8.32, heading = 90.52 },			-- MAFIA Sturm Schiff Containerhafen Treppenaufgang links
}
Config.Locations26 = { -- Dealer
	{ x = 551.53,   y = -2693.4, z = 5.2, heading = 217.19 },	-- Dealer
	
}
-- Military Base Race -- 
Config.Locations27 = { -- Military Base Race
	{ x = -2449.88,   y = 3650.99, z = 13.38, heading = 166.18 },	-- Security Einfahrt von Highway
	{ x = -2259.10,   y = 3355.53, z = 32.25, heading = 285.50 },	-- Security Einfahrt nach Schranke
	{ x = -2661.83,   y = 3223.33, z = 36.22, heading = 323.57 },	-- Control Tower 1
	{ x = -2661.28,   y = 3220.79, z = 36.22, heading = 253.25 },	-- Control Tower 2
	{ x = -2288.76,   y = 3046.17, z = 31.81, heading = 150.43 },	-- Ziellinie
}

-- Autohaus Santori -- 
Config.Locations28 = { -- Autohaus Santori Sakretärin
	{ x = -1182.86,   y = -1721.96, z = 3.39, heading = 220.18 },	-- Vorne Halle
	{ x = -1175.7,   y = -1699.99, z = 3.42, heading = 30.13 },	-- Rechte Seite Büro
}


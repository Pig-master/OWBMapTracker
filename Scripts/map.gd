extends CanvasLayer

var selected_nation:TextureButton
var green_solid:bool = false

var to_save:Dictionary = {
	"green_shades" : ["e5ffe2","d9fad6","cdf4cb","c1efbf","b5eab4","a9e4a8","9ddf9d","91d991","85d485","79cf7a","6cc96e","60c463","54bf57","48b94b","3cb440","30ae34","24a929","18a41d","0c9e12","009906"],
	"nations": {
	"215th":{},
	"Arborg Junta":{},
	"Archdiocese of Santa Fe":{},
	"Arroyo":{},
	"Assassin City":{},
	"Badland Buckaroos":{},
	"Baggers":{},
	"Battleford":{},
	"Baron's Eyrie":{},
	"Baudelio Ranchers":{},
	"Bayou Motors":{},
	"Beltran-Levya":{},
	"Big Grass":{},
	"Binary Counts":{},
	"Bismarck":{},
	"Black Canyon":{},
	"Blue Rose Society":{},
	"Bone Dancers":{},
	"Broken Coast":{},
	"Caesar's Legion":{},
	"Carbon":{},
	"Carcass Walkers":{},
	"Chemult Station":{},
	"Cherokee Nation":{},
	"Chichen Itza":{},
	"Chickasaw-Muscogee Coalition":{},
	"Choctaw Nation":{},
	"Church of the Silo":{},
	"Ciphers":{},
	"Circle Junction":{},
	"Claim Jumpers":{},
	"Costa Cafeinada":{},
	"Cowboy Country":{},
	"Crazy Horns":{},
	"Cult of Liberty":{},
	"Cypher Warband":{},
	"Dam Busters":{},
	"Dead Horses":{},
	"Deadline":{},
	"Desperados":{},
	"Dramatae":{},
	"Dundurn":{},
	"Eagle Rock":{},
	"Eastport":{},
	"Eden":{},
	"Eighties":{},
	"Ejército Mexicano":{},
	"Elko Posse":{},
	"Eureka":{},
	"Fallen Creed":{},
	"Far Son":{},
	"Foragers":{},
	"Four Fathers":{},
	"Fourways":{},
	"Free Fighters":{},
	"Gator Maws":{},
	"Gente Del Sol":{},
	"Glowbugs":{},
	"Glow's Cradle":{},
	"Grabber Territory":{},
	"Guardians":{},
	"Guerreros de Honduras":{},
	"Haida Confederation":{},
	"Heaven's Gate":{},
	"High Chapel":{},
	"Highland Watch":{},
	"Historians":{},
	"Houston Rockets":{},
	"Iron Alliance":{},
	"Iron Confederacy":{},
	"Ironmongers":{},
	"Jackals":{},
	"Jacksons":{},
	"Kamlo":{},
	"Kingdom of Manitoba":{},
	"Klamath":{},
	"Koover":{},
	"Lanius's Cohort":{},
	"Las Granjas":{},
	"Live Wires":{},
	"Loid's Ministry":{},
	"Lone Star":{},
	"Lonetree":{},
	"Lord's Anointed":{},
	"Los":{},
	"Lost Hills":{},
	"Lubbock":{},
	"Luminous Ones":{},
	"MacArthur":{},
	"Marrow Drinkers":{},
	"Marshall Republic":{},
	"Max Sec":{},
	"Maxson Expedition":{},
	"Mescalero Nation":{},
	"Metis Congress":{},
	"Metal Mouths":{},
	"Middlemark":{},
	"Mirelurk Tribe":{},
	"Modoc":{},
	"Mojave Chapter":{},
	"Mojave Territories":{},
	"Montana Chapter":{},
	"Murtaugh Reformers":{},
	"Navajo":{},
	"Navarro Territories":{},
	"New California Republic":{},
	"New Canaan":{},
	"New Hammond":{},
	"New Reno":{},
	"New Vegas":{},
	"New Victoria":{},
	"Newton":{},
	"Niitsitapi":{},
	"Northern Khans":{},
	"Nueva Aztlán":{},
	"Olympus Tribe":{},
	"Ouroboros":{},
	"Packers":{},
	"Passkeepers":{},
	"Paz Bandits":{},
	"Pecos Colony":{},
	"Petro Chico":{},
	"Pine Ridge":{},
	"Pleasantdale":{},
	"Port Maw":{},
	"Protectron Security Hub":{},
	"Rad Hazards":{},
	"Reclamation Army Depot":{},
	"Republic of the Rio Grande":{},
	"Republic of Three Rivers":{},
	"Rib Breakers":{},
	"Riperult Territory":{},
	"Roach King":{},
	"Robot City":{},
	"Rogue Rangers":{},
	"Rotpurgers":{},
	"Ruby Valley Refuge":{},
	"Ruminators":{},
	"Rusty Hooks":{},
	"Safehaven":{},
	"Scorpion's Bite":{},
	"Scrappers Compact":{},
	"Shale's Army":{},
	"Shi":{},
	"Shoshone Nation":{},
	"Site Y":{},
	"Sinaloa Cartel":{},
	"Sky Reavers":{},
	"Slags":{},
	"S'Lanter":{},
	"Sleepers":{},
	"Sorrows":{},
	"Sons of Kaga":{},
	"Standing Rock":{},
	"State of Moose Jaw":{},
	"Stoon Dandies":{},
	"Storm Mongers":{},
	"Strathcommune":{},
	"Summers Federation":{},
	"Sun Dogs":{},
	"Syilx Nation":{},
	"Tar Walkers":{},
	"Texan Arms Association":{},
	"Texan Brotherhood":{},
	"The Apostles":{},
	"The Blighted Woods":{},
	"The Carthaginians":{},
	"The Cause":{},
	"The Chained Choir":{},
	"The Damned":{},
	"The Den":{},
	"The Divide":{},
	"The Executives":{},
	"The Flawed Parish":{},
	"The Fringe":{},
	"The Gateway":{},
	"The Grand Duchy of Langenburg":{},
	"The Great Stampede":{},
	"The Last Lodge":{},
	"The Last Patrol":{},
	"The Last Redoubt":{},
	"The Old Believers":{},
	"The Old Bones":{},
	"The Old Country":{},
	"The Order":{},
	"The Patrolmen":{},
	"The Pioneer Company":{},
	"The Pursuant":{},
	"The Rapids":{},
	"The Reservation":{},
	"The Timberline":{},
	"The Viceroyalty":{},
	"Tierra de los Tzotzil":{},
	"Timekeepers":{},
	"Tlalocan":{},
	"Tohono Nation":{},
	"Troll Warren":{},
	"Tubeheads":{},
	"TV Town":{},
	"Twin Mothers":{},
	"Two Peoples":{},
	"Two Sun":{},
	"Uintah":{},
	"Umbra":{},
	"Unbound":{},
	"Unity of Austin":{},
	"Valle Bandits":{},
	"Vault 37":{},
	"Vault City":{},
	"Vipers":{},
	"Washington Brotherhood":{},
	"White Legs":{},
	"Whistler":{},
	"Withered Dogs":{},
	"Yakama Nation":{},
	"Yakuza Territories":{},
	"Yellowstone Park":{},
	"Coal Consortium":{},
	"Hangdogs":{},
	"Painted Rock":{},
	"Dredgers":{},
	"Troll Warden":{},
	"Hope Port":{},
	"Ronto":{},
	"Ontario Enclave":{},
	"Windsor Wreckers":{},
	"Hosers":{},
	"Buffalo Health Service":{},
	"Upstate Federation":{},
	"Breakers":{},
	"Valley of Amman":{},
	"New New Castle":{},
	"Gelassenheit":{},
	"Confectionary Collective":{},
	"Philly Raiders":{},
	"Harrisburg Bandits":{},
	"Johnstown":{},
	"Trog Country":{},
	"The Pitt":{},
	"Bay Fisheries":{},
	"AAFB Automated Security":{},
	"Dover Traders":{},
	"DC Settlements":{},
	"Raven Rock":{},
	"Church of Rocky":{},
	"Lyons' Chapter":{},
	"Rivet City":{},
	"Talon Corporation":{},
	"Lorentz Force":{},
	"Onionburg":{},
	"Cult of Cobalt":{},
	"Monongahela":{},
	"Green Mountain":{},
	"DC Raiders":{},
	"Andale Cannibals":{},
	"Fire Marshalls":{},
	"AtomBaptists":{},
	"Apocryphia of Poseidon":{},
	"Known Folk":{},
	"Garden of Eden":{},
	},
	"submods":{
		"East Coast Rebirth":false
	}
}

#map is Crtl+10 screenshot with 1k pixels cut from the left side and 500 pixels cut from the right side

func _ready() -> void:
	for x in $Nations.get_children():
		var y = x.get_child(0)
		y.pressed.connect(y._on_texture_button_pressed,CONNECT_APPEND_SOURCE_OBJECT)
	colour_nations()
	for x in to_save["green_shades"]:
		var hex = preload("uid://nxqm06063qoa").instantiate()
		$SideBar/Settings/VBoxContainer/Colours/VBoxContainer.add_child(hex)

func colour_nations():
	for x in $Nations.get_children():
		var y = x.get_child(0)
		var entries:int = 0
		for g in to_save["nations"][y.name]:
			entries += 1
		if green_solid == false:
			if entries <= 19 and entries != 0:
				y.self_modulate = Color(to_save["green_shades"][entries-1])
			elif entries == 0:
				y.self_modulate = Color.WHITE
			else:
				y.self_modulate = Color(to_save["green_shades"][19])
		else:
				if entries >= 1:
					@warning_ignore("integer_division") y.self_modulate = to_save["green_shades"][int(len(to_save["green_shades"])/2)-1]
				else:
					y.self_modulate = Color.WHITE

func _on_save_pressed() -> void:
	var json_string = JSON.stringify(to_save)
	var file := FileAccess.open("user://save.json", FileAccess.WRITE)
	file.store_line(json_string)
	file.close()

func _on_load_pressed() -> void:
	$Menu.visible = false
	var loaded_file := FileAccess.open("user://save.json", FileAccess.READ)
	if loaded_file != null:
		var file_content := loaded_file.get_as_text()
		loaded_file.close()
		var json := JSON.new()
		var parse_result := json.parse(file_content)
		if parse_result == OK:
			var loaded_data = json.data
			to_save = loaded_data
	colour_nations()
	for x in $SideBar/Settings/VBoxContainer/Colours/VBoxContainer.get_children():
		x.on_load()
	check_submods()

func _on_empty_pressed() -> void:
	$Menu.visible = false

func _on_png_pressed() -> void:
	$SideBar.visible = false
	$Menu.visible = false
	await get_tree().create_timer(0.1).timeout
	get_viewport().get_texture().get_image().save_png("user://image.png")
	$SideBar.visible = true

func _on_gradient_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		green_solid = true
	elif toggled_on == false:
		green_solid = false
	colour_nations()

func _on_display_type_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		get_window().canvas_item_default_texture_filter = Viewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST
	elif toggled_on == false:
		get_window().canvas_item_default_texture_filter = Viewport.DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("Z"):
		if $Camera2D.zoom == Vector2(0.28,0.28):
			$Camera2D.global_position = $Camera2D.get_global_mouse_position()
			$Camera2D.zoom = Vector2(1,1)
		elif $Camera2D.zoom == Vector2(1,1):
			$Camera2D.global_position = Vector2(2075.0,1158.0)
			$Camera2D.zoom = Vector2(0.28,0.28)

func check_submods():
	if to_save["submods"]["East Coast Rebirth"] == true:
		to_save["submods"]["East Coast Rebirth"] = false
		ECR()

func ECR():
	if to_save["submods"]["East Coast Rebirth"] == true:
		$"SideBar/Settings/VBoxContainer/Submods/VBoxContainer/East Coast Rebirth/East Coast Rebirth".button_pressed = false
		to_save["submods"]["East Coast Rebirth"] = false
		for x in get_tree().get_nodes_in_group("East Coast Rebirth"):
			x.visible = false
	elif to_save["submods"]["East Coast Rebirth"] == false:
		$"SideBar/Settings/VBoxContainer/Submods/VBoxContainer/East Coast Rebirth/East Coast Rebirth".button_pressed = true
		to_save["submods"]["East Coast Rebirth"] = true
		for x in get_tree().get_nodes_in_group("East Coast Rebirth"):
			x.visible = true

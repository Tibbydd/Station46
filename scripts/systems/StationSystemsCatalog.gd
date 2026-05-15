extends RefCounted
class_name StationSystemsCatalog

static func get_floor_routes() -> Array[Dictionary]:
	return [
		{"id": "main_stairwell", "label": "Main Stairwell", "delta_floor": 1, "requirements": ["power_or_manual_pry"], "risk": "predictable enemy choke point"},
		{"id": "service_elevator", "label": "Service Elevator", "delta_floor": 1, "requirements": ["fuse", "power_cell"], "risk": "loud motor call"},
		{"id": "executive_hidden_lift", "label": "Executive Hidden Lift", "delta_floor": 3, "requirements": ["access_credential", "discovered_office_switch"], "risk": "rare but bypasses large station sections"},
		{"id": "maintenance_ladder_riser", "label": "Maintenance Ladder Riser", "delta_floor": 1, "requirements": ["crouch_route"], "risk": "slow climb and no reload room"},
		{"id": "cargo_hoist_shaft", "label": "Cargo Hoist Shaft", "delta_floor": -2, "requirements": ["hoist_power", "brake_release"], "risk": "crush hazard and noise"},
		{"id": "ventilation_stack", "label": "Ventilation Stack", "delta_floor": 1, "requirements": ["small_entry", "fan_lockout"], "risk": "ambush pockets and oxygen loss"},
		{"id": "exterior_catwalk", "label": "Exterior Catwalk", "delta_floor": 2, "requirements": ["suit_patch", "airlock_cycle"], "risk": "low gravity shove risk"},
	]

static func get_environmental_kills() -> Array[Dictionary]:
	return [
		{"id": "volatile_tank", "label": "Volatile Tank", "verbs": ["shoot", "throw", "wire_trip"], "effect": "blast and fragmentation"},
		{"id": "arc_junction", "label": "Arc Junction", "verbs": ["overload", "wet_floor", "shove_enemy"], "effect": "electrical stun and burn"},
		{"id": "steam_main", "label": "Steam Main", "verbs": ["open_valve", "rupture_pipe", "button_cycle"], "effect": "cone of heat and vision block"},
		{"id": "pressure_dump", "label": "Pressure Dump", "verbs": ["cycle_airlock", "break_window", "vent_panel"], "effect": "pulls bodies toward breach"},
		{"id": "cargo_crusher", "label": "Cargo Crusher", "verbs": ["button", "thrown_object", "timed_lure"], "effect": "localized lethal impact"},
		{"id": "coolant_flood", "label": "Coolant Flood", "verbs": ["shoot_coupling", "open_drain", "reroute_pump"], "effect": "slow, brittle, visibility haze"},
		{"id": "security_crossfire", "label": "Security Crossfire", "verbs": ["repair_turret", "spoof_target", "bait_enemy"], "effect": "ballistic area denial"},
	]

static func get_light_failure_reasons() -> Array[Dictionary]:
	return [
		{"id": "missing_fuse", "label": "Fuse missing from local panel"},
		{"id": "tripped_breaker", "label": "Breaker tripped after short"},
		{"id": "cut_cable", "label": "Cable severed in service wall"},
		{"id": "generator_offline", "label": "Generator offline on another floor"},
		{"id": "battery_bank_drained", "label": "Emergency battery bank drained"},
		{"id": "flooded_conduit", "label": "Conduit flooded and unsafe"},
		{"id": "manual_lockout", "label": "Technician lockout still engaged"},
		{"id": "burned_transformer", "label": "Transformer burned out"},
		{"id": "ai_load_shed", "label": "Station logic shed lighting load"},
		{"id": "parasite_growth", "label": "Growth occluding fixtures and cable paths"},
	]

static func get_light_restore_methods() -> Array[Dictionary]:
	return [
		{"id": "replace_fuse", "label": "Replace fuse", "resource": "fuse", "amount": 1},
		{"id": "reset_breaker", "label": "Reset breaker", "resource": "", "amount": 0},
		{"id": "patch_cable", "label": "Patch cable", "resource": "cable_spool", "amount": 1},
		{"id": "slot_power_cell", "label": "Slot power cell", "resource": "power_cell", "amount": 1},
		{"id": "restart_generator", "label": "Restart generator", "resource": "tool_parts", "amount": 1},
		{"id": "reroute_from_adjacent_floor", "label": "Reroute adjacent floor power", "resource": "access_credential", "amount": 1},
	]

static func get_door_problem_solutions() -> Array[Dictionary]:
	return [
		{"problem": "locked", "solution": "use_access_credential", "resource": "access_credential", "amount": 1},
		{"problem": "locked", "solution": "power_local_override", "resource": "fuse", "amount": 1},
		{"problem": "locked", "solution": "shoot_lock_housing", "resource": "ammo", "amount": 1},
		{"problem": "locked", "solution": "maintenance_bypass", "resource": "tool_parts", "amount": 1},
		{"problem": "locked", "solution": "hidden_route_around", "resource": "", "amount": 0},
		{"problem": "jammed", "solution": "manual_pry", "resource": "", "amount": 0},
		{"problem": "jammed", "solution": "shove_or_bash", "resource": "", "amount": 0},
		{"problem": "jammed", "solution": "reverse_motor", "resource": "power_cell", "amount": 1},
		{"problem": "jammed", "solution": "cut_debris", "resource": "cutting_charge", "amount": 1},
		{"problem": "jammed", "solution": "go_through_service_space", "resource": "", "amount": 0},
		{"problem": "broken", "solution": "replace_fuse", "resource": "fuse", "amount": 1},
		{"problem": "broken", "solution": "patch_control_cable", "resource": "cable_spool", "amount": 1},
		{"problem": "broken", "solution": "install_actuator_part", "resource": "tool_parts", "amount": 2},
		{"problem": "broken", "solution": "force_open_permanently", "resource": "", "amount": 0},
		{"problem": "broken", "solution": "route_power_from_other_floor", "resource": "access_credential", "amount": 1},
	]

static func get_station_modules() -> Array[Dictionary]:
	return [
		{"id": "hab_ring", "label": "Habitation Ring", "uses": ["rest points", "personal stories", "hidden offices", "food stores", "identity clues"]},
		{"id": "medical_deck", "label": "Medical Deck", "uses": ["treatment", "body horror", "pharma storage", "triage logs", "sterile hazards"]},
		{"id": "industrial_core", "label": "Industrial Core", "uses": ["power", "heavy tools", "crushers", "heat", "noise"]},
		{"id": "research_vault", "label": "Research Vault", "uses": ["specimen containment", "weird sensors", "restricted routes", "story evidence", "corruption spikes"]},
		{"id": "admin_spine", "label": "Admin Spine", "uses": ["access credentials", "hidden elevators", "security routing", "maps", "blackmail rooms"]},
		{"id": "exterior_works", "label": "Exterior Works", "uses": ["catwalks", "antennae", "low oxygen", "long sightlines", "alternate floor skips"]},
	]

static func get_economy_items() -> Array[Dictionary]:
	return [
		{"id": "fuse", "label": "Fuse", "uses": ["lights", "doors", "elevators", "medical cabinets", "defense relays"]},
		{"id": "power_cell", "label": "Power Cell", "uses": ["emergency lights", "door motors", "tools", "turret frames", "lift calls"]},
		{"id": "cable_spool", "label": "Cable Spool", "uses": ["light repair", "button rewiring", "generator bypass", "sensor tripline", "door patch"]},
		{"id": "tool_parts", "label": "Tool Parts", "uses": ["generator repair", "weapon maintenance", "door actuators", "turrets", "medical devices"]},
		{"id": "access_credential", "label": "Access Credential", "uses": ["doors", "office lifts", "admin terminals", "armories", "floor reroutes"]},
		{"id": "cutting_charge", "label": "Cutting Charge", "uses": ["sealed panels", "jammed doors", "floor grates", "emergency bulkheads", "heavy locks"]},
		{"id": "med_stock", "label": "Medical Stock", "uses": ["trauma kits", "stabilizers", "field surgery", "tradeoffs", "story triage"]},
		{"id": "crash_kit", "label": "Crash Kit", "uses": ["fast trauma treatment", "emergency stabilization", "body recovery"]},
		{"id": "field_cauterizer_pen", "label": "Field Cauterizer Pen", "uses": ["stop bleeding without med stock", "pain tradeoff", "burn risk"]},
		{"id": "earpiece_patch", "label": "Earpiece Patch", "uses": ["temporary clean comms", "signal repair", "paranoia counterplay"]},
		{"id": "suppressor_wrap", "label": "Suppressor Wrap", "uses": ["temporary quiet shots", "single-use weapon prep", "stealth breach"]},
		{"id": "magnetic_puller", "label": "Magnetic Puller", "uses": ["recover dropped weapon", "drag lost kit", "safe reach tool"]},
		{"id": "suit_patch", "label": "Suit Patch", "uses": ["exterior routes", "oxygen leaks", "airlock mistakes"]},
		{"id": "match_grade_rounds", "label": "Match-Grade Rounds", "uses": ["one strong magazine", "weak-point prep", "rare ammo pressure"]},
		{"id": "boot_grips", "label": "Boot Grips", "uses": ["quiet movement", "hard-surface stealth", "catwalk safety"]},
		{"id": "coolant_canister", "label": "Coolant Canister", "uses": ["throwable slow zone", "thermal control", "brittle parasite armor"]},
		{"id": "static_charge", "label": "Static Charge", "uses": ["single-use stun", "door actuator shock", "brief crowd control"]},
		{"id": "splint_roll", "label": "Splint Roll", "uses": ["fracture support", "field brace", "limb salvage"]},
	]

static func get_wearable_modules() -> Array[Dictionary]:
	return [
		{"id": "hud_glasses", "label": "Diagnostic Glasses", "slot": "glasses", "power": 0.0, "effect": "enables diegetic vitals and stamina overlay"},
		{"id": "ammo_link_receiver", "label": "Ammo Link Receiver", "slot": "glasses_module", "power": 0.7, "effect": "shows ammo only when weapon transmitter is installed"},
		{"id": "brainwave_reader", "label": "Brainwave Reader", "slot": "glasses_module", "power": 1.1, "effect": "shows mental corruption state"},
		{"id": "compass_module", "label": "Compass Module", "slot": "glasses_module", "power": 0.45, "effect": "shows facing direction"},
		{"id": "route_mapper", "label": "Route Mapper", "slot": "glasses_module", "power": 0.9, "effect": "shows floor and discovered route context"},
		{"id": "comms_transcriber", "label": "Comms Transcriber", "slot": "glasses_module", "power": 0.5, "effect": "renders earpiece speech as text"},
		{"id": "reticle_lens", "label": "Reticle Lens", "slot": "glasses_module", "power": 0.35, "effect": "adds a simple projected aiming mark"},
		{"id": "sound_meter", "label": "Sound Meter", "slot": "glasses_module", "power": 0.8, "effect": "estimates stealth noise"},
		{"id": "low_light_filter", "label": "Low-Light Filter", "slot": "glasses_module", "power": 1.2, "effect": "boosts dark-sector visibility but gives Echo-class threats a glow to track"},
		{"id": "threat_classifier", "label": "Threat Classifier", "slot": "glasses_module", "power": 1.0, "effect": "future enemy silhouette classification"},
	]

static func get_weapon_attachments() -> Array[Dictionary]:
	return [
		{"id": "ammo_telemetry_transmitter", "label": "Ammo Telemetry Transmitter", "slot": "sensor", "durability": 1.0, "effect": "pairs with glasses receiver for exact ammo display"},
		{"id": "compact_suppressor", "label": "Compact Suppressor", "slot": "muzzle", "durability": 1.0, "effect": "lower report, slightly lower velocity"},
		{"id": "port_compensator", "label": "Port Compensator", "slot": "muzzle", "durability": 1.0, "effect": "lower climb, louder report"},
		{"id": "reflex_sight", "label": "Reflex Sight", "slot": "optic", "durability": 1.0, "effect": "faster visual alignment, requires working eyes not HUD"},
		{"id": "laser_pointer", "label": "Laser Pointer", "slot": "underbarrel", "durability": 1.0, "effect": "better hip alignment, visible to enemies later"},
		{"id": "foregrip", "label": "Foregrip", "slot": "underbarrel", "durability": 1.0, "effect": "better two-handed control"},
		{"id": "extended_magazine", "label": "Extended Magazine", "slot": "magazine", "durability": 1.0, "effect": "larger magazine, slower reload"},
		{"id": "quickpull_magwell", "label": "Quickpull Magwell", "slot": "magazine", "durability": 1.0, "effect": "faster reload, no capacity gain"},
		{"id": "weapon_light", "label": "Weapon Light", "slot": "underbarrel", "durability": 1.0, "effect": "future weapon-mounted illumination"},
		{"id": "retention_sling", "label": "Retention Sling", "slot": "stock", "durability": 1.0, "effect": "reduces weapon drop chance on injury shock"},
	]

static func get_wearable_module_label(module_id: String) -> String:
	for module in get_wearable_modules():
		if String(module["id"]) == module_id:
			return String(module["label"])
	return module_id.replace("_", " ").capitalize()

static func get_weapon_attachment_label(attachment_id: String) -> String:
	for attachment in get_weapon_attachments():
		if String(attachment["id"]) == attachment_id:
			return String(attachment["label"])
	return attachment_id.replace("_", " ").capitalize()

static func get_wearable_module_slot(module_id: String) -> String:
	for module in get_wearable_modules():
		if String(module["id"]) == module_id:
			return String(module["slot"])
	return "glasses_module"

static func get_wearable_module_power(module_id: String) -> float:
	for module in get_wearable_modules():
		if String(module["id"]) == module_id:
			return float(module.get("power", 0.0))
	return 0.0

static func get_weapon_attachment_durability(attachment_id: String) -> float:
	for attachment in get_weapon_attachments():
		if String(attachment["id"]) == attachment_id:
			return float(attachment.get("durability", 1.0))
	return 1.0

static func get_background_traits(background_id: String) -> Dictionary:
	match background_id:
		"Engineer":
			return {"service_speed": 0.5, "notes": "restores power faster"}
		"Medic":
			return {"treatment_speed": 0.5, "notes": "uses trauma care faster"}
		"Miner":
			return {"thermal_heat_ceiling": 145.0, "notes": "handles thermal tools harder"}
		"Courier":
			return {"resource_bonus": 2, "notes": "usually carries more salvage"}
		"Survey Tech":
			return {"route_hint_bonus": 1, "notes": "spots one extra hidden route"}
		"Security":
			return {"recoil_bonus": 0.88, "notes": "slightly cleaner recoil"}
		"Researcher":
			return {"corruption_resistance": 0.85, "notes": "slower corruption drift"}
		"Prisoner":
			return {"pain_resistance": 0.85, "notes": "pain affects aim less"}
		_:
			return {}

static func get_surface_profiles() -> Dictionary:
	return {
		"deck": {"noise": 1.0},
		"metal": {"noise": 1.1},
		"grate": {"noise": 1.55},
		"carpet": {"noise": 0.55},
		"vent": {"noise": 0.9},
		"wet": {"noise": 1.25}
	}

# --- Additions below: tangible-mechanics catalogs. ----------------------------
# Each entry codifies a mechanic as concrete verbs/effects/triggers rather than
# numeric stat shifts. A "buff" should always become a named capability the
# player can point to: a real item that opens a real cabinet, a real plate that
# really shatters, a real flare that really provokes a specific archetype.

# Salvage ID tags pulled from predecessor corpses. The tag is a real item that
# carries its dead owner's role + last login sector and acts as a low-tier
# access credential for that role's areas only.
static func get_salvage_id_tags() -> Array[Dictionary]:
	return [
		{"id": "tag_medic", "label": "Medic ID Tag", "role": "medical", "opens": ["medical_cabinet", "triage_locker"], "blocks": ["admin_terminal", "armory"], "route_hint": "medical_deck"},
		{"id": "tag_security", "label": "Security ID Tag", "role": "security", "opens": ["armory_low", "checkpoint_door"], "blocks": ["admin_terminal", "research_specimen"], "route_hint": "admin_spine"},
		{"id": "tag_engineer", "label": "Engineer ID Tag", "role": "engineering", "opens": ["maintenance_panel", "generator_room_low"], "blocks": ["medical_cabinet", "armory"], "route_hint": "industrial_core"},
		{"id": "tag_researcher", "label": "Researcher ID Tag", "role": "research", "opens": ["specimen_locker_low", "lab_drawer"], "blocks": ["armory", "checkpoint_door"], "route_hint": "research_vault"},
		{"id": "tag_courier", "label": "Courier ID Tag", "role": "logistics", "opens": ["cargo_locker", "courier_dropbox"], "blocks": ["admin_terminal", "research_specimen"], "route_hint": "exterior_works"},
		{"id": "tag_admin", "label": "Admin ID Tag", "role": "administration", "opens": ["admin_terminal_low", "office_lift_call"], "blocks": ["specimen_locker", "armory"], "route_hint": "admin_spine"},
	]

# Damaged helmet outcomes are physical, not statistical.
static func get_damaged_helmet_states() -> Array[Dictionary]:
	return [
		{"id": "cracked_visor", "label": "Cracked Visor", "tangible_effect": "adds corruption_drift module to glasses readouts (sound, ammo, route text can briefly lie)", "removable": true},
		{"id": "destroyed_helmet", "label": "Destroyed Helmet", "tangible_effect": "absorbs exactly one fatal head shot, then breaks and is left lying in the room as a marker", "removable": true},
		{"id": "soot_streaked", "label": "Soot-Streaked Helmet", "tangible_effect": "low_light_filter cannot mount until cleaned at a workbench", "removable": false},
		{"id": "scratched_lens", "label": "Scratched Lens", "tangible_effect": "reticle_lens projects a doubled crosshair until visor is replaced", "removable": true},
	]

# Portable beacons. Real placed devices with HP and a lighthouse effect.
static func get_portable_beacons() -> Array[Dictionary]:
	return [
		{"id": "comms_beacon_short", "label": "Short-Range Comms Beacon", "place_verb": "place_beacon", "hp": 60.0, "destroyed_by": ["bleeder_acid", "carapace_charge", "trip_mine"], "lighthouse_for": ["echo", "bleeder"], "sector_power_cost": "low"},
		{"id": "comms_beacon_long", "label": "Long-Range Comms Beacon", "place_verb": "place_beacon", "hp": 90.0, "destroyed_by": ["carapace_charge", "explosive"], "lighthouse_for": ["echo", "bleeder", "relay_voice"], "sector_power_cost": "high"},
		{"id": "navigation_beacon", "label": "Navigation Beacon", "place_verb": "place_beacon", "hp": 75.0, "destroyed_by": ["bullet_5_56_or_heavier", "carapace_charge"], "lighthouse_for": [], "sector_power_cost": "low"},
	]

# Chemical flares. Color codes are real reactions, not damage modifiers.
static func get_chemical_flares() -> Array[Dictionary]:
	return [
		{"id": "flare_red", "label": "Red Chemical Flare", "burn_seconds": 45.0, "provokes": ["carapace"], "confuses": [], "oxygen_consumes_per_second": 0.3},
		{"id": "flare_blue", "label": "Blue Chemical Flare", "burn_seconds": 40.0, "provokes": [], "confuses": ["echo"], "oxygen_consumes_per_second": 0.25},
		{"id": "flare_green", "label": "Green Chemical Flare", "burn_seconds": 60.0, "provokes": [], "confuses": ["surgeon"], "oxygen_consumes_per_second": 0.2},
		{"id": "flare_yellow", "label": "Yellow Chemical Flare", "burn_seconds": 35.0, "provokes": ["bleeder"], "confuses": ["howler"], "oxygen_consumes_per_second": 0.3},
		{"id": "flare_white", "label": "White Phosphor Flare", "burn_seconds": 20.0, "provokes": ["shellroot"], "confuses": ["sleeper_pod"], "oxygen_consumes_per_second": 0.8},
	]

# Door wedges with degradation, visible cracked state, and timed enemy removal.
static func get_door_wedges() -> Array[Dictionary]:
	return [
		{"id": "wedge_rubber", "label": "Rubber Wedge", "force_work_resistance_hits": 3, "visible_cracked_after_hits": 2, "enemy_removal_seconds": 8.0, "differentiator_vs_barricade": "passable from one side, blocks from the other"},
		{"id": "wedge_steel", "label": "Steel Wedge", "force_work_resistance_hits": 5, "visible_cracked_after_hits": 4, "enemy_removal_seconds": 12.0, "differentiator_vs_barricade": "leaves the door 1cm ajar, sound leaks more"},
		{"id": "wedge_polymer", "label": "Polymer Wedge", "force_work_resistance_hits": 2, "visible_cracked_after_hits": 1, "enemy_removal_seconds": 6.0, "differentiator_vs_barricade": "cheap, craftable from tool_parts, audibly cracks on first hit"},
	]

# Field recorder. A real device with a battery slot that captures the last
# 30 seconds of comms + ambient through the audio router.
static func get_field_recorder() -> Dictionary:
	return {
		"id": "field_recorder",
		"label": "Field Recorder",
		"slot": "belt",
		"battery_slot": "power_cell_small",
		"capture_seconds": 30.0,
		"playback_distortion_source": "player_corruption",
		"verbs": ["record", "playback", "save_clip", "swap_battery"],
		"never_always_on": true
	}

# Battery charger with a noise tradeoff and brownout coupling.
static func get_battery_chargers() -> Array[Dictionary]:
	return [
		{"id": "charger_slow", "label": "Slow Bench Charger", "charge_rate": "slow", "noise_signature": "quiet", "trips_brownout": false, "compatible_cells": ["power_cell_small", "power_cell"]},
		{"id": "charger_fast", "label": "Fast Bench Charger", "charge_rate": "fast", "noise_signature": "loud", "trips_brownout": true, "compatible_cells": ["power_cell", "charged_cell"]},
		{"id": "charger_field", "label": "Field Hand Charger", "charge_rate": "slow", "noise_signature": "quiet", "trips_brownout": false, "compatible_cells": ["power_cell_small"]},
	]

# Makeshift sling differentiated from the retention_sling attachment.
static func get_makeshift_sling() -> Dictionary:
	return {
		"id": "makeshift_sling",
		"label": "Makeshift Sling",
		"craft_recipe": {"cable_spool": 1, "tool_parts": 1},
		"drop_resistance_relative_to_retention_sling": "60_percent",
		"weapon_swap_speed_relative_to_retention_sling": "slower",
		"failure_mode": "snaps on heavy impact; survivor watches the gun fall and must pick it up",
		"visible_decay_state": true
	}

# Trauma foam: between bandage and trauma kit, with a real cost and second verb.
static func get_trauma_foam() -> Dictionary:
	return {
		"id": "trauma_foam",
		"label": "Trauma Foam",
		"primary_verb": "spray_joint",
		"primary_effect": "joint mobility drops; survivor cannot sprint or jump with that limb for 90s",
		"secondary_verb": "spray_hinge",
		"secondary_effect": "wedges a door open or shut for 60s",
		"between": ["quick_bandage", "trauma_kit"]
	}

# Route chalk. Diegetic marks that corruption can rewrite and that some
# parasites can read as a scent.
static func get_route_chalk() -> Dictionary:
	return {
		"id": "route_chalk",
		"label": "Route Chalk",
		"verbs": ["mark_arrow", "mark_x", "mark_safe", "wipe_mark"],
		"corruption_rewrite_threshold": 55,
		"visible_to_archetypes": ["echo", "stalker_husk"],
		"player_made_mark_visibility_tiers": ["faint", "normal", "bold"]
	}

# Sound occlusion as a real per-material attenuation table.
static func get_sound_occlusion_table() -> Dictionary:
	return {
		"open_air": {"attenuation_db": 0.0, "leaks_through_when_jammed": false},
		"drywall": {"attenuation_db": 8.0, "leaks_through_when_jammed": false},
		"thin_metal": {"attenuation_db": 6.0, "leaks_through_when_jammed": false},
		"pressure_door_open": {"attenuation_db": 0.0, "leaks_through_when_jammed": false},
		"pressure_door_closed": {"attenuation_db": 22.0, "leaks_through_when_jammed": false},
		"pressure_door_jammed": {"attenuation_db": 10.0, "leaks_through_when_jammed": true},
		"vent_grate": {"attenuation_db": 4.0, "leaks_through_when_jammed": false},
		"airlock_closed": {"attenuation_db": 28.0, "leaks_through_when_jammed": false},
		"crawlspace_hatch_open": {"attenuation_db": 2.0, "leaks_through_when_jammed": false},
		"glass": {"attenuation_db": 5.0, "leaks_through_when_jammed": false},
	}

# Limb armor slots with physical plates that shatter and drop loot.
static func get_limb_armor_slots() -> Array[Dictionary]:
	return [
		{"id": "plate_chest", "label": "Chest Plate", "slot": "chest", "absorbs_lethality_up_to": "incap", "shatters_after_lethal_hits": 1, "drops_shard": true, "movement_noise_cost": "loud_steps"},
		{"id": "plate_back", "label": "Back Plate", "slot": "back", "absorbs_lethality_up_to": "incap", "shatters_after_lethal_hits": 1, "drops_shard": true, "movement_noise_cost": "loud_steps"},
		{"id": "plate_shoulder", "label": "Shoulder Pauldron", "slot": "shoulder", "absorbs_lethality_up_to": "deep", "shatters_after_lethal_hits": 2, "drops_shard": false, "movement_noise_cost": "slight_clink"},
		{"id": "plate_thigh", "label": "Thigh Plate", "slot": "thigh", "absorbs_lethality_up_to": "deep", "shatters_after_lethal_hits": 2, "drops_shard": false, "movement_noise_cost": "slight_clink"},
		{"id": "plate_shin", "label": "Shin Plate", "slot": "shin", "absorbs_lethality_up_to": "graze", "shatters_after_lethal_hits": 3, "drops_shard": false, "movement_noise_cost": "metallic_step"},
		{"id": "plate_visor", "label": "Visor Plate", "slot": "visor", "absorbs_lethality_up_to": "deep", "shatters_after_lethal_hits": 1, "drops_shard": true, "movement_noise_cost": "none"},
	]

# Oxygen pockets in exterior_works and vent sectors.
static func get_oxygen_zones() -> Array[Dictionary]:
	return [
		{"id": "exterior_catwalk", "oxygen_level": "low", "suit_patch_consumed_per_second": 0.05, "panic_on_zero": true, "carrion_archetype_spawns": false},
		{"id": "broken_vent_stack", "oxygen_level": "thin", "suit_patch_consumed_per_second": 0.02, "panic_on_zero": true, "carrion_archetype_spawns": true},
		{"id": "vacuum_pocket", "oxygen_level": "vacuum", "suit_patch_consumed_per_second": 0.12, "panic_on_zero": true, "carrion_archetype_spawns": true},
		{"id": "biohazard_quarantine", "oxygen_level": "stale", "suit_patch_consumed_per_second": 0.01, "panic_on_zero": false, "carrion_archetype_spawns": false},
	]

# Scent trails. The predecessor's blood beacon channel is the same one
# bleeding survivors leave, and decon stations cancel it.
static func get_scent_trail_rules() -> Dictionary:
	return {
		"trail_source_player_bleeding": true,
		"trail_decay_seconds": 240.0,
		"trackers": ["bleeder", "surgeon", "stalker_twin"],
		"cancel_verb": "use_decon_station",
		"cancel_duration_seconds": 300.0,
		"decon_station_resource": "tool_parts",
		"decon_station_amount": 1
	}

# Door memory. Forced doors stay weaker; jam_count is surfaced in route_mapper.
static func get_door_memory_rules() -> Dictionary:
	return {
		"force_open_threshold_reduction_per_force": 0.25,
		"max_reductions": 3,
		"jam_count_surface": "route_mapper_per_door_history_line",
		"never_repair_to_full_without": "install_actuator_part"
	}

# Weapon fouling. A real different state with a real cleaning verb.
static func get_weapon_fouling_states() -> Array[Dictionary]:
	return [
		{"id": "coolant_fouled", "label": "Coolant Fouled", "trigger": "walked_through_coolant", "visible_tint": "blue_film", "cleaning_verb": "field_clean", "cleaning_seconds": 8.0, "cleaning_noise_spike": true},
		{"id": "biofouled", "label": "Biofouled", "trigger": "brushed_growth", "visible_tint": "green_film", "cleaning_verb": "scrape_and_clean", "cleaning_seconds": 12.0, "cleaning_noise_spike": true},
		{"id": "carbon_fouled", "label": "Carbon Fouled", "trigger": "thermal_tool_overheat", "visible_tint": "soot", "cleaning_verb": "carbon_brush", "cleaning_seconds": 10.0, "cleaning_noise_spike": false},
	]

# Light heat: flashlight intensity tiers and a thermal threat-classifier mode.
static func get_flashlight_intensity_tiers() -> Array[Dictionary]:
	return [
		{"id": "vest_light", "label": "Vest Light", "intensity_tier": "weak", "parasite_avoidance": "none"},
		{"id": "handheld", "label": "Handheld Light", "intensity_tier": "medium", "parasite_avoidance": "soft_avoidance_for_low_cognition"},
		{"id": "helmet_light", "label": "Helmet Light", "intensity_tier": "strong", "parasite_avoidance": "noticeable_for_echo_and_sleeper"},
		{"id": "weapon_light", "label": "Weapon Light", "intensity_tier": "focused", "parasite_avoidance": "ignored_unless_aimed_at_target"},
	]

static func get_threat_classifier_modes() -> Array[Dictionary]:
	return [
		{"id": "silhouette", "label": "Silhouette Mode", "verb": "tap_classifier", "cost": "tiny", "side_effect": "outlines threats only when seen directly"},
		{"id": "thermal", "label": "Thermal Mode", "verb": "hold_classifier", "cost": "drains_power_cell", "side_effect": "sees lights through walls but eats power and emits a faint hum"}
	]

# Panic reload concrete triggers. No abstract "panic chance" — drop is driven
# by pain + shock thresholds, with role-based modifiers as named flags.
static func get_panic_reload_rules() -> Dictionary:
	return {
		"drop_on_reload_threshold": {"pain": 60.0, "shock": 45.0, "combined": 90.0},
		"drop_on_reload_with_compromised_arm": true,
		"role_flags": {
			"Security": "panic_drop_threshold_raised",
			"Researcher": "panic_drop_threshold_lowered",
			"Engineer": "no_change",
			"Medic": "no_change",
			"Prisoner": "panic_drop_threshold_raised_when_low_blood"
		},
		"telegraph": "weapon_dips_visibly_for_0_3s_before_drop"
	}

# Route fatigue. Crawl volumes drain stamina; low stamina at the exit feeds
# the ambush rules.
static func get_route_fatigue_rules() -> Dictionary:
	return {
		"stamina_drain_per_second_in_crawlspace": 6.0,
		"stamina_drain_per_second_in_vent": 4.0,
		"stamina_drain_per_second_in_catwalk_wind": 2.0,
		"ambush_bonus_lethality_when_exit_stamina_below_25_percent": "first_attack_one_tier_more_lethal"
	}

# Manual map sketching. Only physical presence updates the sketch.
static func get_map_sketching_rules() -> Dictionary:
	return {
		"updates_only_by_physical_presence": true,
		"corruption_inserts_false_dead_ends_threshold": 50,
		"corruption_max_false_dead_ends": 3,
		"recoverable_from_predecessor_kit": true
	}

# Movement / traversal additions.
static func get_stance_states() -> Array[Dictionary]:
	return [
		{"id": "stand", "label": "Standing", "silhouette_fraction": 1.0, "noise_multiplier": 1.0, "fire_rate_multiplier": 1.0},
		{"id": "mid", "label": "Mid Stance", "silhouette_fraction": 0.6, "noise_multiplier": 0.75, "fire_rate_multiplier": 0.85},
		{"id": "crouch", "label": "Crouch", "silhouette_fraction": 0.4, "noise_multiplier": 0.5, "fire_rate_multiplier": 0.95},
		{"id": "prone", "label": "Prone", "silhouette_fraction": 0.2, "noise_multiplier": 0.25, "fire_rate_multiplier": 0.9}
	]

static func get_lean_states() -> Array[Dictionary]:
	return [
		{"id": "lean_none", "label": "No Lean", "exposed_zones": ["full_body"], "ads_only": false},
		{"id": "lean_left", "label": "Lean Left", "exposed_zones": ["head"], "ads_only": true},
		{"id": "lean_right", "label": "Lean Right", "exposed_zones": ["head"], "ads_only": true}
	]

static func get_traversal_verbs() -> Array[Dictionary]:
	return [
		{"id": "vault", "label": "Vault Low Cover", "trigger": "sprint_into_low_cover", "cost": "minor_stamina"},
		{"id": "mantle", "label": "Mantle Tall Cover", "trigger": "hold_jump_at_tall_edge", "cost": "moderate_stamina"},
		{"id": "stack_up", "label": "Stack Up at Door", "trigger": "hold_E_on_door", "cost": "ready_state_1_5s_window"},
		{"id": "drag_corpse", "label": "Drag Corpse", "trigger": "hold_E_on_body", "cost": "movement_noise_up_and_one_hand_off_weapon"},
	]

static func get_reload_modes() -> Array[Dictionary]:
	return [
		{"id": "dump", "label": "Dump Reload", "input": "tap_R", "speed": "fast", "preserves_partial_mag": false},
		{"id": "tactical", "label": "Tactical Reload", "input": "hold_R", "speed": "slower", "preserves_partial_mag": true},
		{"id": "manual_check", "label": "Manual Check", "input": "tap_H", "speed": "instant", "preserves_partial_mag": true, "describes_chamber_and_mag": true}
	]

static func get_weapon_malfunctions() -> Array[Dictionary]:
	return [
		{"id": "stovepipe", "label": "Stovepipe", "trigger": "weapon_condition_below_60_and_dirty", "clear_verb": "tap_rack", "clear_seconds": 1.5},
		{"id": "failure_to_feed", "label": "Failure to Feed", "trigger": "magazine_durability_below_50_or_lip_bent", "clear_verb": "tap_rack", "clear_seconds": 1.5},
		{"id": "double_feed", "label": "Double Feed", "trigger": "rare_random_under_50_condition", "clear_verb": "drop_mag_rack_clear", "clear_seconds": 3.5},
		{"id": "hangfire", "label": "Hangfire", "trigger": "ammo_subload_aged", "clear_verb": "wait_then_rack", "clear_seconds": 2.0},
	]

static func get_zeroed_optics() -> Array[Dictionary]:
	return [
		{"id": "reflex_sight", "zero_meters": 25.0, "drop_at_50m": "noticeable", "drop_at_100m": "obvious"},
		{"id": "low_power_scope", "zero_meters": 100.0, "drop_at_50m": "rises_slightly", "drop_at_100m": "on_zero"},
	]

# Bolt-throwing — using any cheap dynamic prop as a hazard probe / sound bait.
static func get_bolt_throw_rules() -> Dictionary:
	return {
		"props_usable": ["cable_spool", "fuse", "tool_parts", "small_scrap"],
		"trips_traps": true,
		"writes_last_heard_position": true,
		"never_consumes_attention_of": ["shellroot", "carapace"]
	}

# Stress shake driving a real camera/weapon micro-tremor, not aim cones.
static func get_stress_shake_rules() -> Dictionary:
	return {
		"inputs": ["pain", "shock", "player_corruption", "low_oxygen"],
		"output_target": "weapon_pivot_and_camera",
		"tremor_form": "micro_pitch_yaw_drift",
		"never_locks_aim": true
	}

# Stealth/senses adds.
static func get_shadow_visibility_table() -> Dictionary:
	return {
		"dark_no_lights": "almost_invisible",
		"sector_emergency_red": "low_visibility",
		"sector_emergency_strobe": "occasional_pings",
		"flashlight_on_player": "fully_visible",
		"sector_full_lights": "fully_visible",
		"echo_class_reads_through_dark": true
	}

static func get_body_hiding_rules() -> Dictionary:
	return {
		"hide_targets": ["closet", "vent_entry", "crawlspace", "supply_drawer"],
		"hidden_corpse_blocks_scent_trigger": true,
		"hidden_corpse_blocks_surgeon_attractor": true,
		"requires_drag_corpse_verb": true
	}

static func get_whistle_shout_rules() -> Dictionary:
	return {
		"verb": "hold_F_shout",
		"baits_archetypes": ["crawler_husk", "stalker_husk"],
		"ignored_by_archetypes": ["carapace", "choir", "shellroot"],
		"single_use_per_room_window_seconds": 30.0,
		"loudness_value": 85.0
	}

static func get_sound_triangulation_rules() -> Dictionary:
	return {
		"requires_module": "sound_meter",
		"shows_direction_arrow": true,
		"never_shows_amplitude_only": true,
		"corruption_can_flip_direction": true
	}

# Diegetic UI / Trust additions.
static func get_comm_wheel_options() -> Array[Dictionary]:
	return [
		{"id": "mark_route", "label": "Mark this route"},
		{"id": "request_solution", "label": "What do I do here?"},
		{"id": "report_kill", "label": "I dropped one"},
		{"id": "request_silence", "label": "Be quiet for a minute"},
		{"id": "request_status", "label": "Where am I?"},
		{"id": "request_lift", "label": "Call me an elevator"},
	]

# Inventory / economy additions.
static func get_attache_case_inventory() -> Dictionary:
	return {
		"id": "attache_case",
		"label": "Attaché Case",
		"grid_size": [6, 4],
		"holds": ["attachments", "splints", "ammo", "stim", "small_tools"],
		"on_drop": "case_pops_open_and_spills"
	}

static func get_safehouse_lockbox() -> Dictionary:
	return {
		"id": "safehouse_lockbox",
		"label": "Safehouse Lockbox",
		"persists_across_deaths_if_reached_in_time": true,
		"reach_time_window_seconds_for_predecessor": 600.0,
		"slots": 4,
		"diegetic": true
	}

static func get_condition_pickup_rules() -> Dictionary:
	return {
		"found_weapon_condition_range": [0.3, 0.95],
		"found_weapon_attachment_durability_range": [0.2, 1.0],
		"suppressor_remaining_uses_range": [10, 220]
	}

static func get_attachment_conflicts() -> Array[Dictionary]:
	return [
		{"a": "foregrip", "b": "bipod", "reason": "underbarrel slot conflict"},
		{"a": "compact_suppressor", "b": "port_compensator", "reason": "muzzle slot conflict"},
		{"a": "extended_magazine", "b": "quickpull_magwell", "reason": "magazine slot conflict"},
		{"a": "reflex_sight", "b": "low_power_scope", "reason": "optic slot conflict"},
		{"a": "laser_pointer", "b": "weapon_light", "reason": "both occupy the rail bracket without an adapter"},
	]

static func get_stack_aware_reload_descriptors() -> Array[String]:
	return [
		"feels light",
		"feels heavy",
		"feels half",
		"rattles, partial",
		"full, fresh",
		"empty"
	]

# Environment / hazards.
static func get_anomaly_rooms() -> Array[Dictionary]:
	return [
		{"id": "moving_radiation_zone", "label": "Reactor Anomaly Room", "verbs": ["throw_pressure_decoy_to_ride_out", "time_movement"], "consumes": ["pressure_decoy"]},
		{"id": "gravity_pocket", "label": "Gravity Pocket", "verbs": ["vault_in", "no_aim_in_zone"], "consumes": []},
		{"id": "static_storm_room", "label": "Static Storm Room", "verbs": ["powerless_electronics_in_zone"], "consumes": []},
	]

static func get_fire_spread_rules() -> Dictionary:
	return {
		"ignites": ["coolant_pool", "oil_pool", "bio_growth"],
		"spread_seconds_per_tile": 1.2,
		"max_spread_seconds": 20.0,
		"ignite_sources": ["torch_lance", "incendiary_round", "arc_junction_overload"]
	}

static func get_electrified_water_rules() -> Dictionary:
	return {
		"sources": ["coolant_flood", "burst_pipe", "open_drain"],
		"trigger_arc_junctions": ["arc_junction"],
		"stuns_entities_in_zone": true,
		"stun_seconds": 3.5
	}

static func get_pressure_differential_rules() -> Dictionary:
	return {
		"trigger_events": ["airlock_cycle", "broken_window", "vented_panel"],
		"pulls_props_and_corpses_toward_breach": true,
		"pull_seconds": 6.0,
		"during_pull": "first_person_camera_resists_with_micro_tremor"
	}

static func get_temperature_rules() -> Dictionary:
	return {
		"low_temp_zones": ["exterior_works", "broken_vent_stack", "vacuum_pocket"],
		"high_temp_zones": ["industrial_core_steam", "reactor_anomaly_room"],
		"low_temp_effects_on_player": ["bleed_rate_slows", "pain_recovery_slows", "stamina_recovery_slows"],
		"high_temp_effects_on_player": ["bleed_rate_rises", "shock_recovery_slows"],
		"counter_low_temp_items": ["thermal_overlayer", "heat_pack"],
		"counter_high_temp_items": ["coolant_canister", "wetted_undersuit"]
	}

# Survivor identity — tangible liabilities replacing pure numeric perks.
# Each background now lists a real concrete benefit AND a real concrete cost,
# and a flag the runtime can check by name.
static func get_background_liabilities() -> Array[Dictionary]:
	return [
		{"id": "Engineer", "benefit_verb": "sector_restore_uses_one_less_tool_part", "liability_flag": "arm_fracture_recovery_slower_until_splint_at_workbench"},
		{"id": "Security", "benefit_verb": "panic_reload_drop_threshold_raised", "liability_flag": "trauma_kit_use_seconds_extended"},
		{"id": "Medic", "benefit_verb": "trauma_kit_use_seconds_shortened", "liability_flag": "loud_movement_when_carrying_two_med_items"},
		{"id": "Researcher", "benefit_verb": "module_contradictions_show_a_tell_glyph", "liability_flag": "panic_reload_drop_threshold_lowered"},
		{"id": "Miner", "benefit_verb": "thermal_tool_overheat_warning_30s_earlier", "liability_flag": "vent_route_fatigue_drain_increased"},
		{"id": "Courier", "benefit_verb": "carries_one_extra_attache_case_row", "liability_flag": "louder_steps_when_full"},
		{"id": "Survey Tech", "benefit_verb": "spots_one_extra_hidden_route_per_floor", "liability_flag": "map_sketching_corruption_false_dead_ends_higher"},
		{"id": "Prisoner", "benefit_verb": "pain_does_not_block_first_treatment_per_floor", "liability_flag": "no_access_credential_pickups_will_open_admin_doors"},
	]

# Kit case persists per-survivor identity in the lost kit.
static func get_kit_case_definition() -> Dictionary:
	return {
		"id": "kit_case",
		"label": "Personal Kit Case",
		"per_survivor": true,
		"serialized_into_lost_kit": true,
		"contents_categories": ["belt", "splints", "small_ammo", "personal_id_tag"]
	}

# Encountered NPC survivors — concrete branch outcomes only.
static func get_npc_survivor_encounters() -> Array[Dictionary]:
	return [
		{"id": "wounded_courier", "label": "Wounded Courier", "verbs": ["help_with_med_stock", "leave", "loot_after_death"], "guaranteed_outcome_help": "gives_route_chalk_mark_to_next_objective"},
		{"id": "panicked_researcher", "label": "Panicked Researcher", "verbs": ["calm_with_neural_stabilizer", "lock_in_room", "kill"], "guaranteed_outcome_calm": "shares_one_glyph_tell_for_corruption_ui"},
		{"id": "trapped_engineer", "label": "Trapped Engineer", "verbs": ["free_with_cutting_charge", "leave_in_place", "argue"], "guaranteed_outcome_free": "permanently_restores_one_adjacent_sector_light"},
	]

# Predecessor ghost route fed into route_mapper.
static func get_predecessor_ghost_rules() -> Dictionary:
	return {
		"requires_module": "route_mapper",
		"trail_seconds_recorded": 60.0,
		"render": "dotted_trail_in_overlay_only",
		"corruption_can_distort_endpoint": true
	}

# Floor-as-chapter identity locks and unique pickups.
static func get_chapter_floor_identities() -> Array[Dictionary]:
	return [
		{"id": "medical_deck", "lock_kind": "biohazard_lock", "unique_pickups": ["pharma_vial", "field_cauterizer_pen", "stim_injector"]},
		{"id": "industrial_core", "lock_kind": "crusher_steam_block", "unique_pickups": ["cutting_charge", "industrial_slug", "coolant_canister"]},
		{"id": "research_vault", "lock_kind": "anomaly_seal", "unique_pickups": ["specimen_lens", "brainwave_reader", "neural_stabilizer"]},
		{"id": "admin_spine", "lock_kind": "credentials_chip_required", "unique_pickups": ["access_credential", "executive_lift_key", "admin_audio_log"]},
		{"id": "hab_ring", "lock_kind": "personal_locker_keyed", "unique_pickups": ["personal_log", "kit_case", "safehouse_lockbox_key"]},
		{"id": "exterior_works", "lock_kind": "airlock_cycle", "unique_pickups": ["suit_patch", "boot_grips", "lighthouse_fuse"]},
	]

# Resource decay across floors. Cleared floors stop respawning resources.
static func get_resource_decay_rules() -> Dictionary:
	return {
		"floor_marked_cleared_when": "all_objective_unlocks_used_and_player_descended",
		"cleared_floor_respawns_resources": false,
		"surgeon_can_still_arrive_on_cleared_floor": true,
		"safehouse_lockbox_remains_accessible": true
	}

# Lighthouse beacons re-power comms safe radius.
static func get_lighthouse_beacons() -> Array[Dictionary]:
	return [
		{"id": "antenna_lighthouse", "label": "Antenna Lighthouse", "module": "exterior_works", "verb": "restore_power", "resource": "fuse", "amount": 2, "extends_safe_comms_radius_to": "next_two_floors", "acts_as_rest_point": true},
		{"id": "research_relay", "label": "Research Relay", "module": "research_vault", "verb": "restore_power", "resource": "power_cell", "amount": 1, "extends_safe_comms_radius_to": "current_and_adjacent_floor", "acts_as_rest_point": true},
		{"id": "admin_uplink", "label": "Admin Uplink", "module": "admin_spine", "verb": "restore_power", "resource": "access_credential", "amount": 1, "extends_safe_comms_radius_to": "current_and_adjacent_floor", "acts_as_rest_point": true},
	]

# Audio logs scattered through the station. Corruption rewrites them on
# replay through the field_recorder.
static func get_audio_logs() -> Array[Dictionary]:
	return [
		{"id": "log_med_triage_01", "module": "medical_deck", "topic": "first triage shift after the breach"},
		{"id": "log_admin_purge_02", "module": "admin_spine", "topic": "the order to seal exterior_works"},
		{"id": "log_engineer_reactor_03", "module": "industrial_core", "topic": "what the engineer heard in the crusher loop"},
		{"id": "log_researcher_subject_04", "module": "research_vault", "topic": "the subject that started speaking back"},
		{"id": "log_courier_dropbox_05", "module": "hab_ring", "topic": "a goodbye to family on the inner colonies"},
	]

# --- Lookup helpers for tangible mechanics ------------------------------------

static func get_door_wedge(wedge_id: String) -> Dictionary:
	for wedge in get_door_wedges():
		if String(wedge["id"]) == wedge_id:
			return wedge
	return {}

static func get_chemical_flare(flare_id: String) -> Dictionary:
	for flare in get_chemical_flares():
		if String(flare["id"]) == flare_id:
			return flare
	return {}

static func get_salvage_id_tag(tag_id: String) -> Dictionary:
	for tag in get_salvage_id_tags():
		if String(tag["id"]) == tag_id:
			return tag
	return {}

static func get_attachment_conflict_pairs() -> Array[Array]:
	var pairs: Array[Array] = []
	for entry in get_attachment_conflicts():
		pairs.append([String(entry["a"]), String(entry["b"])])
	return pairs

static func attachments_conflict(attachment_a: String, attachment_b: String) -> bool:
	for pair in get_attachment_conflict_pairs():
		if (pair[0] == attachment_a and pair[1] == attachment_b) or (pair[0] == attachment_b and pair[1] == attachment_a):
			return true
	return false

# --- Extended economy items (consumables, tools, deployables) ---

static func get_extended_economy_items() -> Array[Dictionary]:
	return [
		{
			"id": "hemostatic_gauze",
			"label": "Hemostatic Gauze",
			"uses": ["stop_bleed_limb", "reduce_bleed_rate"],
			"apply_time": "slow",
			"slot": "pouch",
			"notes": "packs a wound; buys time before full treatment"
		},
		{
			"id": "tourniquet",
			"label": "Tourniquet",
			"uses": ["stop_bleed_arm", "stop_bleed_leg", "sever_circulation_for_splint"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "stops bleed instantly; movement penalty on affected limb"
		},
		{
			"id": "blood_bag_iv",
			"label": "Blood Bag IV",
			"uses": ["restore_blood_volume", "remove_hypovolemic_shock"],
			"apply_time": "very_slow",
			"slot": "inventory",
			"notes": "requires sitting still; best used at safehouse or behind cover"
		},
		{
			"id": "antibiotic_syringe",
			"label": "Antibiotic Syringe",
			"uses": ["clear_surface_infection", "slow_deep_infection", "halt_bio_contamination"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "only course-correct for infection; does not heal wounds"
		},
		{
			"id": "radiation_tabs",
			"label": "Radiation Tabs",
			"uses": ["reduce_rad_exposure_tier", "delay_rad_sickness_onset"],
			"apply_time": "instant",
			"slot": "pouch",
			"notes": "one tab drops exposure one tier; multiple tabs queue"
		},
		{
			"id": "decon_wipes",
			"label": "Decon Wipes",
			"uses": ["clear_bio_contamination_surface", "remove_scent_trail", "clear_footprint_transfer"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "removes tracked residue from boots and hands"
		},
		{
			"id": "oxygen_sniffer",
			"label": "Oxygen Sniffer",
			"uses": ["detect_oxygen_thin_zone", "warn_pressure_breach_approach"],
			"apply_time": "passive",
			"slot": "pouch",
			"notes": "audible chirp accelerates as O2 drops; silent model uses glasses display"
		},
		{
			"id": "glow_stick",
			"label": "Glow Stick",
			"uses": ["place_persistent_light", "mark_route", "lure_echo_archetype"],
			"apply_time": "instant",
			"slot": "pouch",
			"duration": "long",
			"notes": "dim but lasts hours; attracts echo; does not require power"
		},
		{
			"id": "door_charge_patch",
			"label": "Door Charge Patch",
			"uses": ["breach_locked_door", "destroy_lock_housing", "clear_jammed_door"],
			"apply_time": "slow",
			"slot": "inventory",
			"notes": "adheres to door surface; detonated remotely up to eight meters"
		},
		{
			"id": "whisker_probe",
			"label": "Whisker Probe",
			"uses": ["detect_gas_under_door", "sample_air_composition", "sense_heat_gradient"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "slip under door gap; read result on glasses or by earpiece tone"
		},
		{
			"id": "bone_conduction_mic",
			"label": "Bone Conduction Mic",
			"uses": ["listen_through_wall", "hear_enemy_breathing_adjacent", "detect_stalker_husk_proximity"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "press against bulkhead; audible up to two rooms; noisy armor degrades result"
		},
		{
			"id": "signal_jammer",
			"label": "Signal Jammer",
			"uses": ["block_relay_voice_broadcast", "prevent_echo_coordination", "disable_locked_keypad"],
			"apply_time": "slow",
			"slot": "inventory",
			"duration": "medium",
			"notes": "placed device; also blocks player comms in radius while active"
		},
		{
			"id": "bioscanner_patch",
			"label": "Bioscanner Patch",
			"uses": ["detect_sleeper_pod_dormant", "locate_bio_growth_source", "tag_bleeding_enemy"],
			"apply_time": "passive",
			"slot": "glasses_module",
			"power_draw": "low",
			"notes": "wet mass signature only; walls block scan; carapace shielded"
		},
		{
			"id": "stasis_foam_canister",
			"label": "Stasis Foam Canister",
			"uses": ["seal_pressure_breach_small", "slow_door_forced_open", "immobilize_crawler_husk"],
			"apply_time": "fast",
			"slot": "inventory",
			"notes": "hardens on contact; one canister seals one small breach or jams one door"
		},
		{
			"id": "ferrofluid_lure",
			"label": "Ferrofluid Lure",
			"uses": ["attract_carapace_archetype", "mark_floor_visible_to_glasswalker", "block_magnetic_lock"],
			"apply_time": "instant",
			"slot": "pouch",
			"notes": "splatter on floor; magnetic archetypes divert toward strongest concentration"
		},
		{
			"id": "grapple_clamp",
			"label": "Grapple Clamp",
			"uses": ["traverse_shaft_vertical", "anchor_rope_for_successor", "yank_enemy_off_ledge"],
			"apply_time": "slow",
			"slot": "inventory",
			"notes": "anchors to vent grilles or pipe flanges; rope stays for successor run"
		},
		{
			"id": "cryo_patch",
			"label": "Cryo Patch",
			"uses": ["reduce_high_temp_exposure", "slow_bleed_rate_temporarily", "extend_low_temp_tolerance"],
			"apply_time": "fast",
			"slot": "pouch",
			"notes": "adhesive cooling element; single use; pairs with blood_bag_iv for field stabilization"
		},
		{
			"id": "breaching_slug",
			"label": "Breaching Slug",
			"uses": ["destroy_lock_housing_at_range", "crack_carapace_plate_at_range", "breach_pressure_door_weak_point"],
			"apply_time": "passive",
			"slot": "weapon_magazine",
			"notes": "12ga subload; single shell; extremely loud; one-shot barrier interaction"
		},
	]

# --- Extended wearable modules ---

static func get_extended_wearable_modules() -> Array[Dictionary]:
	return [
		{
			"id": "blood_pressure_cuff",
			"label": "Blood Pressure Cuff",
			"slot": "wrist",
			"power_draw": "none",
			"passive": true,
			"effect": "display_hypovolemic_warning_and_bleed_rate",
			"notes": "purely mechanical; always accurate regardless of corruption"
		},
		{
			"id": "geiger_counter_module",
			"label": "Geiger Counter",
			"slot": "glasses_module",
			"power_draw": "low",
			"passive": true,
			"effect": "display_rad_exposure_tier_and_zone_intensity",
			"notes": "audible ticks always play regardless of glasses display state"
		},
		{
			"id": "infection_sentinel",
			"label": "Infection Sentinel",
			"slot": "glasses_module",
			"power_draw": "low",
			"passive": true,
			"effect": "display_infection_stage_and_antibiotic_countdown",
			"notes": "corrupted display may show wrong stage name; tone cue remains truthful"
		},
		{
			"id": "proximity_silhouette_detector",
			"label": "Proximity Silhouette Detector",
			"slot": "glasses_module",
			"power_draw": "high",
			"passive": true,
			"effect": "draw_wire_outline_enemies_within_four_meters_through_wall",
			"notes": "high draw; glasswalker and mimic_prop suppress their own signature"
		},
		{
			"id": "oxygen_meter",
			"label": "Oxygen Meter",
			"slot": "wrist",
			"power_draw": "none",
			"passive": true,
			"effect": "display_local_o2_level_and_time_to_hypoxia",
			"notes": "wrist-mount; readable even if glasses are cracked or powered off"
		},
		{
			"id": "rad_dose_counter",
			"label": "Rad Dose Counter",
			"slot": "glasses_module",
			"power_draw": "minimal",
			"passive": true,
			"effect": "display_cumulative_rad_dose_and_safe_daily_limit_remaining",
			"notes": "cumulative; resets at safehouse rest only"
		},
		{
			"id": "motion_blur_suppressor",
			"label": "Motion Blur Suppressor",
			"slot": "glasses_module",
			"power_draw": "low",
			"passive": true,
			"effect": "cancel_stress_shake_visual_and_reduce_sway_during_sprint",
			"notes": "counteracts corruption-induced visual shake; does not affect actual aim spread"
		},
	]

# --- Extended weapon attachments ---

static func get_extended_weapon_attachments() -> Array[Dictionary]:
	return [
		{
			"id": "bipod",
			"label": "Bipod",
			"slot": "underbarrel",
			"compatible_families": ["rifle_ballistic", "industrial_slug"],
			"effect_deployed": "eliminate_sway_when_prone_or_braced",
			"effect_undeployed": "minor_handling_penalty",
			"deploy_verb": "brace_bipod"
		},
		{
			"id": "cheek_rest",
			"label": "Cheek Rest",
			"slot": "stock",
			"compatible_families": ["rifle_ballistic", "heavy_ballistic", "shotgun_ballistic"],
			"effect": "reduce_time_to_first_accurate_shot_from_low_ready",
			"notes": "paired with zeroed optic for maximum benefit"
		},
		{
			"id": "heat_shield",
			"label": "Heat Shield",
			"slot": "body",
			"compatible_families": ["rifle_ballistic", "shotgun_ballistic"],
			"effect": "prevent_arm_burn_from_sustained_fire",
			"notes": "suppresses heat transfer to hands; no effect on weapon_condition degradation"
		},
		{
			"id": "drum_magazine",
			"label": "Drum Magazine",
			"slot": "magazine",
			"compatible_families": ["light_ballistic", "rifle_ballistic"],
			"effect": "double_capacity_increase_reload_time_and_noise",
			"notes": "rattles audibly when moving; partial drum tactile feel is unreliable"
		},
		{
			"id": "wire_wrapped_stock",
			"label": "Wire-Wrapped Stock",
			"slot": "stock",
			"compatible_families": ["light_ballistic", "heavy_ballistic", "rifle_ballistic", "shotgun_ballistic"],
			"effect": "improve_grip_when_hands_wet_or_bloody",
			"notes": "crude field mod; no durability loss but adds minor weight"
		},
		{
			"id": "folding_stock",
			"label": "Folding Stock",
			"slot": "stock",
			"compatible_families": ["light_ballistic", "rifle_ballistic"],
			"effect_folded": "fit_weapon_in_backpack_slot_not_sling",
			"effect_unfolded": "normal_handling",
			"notes": "folding takes a moment; folded weapons cannot be fired"
		},
		{
			"id": "ported_barrel",
			"label": "Ported Barrel",
			"slot": "muzzle",
			"compatible_families": ["heavy_ballistic", "rifle_ballistic"],
			"effect": "reduce_muzzle_rise_increase_noise_signature",
			"notes": "incompatible with any suppressor; ports redirect gas upward and outward"
		},
		{
			"id": "muzzle_brake",
			"label": "Muzzle Brake",
			"slot": "muzzle",
			"compatible_families": ["rifle_ballistic", "industrial_slug", "shotgun_ballistic"],
			"effect": "reduce_felt_recoil_increase_muzzle_blast_radius",
			"notes": "nearby enemies react to concussive blast; suppressor incompatible"
		},
	]

# --- Extended attachment conflict pairs ---

static func get_extended_attachment_conflicts() -> Array[Dictionary]:
	return [
		{"a": "cheek_rest", "b": "wire_wrapped_stock", "reason": "stock_slot_occupied"},
		{"a": "muzzle_brake", "b": "compact_suppressor", "reason": "muzzle_slot_occupied"},
		{"a": "muzzle_brake", "b": "ported_barrel", "reason": "muzzle_slot_occupied"},
		{"a": "ported_barrel", "b": "compact_suppressor", "reason": "vents_negate_suppression"},
		{"a": "drum_magazine", "b": "extended_magazine", "reason": "magazine_slot_occupied"},
		{"a": "bipod", "b": "foregrip", "reason": "underbarrel_slot_occupied"},
		{"a": "folding_stock", "b": "cheek_rest", "reason": "stock_slot_occupied"},
		{"a": "folding_stock", "b": "wire_wrapped_stock", "reason": "stock_slot_occupied"},
		{"a": "heat_shield", "b": "laser_designator", "reason": "body_slot_occupied"},
		{"a": "bipod", "b": "laser_designator", "reason": "underbarrel_slot_occupied"},
		{"a": "drum_magazine", "b": "subsonic_magazine", "reason": "magazine_slot_occupied"},
		{"a": "muzzle_brake", "b": "flash_hider", "reason": "muzzle_slot_occupied"},
		{"a": "ported_barrel", "b": "flash_hider", "reason": "muzzle_slot_occupied"},
	]

# --- Extended floor traversal routes ---

static func get_extended_floor_routes() -> Array[Dictionary]:
	return [
		{
			"id": "emergency_blast_door_override",
			"label": "Emergency Blast Door Override",
			"floor_delta": 1,
			"access_kind": "panel",
			"unlock": "access_credential",
			"condition": "power_online_in_corridor",
			"notes": "only accessible if corridor power restored; opens both directions"
		},
		{
			"id": "specimen_tube_transit",
			"label": "Specimen Tube Transit",
			"floor_delta": 2,
			"access_kind": "crawl",
			"unlock": "none",
			"condition": "specimen_containment_unit_offline",
			"notes": "research vault to medical deck; requires containment unit deactivated first"
		},
		{
			"id": "collapsed_ceiling_crawl",
			"label": "Collapsed Ceiling Crawl",
			"floor_delta": 1,
			"access_kind": "climb",
			"unlock": "none",
			"condition": "structural_zone_state_collapsed",
			"notes": "opens when ceiling buckles; unstable_ceiling state precedes it"
		},
		{
			"id": "water_reclaim_pipe",
			"label": "Water Reclaim Pipe",
			"floor_delta": -1,
			"access_kind": "crawl",
			"unlock": "none",
			"condition": "pipe_drained",
			"notes": "goes down one floor; player must drain it with coolant_canister first"
		},
		{
			"id": "reactor_heat_shaft",
			"label": "Reactor Heat Shaft",
			"floor_delta": 3,
			"access_kind": "climb",
			"unlock": "none",
			"condition": "reactor_vented_and_heat_shield_equipped",
			"notes": "skip three floors but requires heat_shield attachment to survive passage"
		},
	]

# --- Extended environmental kills ---

static func get_extended_environmental_kills() -> Array[Dictionary]:
	return [
		{
			"id": "specimen_containment_breach",
			"label": "Specimen Containment Breach",
			"trigger": "shoot_containment_unit_while_active",
			"result": "release_bio_growth_flood_room",
			"tags": ["bio_growth", "high_temp"],
			"lures": ["carrion_eater", "shellroot"],
			"notes": "containment fluid ignites on sustained fire; growth clears with fire"
		},
		{
			"id": "oil_slick_ignition",
			"label": "Oil Slick Ignition",
			"trigger": "fire_tag_contacts_oil_slick_zone",
			"result": "floor_fire_spreads_to_adjacent_tiles",
			"tags": ["fire", "high_temp", "smoke"],
			"lures": ["shellroot"],
			"notes": "oil spreads from tipped tanks; fire follows spread boundary"
		},
		{
			"id": "structural_collapse_trigger",
			"label": "Structural Collapse",
			"trigger": "explosive_in_stressed_zone",
			"result": "zone_state_becomes_collapsed_creates_crawlspace_and_blocks_route",
			"tags": ["smoke"],
			"notes": "prerequisite buckling state; collapse is permanent for the run"
		},
		{
			"id": "bio_growth_eruption",
			"label": "Bio Growth Eruption",
			"trigger": "high_temp_tag_contacts_mature_bio_growth",
			"result": "spore_burst_infects_unmasked_targets_in_radius",
			"tags": ["bio_growth", "smoke"],
			"lures": ["shellroot", "carrion_eater"],
			"notes": "player without decon_wipes acquires surface_infection immediately"
		},
		{
			"id": "gravity_anchor_rip",
			"label": "Gravity Anchor Rip",
			"trigger": "grapple_clamp_applied_to_enemy_at_shaft_edge",
			"result": "enemy_pulled_into_shaft_instant_lethal",
			"tags": [],
			"notes": "works on any non-shellroot enemy; shellroot anchors resist pull"
		},
		{
			"id": "decon_shower_burst",
			"label": "Decon Shower Burst",
			"trigger": "activate_decon_shower_station_while_enemy_inside",
			"result": "chemical_spray_strips_bio_growth_and_inflicts_deep_wound_carapace",
			"tags": ["water", "gas"],
			"notes": "decon chemical is corrosive to carapace plate specifically"
		},
		{
			"id": "coolant_pipe_rupture",
			"label": "Coolant Pipe Rupture",
			"trigger": "shoot_marked_pipe_joint",
			"result": "coolant_flood_zone_combo_ready_for_electric",
			"tags": ["coolant", "low_temp"],
			"notes": "pipe joint marked by orange stripe; rupture persists until player patches it"
		},
	]

# --- Workbench crafting recipes ---

static func get_workbench_crafting_recipes() -> Array[Dictionary]:
	return [
		{
			"id": "noise_lure_from_speaker",
			"label": "Wired Noise Lure",
			"inputs": ["earpiece_patch", "cable_spool", "fuse"],
			"output": "noise_lure",
			"time_seconds": 12,
			"noise": "quiet",
			"requires_workbench": true
		},
		{
			"id": "makeshift_suppressor",
			"label": "Makeshift Suppressor",
			"inputs": ["suppressor_wrap", "tool_parts", "coolant_canister"],
			"output": "compact_suppressor",
			"time_seconds": 20,
			"noise": "quiet",
			"requires_workbench": true
		},
		{
			"id": "splint_from_parts",
			"label": "Field Splint",
			"inputs": ["splint_roll", "tool_parts"],
			"output": "splint_reinforced",
			"time_seconds": 8,
			"noise": "silent",
			"requires_workbench": false
		},
		{
			"id": "trip_mine_from_charge",
			"label": "Trip Mine",
			"inputs": ["door_charge_patch", "cable_spool", "magnetic_puller"],
			"output": "trip_mine",
			"time_seconds": 18,
			"noise": "silent",
			"requires_workbench": true
		},
		{
			"id": "chemical_flare_from_canister",
			"label": "Chemical Flare",
			"inputs": ["stasis_foam_canister", "static_charge"],
			"output": "chemical_flare",
			"time_seconds": 6,
			"noise": "silent",
			"requires_workbench": false
		},
		{
			"id": "signal_jammer_from_parts",
			"label": "Field Signal Jammer",
			"inputs": ["tool_parts", "earpiece_patch", "power_cell"],
			"output": "signal_jammer",
			"time_seconds": 24,
			"noise": "quiet",
			"requires_workbench": true
		},
		{
			"id": "hemostatic_gauze_from_medstock",
			"label": "Hemostatic Gauze",
			"inputs": ["med_stock"],
			"output": "hemostatic_gauze",
			"time_seconds": 4,
			"noise": "silent",
			"requires_workbench": false
		},
		{
			"id": "glow_stick_from_flare_chemical",
			"label": "Glow Stick",
			"inputs": ["chemical_flare", "coolant_canister"],
			"output": "glow_stick",
			"time_seconds": 5,
			"noise": "silent",
			"requires_workbench": false
		},
		{
			"id": "door_wedge_reinforced",
			"label": "Reinforced Door Wedge",
			"inputs": ["door_wedge", "tool_parts"],
			"output": "door_wedge_reinforced",
			"time_seconds": 10,
			"noise": "quiet",
			"requires_workbench": true
		},
		{
			"id": "ferrofluid_lure_from_charge",
			"label": "Ferrofluid Lure",
			"inputs": ["static_charge", "coolant_canister"],
			"output": "ferrofluid_lure",
			"time_seconds": 8,
			"noise": "silent",
			"requires_workbench": false
		},
	]

# --- Prop interaction catalog ---

static func get_prop_interaction_catalog() -> Array[Dictionary]:
	return [
		{
			"id": "pressure_valve",
			"label": "Pressure Valve",
			"verbs": ["turn_open", "turn_closed", "force_open"],
			"effects": {
				"turn_open": "release_steam_tag_into_room",
				"turn_closed": "cut_steam_tag_from_room",
				"force_open": "rupture_pipe_release_steam_burst_and_damage_valve"
			}
		},
		{
			"id": "emergency_bulkhead_lever",
			"label": "Emergency Bulkhead Lever",
			"verbs": ["pull", "lock", "sabotage"],
			"effects": {
				"pull": "seal_bulkhead_door_state_sealed",
				"lock": "prevent_lever_use_until_unlocked",
				"sabotage": "freeze_lever_in_current_state_permanently"
			}
		},
		{
			"id": "generator_fuel_tank",
			"label": "Generator Fuel Tank",
			"verbs": ["inspect", "drain", "ignite"],
			"effects": {
				"inspect": "reveal_fuel_level_low_medium_full",
				"drain": "render_generator_non_functional_spill_oil_slick",
				"ignite": "trigger_oil_slick_ignition_chain"
			}
		},
		{
			"id": "specimen_containment_unit",
			"label": "Specimen Containment Unit",
			"verbs": ["inspect", "deactivate", "shoot"],
			"effects": {
				"inspect": "reveal_contents_and_containment_integrity",
				"deactivate": "open_specimen_tube_transit_route",
				"shoot": "trigger_specimen_containment_breach_environmental_kill"
			}
		},
		{
			"id": "data_terminal",
			"label": "Data Terminal",
			"verbs": ["access", "insert_credential", "hard_reset"],
			"effects": {
				"access": "display_room_map_fragment_and_last_logged_event",
				"insert_credential": "unlock_access_credential_door_or_cache",
				"hard_reset": "wipe_lock_credentials_and_drop_door_to_jammed"
			}
		},
		{
			"id": "medical_cot",
			"label": "Medical Cot",
			"verbs": ["rest", "treat_wound", "search"],
			"effects": {
				"rest": "slow_bleed_rate_and_reduce_infection_stage_timer",
				"treat_wound": "apply_med_stock_with_doubled_effectiveness",
				"search": "chance_find_med_stock_or_crash_kit"
			}
		},
		{
			"id": "armory_locker",
			"label": "Armory Locker",
			"verbs": ["open", "force_open", "breach"],
			"effects": {
				"open": "access_cached_weapon_or_ammo_if_unlocked",
				"force_open": "noise_loud_and_door_forced_tag_applied_to_room",
				"breach": "use_door_charge_patch_silent_but_destroys_contents_partially"
			}
		},
		{
			"id": "corpse_disposal_chute",
			"label": "Corpse Disposal Chute",
			"verbs": ["open", "deposit_body", "crawl_in"],
			"effects": {
				"open": "reveal_chute_shaft_to_floor_below",
				"deposit_body": "remove_body_from_room_deny_carrion_eater_feed",
				"crawl_in": "traverse_to_floor_below_one_way_no_return"
			}
		},
		{
			"id": "vault_keypad",
			"label": "Vault Keypad",
			"verbs": ["enter_code", "bypass_with_credential", "destroy"],
			"effects": {
				"enter_code": "unlock_if_code_correct_otherwise_alert_signal",
				"bypass_with_credential": "unlock_silently_and_consume_access_credential",
				"destroy": "trigger_door_forced_reputation_tag_and_seal_door_permanently"
			}
		},
		{
			"id": "reinforced_floor_panel",
			"label": "Reinforced Floor Panel",
			"verbs": ["pry_open", "cut_with_cutting_charge", "knock_to_listen"],
			"effects": {
				"pry_open": "reveal_sub_floor_crawl_space_if_structural_zone_stable",
				"cut_with_cutting_charge": "create_opening_and_drop_structural_zone_to_stressed",
				"knock_to_listen": "hear_enemy_movement_in_room_below"
			}
		},
		{
			"id": "portable_generator_cart",
			"label": "Portable Generator Cart",
			"verbs": ["start", "refuel", "push_to_room"],
			"effects": {
				"start": "restore_power_to_adjacent_sockets_and_doors",
				"refuel": "requires_power_cell_extends_run_time",
				"push_to_room": "relocate_power_supply_to_target_room"
			}
		},
		{
			"id": "decon_shower_station",
			"label": "Decon Shower Station",
			"verbs": ["activate", "hold_enemy_inside", "sabotage"],
			"effects": {
				"activate": "clear_bio_contamination_from_player_and_emit_water_gas_tags",
				"hold_enemy_inside": "trigger_decon_shower_burst_environmental_kill",
				"sabotage": "overload_nozzles_fill_room_with_gas_tag"
			}
		},
		{
			"id": "comms_relay_node",
			"label": "Comms Relay Node",
			"verbs": ["repair", "broadcast_noise_lure", "destroy"],
			"effects": {
				"repair": "restore_comms_signal_to_floor_and_increase_trust_delta",
				"broadcast_noise_lure": "transmit_noise_lure_sound_through_speaker_network",
				"destroy": "silence_relay_voice_archetype_on_floor_until_repaired"
			}
		},
	]

# --- Environmental propagation rules ---

static func get_smoke_propagation_rules() -> Dictionary:
	return {
		"movement": "follows_pressure_differential_toward_pressure_breach",
		"stacking": "multiple_sources_increase_haze_density_tier",
		"tiers": ["clear", "thin_haze", "heavy_haze", "blinding"],
		"haze_effects": {
			"thin_haze": "reduce_sight_range",
			"heavy_haze": "reduce_sight_range_and_cough_noise",
			"blinding": "near_zero_sight_and_fire_spreads_slowly"
		},
		"archetype_immunity": ["echo"],
		"clears_via": ["pressure_breach", "ventilation_active", "fire_starves"]
	}

static func get_oil_slick_rules() -> Dictionary:
	return {
		"origin": "tipped_generator_fuel_tank_or_damaged_machinery",
		"spread": "flows_downhill_or_along_floor_cracks_up_to_four_meters",
		"ignition_sources": ["fire_tag", "static_charge", "sparking_electric_tag"],
		"slip_chance": "any_character_crossing_at_run_speed_may_stumble",
		"fire_multiplier": "fire_on_oil_spreads_faster_and_intensifies",
		"extinguish_via": ["coolant_tag", "stasis_foam_canister"],
		"tracks_boots": "characters_crossing_slick_leave_oil_footprints"
	}

static func get_radiation_exposure_rules() -> Dictionary:
	return {
		"tiers": ["trace", "low", "moderate", "high", "critical"],
		"tier_effects": {
			"trace": "none",
			"low": "geiger_chirp_and_rad_dose_counter_update",
			"moderate": "vision_grain_and_nausea_slow",
			"high": "bleed_rate_increase_and_manual_aim_shake",
			"critical": "organ_failure_rapid_lethal_if_untreated"
		},
		"mitigation": {
			"radiation_tabs": "drop_one_tier_per_tab",
			"leaving_zone": "exposure_tier_holds_for_ninety_seconds_then_decays",
			"rad_dose_counter": "warns_before_high_tier"
		},
		"zone_sources": ["reactor_core_breach", "irradiated_specimen_fluid", "damaged_rad_shielding"]
	}

static func get_footprint_tracking_rules() -> Dictionary:
	return {
		"substances": ["blood", "coolant", "oil", "bio_growth_spore"],
		"transfer": "player_crossing_tagged_tile_coats_boots_for_up_to_ten_steps",
		"visibility": "footprints_visible_as_residue_marks_on_clean_floor",
		"trackers": ["bleeder", "stalker_husk", "surgeon"],
		"counter": "decon_wipes_clear_boot_coating_and_erase_trail",
		"persistence": "footprints_remain_for_the_run_unless_cleaned"
	}

static func get_campfire_rules() -> Dictionary:
	return {
		"craft_inputs": ["tool_parts", "cable_spool"],
		"craft_time": "slow",
		"requires_workbench": false,
		"warmth_radius": "three_meters",
		"effects": {
			"player_in_warmth": "slow_bleed_rate_rise_from_high_temp_and_dry_wet_suit",
			"light_emitted": "medium_glow_attracts_echo_and_carrion_eater",
			"fire_tag": "fire_tag_active_for_reaction_chains"
		},
		"repels": ["echo"],
		"attracts": ["stalker_husk", "carrion_eater"],
		"extinguish_via": ["coolant_tag", "stasis_foam_canister", "water_tag"]
	}

static func get_noise_trap_creation_rules() -> Dictionary:
	return {
		"components": ["earpiece_patch", "cable_spool", "fuse"],
		"wire_to": "powered_speaker_or_comms_relay_node",
		"trigger": "tripwire_or_remote_via_earpiece_patch",
		"sound_output": "loud_sharp_noise_burst_at_speaker_location",
		"lures": ["stalker_husk", "crawler_husk", "echo"],
		"alarm_raises": "noise_pressure_in_threat_director",
		"limitations": "speaker_must_have_power; cable_spool_consumed_on_placement"
	}

static func get_room_barricade_state_rules() -> Dictionary:
	return {
		"states": ["open", "lightly_barricaded", "heavily_barricaded", "sealed"],
		"state_effects": {
			"open": "normal_enemy_and_player_movement",
			"lightly_barricaded": "slow_enemy_forced_entry_noise_door_forced_tag",
			"heavily_barricaded": "require_cutting_charge_or_prolonged_forced_entry",
			"sealed": "impassable_without_breach_door_charge_patch_or_structural_collapse"
		},
		"persistence": "state_survives_across_survivor_runs",
		"build_materials": {
			"lightly_barricaded": ["door_wedge"],
			"heavily_barricaded": ["door_wedge", "cable_spool", "tool_parts"],
			"sealed": ["cutting_charge", "tool_parts", "cable_spool"]
		},
		"decay": "enemies_with_forced_entry_trait_downgrade_one_tier_per_assault"
	}

static func get_speaker_network_rules() -> Dictionary:
	return {
		"requirement": "comms_relay_node_repaired_on_floor",
		"archetype_uses": {
			"relay_voice": "broadcasts_misdirection_audio_through_repaired_nodes",
		},
		"player_uses": {
			"broadcast_noise_lure": "transmit_noise_lure_to_any_active_speaker_on_floor",
			"hear_adjacent_room": "passive_audio_bleed_from_connected_rooms"
		},
		"disable_via": ["signal_jammer", "destroy_comms_relay_node", "cut_cable_spool"],
		"relay_voice_suppressed_when": "all_nodes_on_floor_disabled_or_jammed"
	}

static func get_bioluminescence_rules() -> Dictionary:
	return {
		"source": "mature_bio_growth_in_rooms_with_no_active_lights",
		"light_level": "faint_blue_green_enough_to_navigate_without_flashlight",
		"corruption_effect": "at_corruption_above_fifty_bioluminescence_pulses_and_appears_to_move",
		"archetype_interaction": {
			"echo": "attracted_not_repelled_uses_glow_as_patrol_anchor",
			"shellroot": "anchors_growth_nodes_near_glow_patches"
		},
		"player_action": "bio_growth_can_be_harvested_with_decon_wipes_as_temp_light_source",
		"fire_interaction": "fire_tag_clears_growth_and_extinguishes_bioluminescence_permanently_in_tile"
	}

# --- Infection states ---

static func get_infection_states() -> Array[Dictionary]:
	return [
		{
			"id": "surface_infection",
			"label": "Surface Infection",
			"onset_time": 45,
			"symptoms": ["minor_itch_sound_cue"],
			"progresses_to": "deep_infection",
			"treatment": ["antibiotic_syringe", "decon_wipes"]
		},
		{
			"id": "deep_infection",
			"label": "Deep Infection",
			"onset_time": 90,
			"symptoms": ["bleed_rate_increase", "movement_slow", "stamina_drain"],
			"progresses_to": "septic",
			"treatment": ["antibiotic_syringe"]
		},
		{
			"id": "septic",
			"label": "Septic",
			"onset_time": 120,
			"symptoms": ["vision_grain", "corruption_gain_per_second", "severe_stamina_drain"],
			"progresses_to": "lethal_if_untreated",
			"treatment": ["antibiotic_syringe_double_dose"]
		},
		{
			"id": "bio_contamination",
			"label": "Bio Contamination",
			"onset_time": 0,
			"symptoms": ["immediate_surface_infection", "spore_cloud_on_movement", "infects_nearby_player"],
			"progresses_to": "deep_infection",
			"treatment": ["antibiotic_syringe", "decon_shower_station"]
		},
	]

# --- Structural zone states ---

static func get_structural_zone_states() -> Array[Dictionary]:
	return [
		{
			"id": "stable",
			"label": "Stable",
			"traversal": "full",
			"collapse_risk": "none"
		},
		{
			"id": "stressed",
			"label": "Stressed",
			"traversal": "full",
			"collapse_risk": "explosive_or_heavy_impact",
			"visual_cue": "cracked_panels_dust_on_footstep"
		},
		{
			"id": "buckling",
			"label": "Buckling",
			"traversal": "full_with_noise",
			"collapse_risk": "any_gunshot_or_forced_entry",
			"visual_cue": "sagging_ceiling_active_debris_fall",
			"noise": "structural_groan_periodically"
		},
		{
			"id": "collapsed",
			"label": "Collapsed",
			"traversal": "crawl_only",
			"collapse_risk": "none",
			"visual_cue": "rubble_field_low_ceiling",
			"opens_route": "collapsed_ceiling_crawl",
			"blocks_route": "original_upright_passage"
		},
		{
			"id": "unstable_ceiling",
			"label": "Unstable Ceiling",
			"traversal": "full",
			"collapse_risk": "sustained_noise_above_threshold",
			"visual_cue": "ceiling_tiles_loose_dust_streams",
			"notes": "precursor to buckling; loud combat can skip directly to collapsed"
		},
	]

# --- Weapon inspection verbs ---

static func get_weapon_inspection_verbs() -> Array[Dictionary]:
	return [
		{
			"id": "check_barrel",
			"label": "Check Barrel",
			"time": "fast",
			"result": "reveal_fouling_level_and_jam_risk",
			"noise": "silent"
		},
		{
			"id": "field_strip",
			"label": "Field Strip",
			"time": "slow",
			"result": "clear_any_active_malfunction_and_reset_weapon_condition_partial",
			"noise": "quiet",
			"requires": "tool_parts"
		},
		{
			"id": "tap_feed",
			"label": "Tap and Feed",
			"time": "fast",
			"result": "clear_failure_to_feed_malfunction",
			"noise": "quiet"
		},
		{
			"id": "count_remaining",
			"label": "Count Remaining",
			"time": "fast",
			"result": "tactile_feel_of_magazine_weight_rough_round_count",
			"noise": "silent",
			"notes": "drum_magazine gives unreliable feel; corruption may distort display"
		},
		{
			"id": "clear_chamber",
			"label": "Clear Chamber",
			"time": "fast",
			"result": "eject_chambered_round_to_floor_safe_weapon_state",
			"noise": "quiet"
		},
	]

# --- Door charge rules ---

static func get_door_charge_rules() -> Dictionary:
	return {
		"item": "door_charge_patch",
		"apply_verb": "plant",
		"apply_time": "slow",
		"detonate_range_meters": 8,
		"detonate_verb": "detonate_remote",
		"barrier_results": {
			"lock_housing": "destroy",
			"pressure_door": "stop_pit",
			"thin_metal": "pass"
		},
		"noise": "hazard_blast",
		"structural_effect": "drop_zone_state_one_tier_if_stressed_or_buckling",
		"corpse_effect": "scatter_any_body_in_one_meter_radius"
	}

# --- Body language cues ---

static func get_body_language_cues() -> Array[Dictionary]:
	return [
		{
			"id": "labored_breathing",
			"label": "Labored Breathing",
			"condition": "stamina_below_25_percent",
			"cue": "audible_ragged_inhale_exhale",
			"detectable_by": ["bleeder", "stalker_husk", "echo"],
			"player_aware": true
		},
		{
			"id": "blood_drip_sound",
			"label": "Blood Drip",
			"condition": "bleed_rate_above_3_per_second",
			"cue": "intermittent_wet_impact_on_floor",
			"detectable_by": ["bleeder", "surgeon", "carrion_eater"],
			"leaves_footprint_substance": "blood",
			"player_aware": true
		},
		{
			"id": "armor_clink",
			"label": "Armor Clink",
			"condition": "plate_armor_equipped_and_moving_at_run_speed",
			"cue": "rhythmic_metal_tap",
			"detectable_by": ["echo", "stalker_husk", "choir"],
			"suppress_via": "wire_wrapped_stock_has_no_effect_only_suit_patch_dampens",
			"player_aware": false
		},
		{
			"id": "suppressed_cough",
			"label": "Suppressed Cough",
			"condition": "in_heavy_haze_smoke_without_mask",
			"cue": "stifled_cough_every_few_seconds",
			"detectable_by": ["stalker_husk", "crawler_husk", "howler"],
			"player_aware": true
		},
		{
			"id": "corruption_hum",
			"label": "Corruption Hum",
			"condition": "corruption_above_65",
			"cue": "faint_electronic_resonance_from_glasses_and_earpiece",
			"detectable_by": ["relay_voice", "echo", "choir"],
			"notes": "signal noise makes player detectable to signal-aware archetypes regardless of movement noise"
		},
	]

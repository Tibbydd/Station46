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

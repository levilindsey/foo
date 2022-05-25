tool
class_name LevelConfig
extends SurfacerLevelConfig


const ARE_LEVELS_SCENE_BASED := true

const LEVELS_PATH_PREFIX := "res://src/levels/"

var level_manifest := {
#    "0": {
#        name = "Level 1",
#        version = "0.0.1",
#        is_test_level = false,
#        sort_priority = 10,
#        unlock_conditions = "unlocked",
#        scene_path = LEVELS_PATH_PREFIX + "level0.tscn",
#        platform_graph_character_category_names = [
#            "squirrel",
#        ],
#        cell_size = Vector2(32.0, 32.0),
#        start_energy = 2000,
#        bot_capacity = 4,
#    },
}


func _init().(
        ARE_LEVELS_SCENE_BASED,
        level_manifest) -> void:
    pass

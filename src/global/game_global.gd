tool
class_name GameInterface
extends SurfacerFrameworkGlobal


const _SCHEMA_PATH := "res://src/config/game_schema.gd"


func _init().(_SCHEMA_PATH) -> void:
    pass


func _get_members_to_destroy() -> Array:
    return []


func _amend_manifest() -> void:
    ._amend_manifest()
    _override_manifest(_get_manifest_overrides())
    
    # Custom hacky overrides.
    var excluded_keys := {
        KEY_Q: true,
        KEY_W: true,
        KEY_E: true,
        KEY_A: true,
        KEY_S: true,
        KEY_D: true,
    }
    for entry in Sc.manifest.input_map:
        for event in entry.events:
            if excluded_keys.has(event.physical_scancode):
                entry.events.erase(event)
                break
    var excluded_actions := {
        "jump": true,
        "move_up": true,
        "move_down": true,
        "move_left": true,
        "move_right": true,
        "dash": true,
        "grab": true,
        "face_left": true,
        "face_right": true,
    }
    for entry in Sc.manifest.input_map:
        if excluded_actions.has(entry.name):
            for event in entry.events:
                entry.events.erase(event)


func _instantiate_sub_modules() -> void:
    ._instantiate_sub_modules()


func _configure_sub_modules() -> void:
    ._configure_sub_modules()


func _load_state() -> void:
    ._load_state()


func _disable_music() -> void:
    Sc.audio.is_music_enabled = false


# This method is useful for defining parameters that are likely to change
# between builds or between development and production environments.
func _get_manifest_overrides() -> Array:
    return []

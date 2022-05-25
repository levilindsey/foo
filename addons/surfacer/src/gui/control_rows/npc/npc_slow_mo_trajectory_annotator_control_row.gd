class_name NpcSlowMoTrajectoryAnnotatorControlRow
extends CheckboxControlRow


const LABEL := "NPC slow-mo traj"
const DESCRIPTION := ("")


func _init(__ = null).(
        LABEL,
        DESCRIPTION \
        ) -> void:
    pass


func on_pressed(pressed: bool) -> void:
    Sc.annotators.params.is_npc_slow_mo_trajectory_shown = pressed
    Sc.save_state.set_setting(
            Su.NPC_SLOW_MO_TRAJECTORY_SHOWN_SETTINGS_KEY,
            pressed)


func get_is_pressed() -> bool:
    return Sc.annotators.params.is_npc_slow_mo_trajectory_shown


func get_is_enabled() -> bool:
    return true

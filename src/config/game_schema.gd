tool
class_name GameSchema
extends FrameworkSchema


const _METADATA_SCRIPT := GameMetadata

var _metadata := {
    pauses_on_focus_out = true,
    also_prints_to_stdout = true,
    logs_character_events = true,
    logs_analytics_events = true,
    logs_bootstrap_events = true,
    logs_device_settings = true,
    logs_in_editor_events = true,
    is_profiler_enabled = true,
    are_all_levels_unlocked = true,
    are_test_levels_included = true,
    is_save_state_cleared_for_debugging = false,
    opens_directly_to_level_id = "",
    is_splash_skipped = false,
    uses_threads = false,
    thread_count = 1,
    rng_seed = 176,
    is_mobile_supported = true,
    uses_level_scores = true,
    must_restart_level_to_change_settings = true,
    overrides_project_settings = true,
    overrides_input_map = true,
    are_button_controls_enabled_by_default = false,
    base_path = "",
    
    app_name = "My Game",
    app_id = "com.my_company.my_game",
    app_version = "0.0.1",
    score_version = "0.0.1",
    data_agreement_version = "0.0.1",
    
    # Must start with "UA-".
    google_analytics_id = "",
    privacy_policy_url = "",
    terms_and_conditions_url = "",
    android_app_store_url = "",
    ios_app_store_url = "",
    support_url = "",
    log_gestures_url = "",
    error_logs_url = "",
    app_id_query_param = "my-game",
    
    developer_name = "My Company",
    developer_url = "https://my_company.com",
    github_url = "",
    
    godot_splash_screen_duration = 0.8,
    developer_splash_screen_duration = 1.0,
}

var _level_manifest := {
    level_config_class = LevelConfig,
    level_session_class = LevelSession,
    default_camera_bounds_level_margin = \
        ScaffolderLevelConfig.DEFAULT_CAMERA_BOUNDS_LEVEL_MARGIN,
    default_character_bounds_level_margin = \
        ScaffolderLevelConfig.DEFAULT_CHARACTER_BOUNDS_LEVEL_MARGIN,
}

var _properties := {
}

var _additive_overrides := {
    ScaffolderSchema: {
        metadata = _metadata,
        level_manifest = _level_manifest,
    },
    SurfacerSchema: {
    },
    SurfaceTilerSchema: {
    },
}

var _subtractive_overrides := {
    ScaffolderSchema: {
        character_manifest = {
            character_scenes = [
                # preload("res://addons/squirrel_away/src/characters/squirrel/squirrel.tscn"),
            ],
            character_categories = [
                # ScaffolderSchema._SQUIRREL_CATEGORY,
            ],
        },
        gui_manifest = {
            welcome_panel_manifest = {
                items = [
#                    SurfacerSchema.WELCOME_PANEL_ITEM_AUTO_NAV,
#                    ScaffolderSchema.WELCOME_PANEL_ITEM_MOVE,
#                    ScaffolderSchema.WELCOME_PANEL_ITEM_JUMP,
                ],
            },
            settings_item_manifest = {
                groups = {
                    main = {
                        item_classes = [
#                            MusicControlRow,
#                            SoundEffectsControlRow,
#                            HapticFeedbackControlRow,
                        ],
                    },
                    annotations = {
                        item_classes = [
#                            RulerAnnotatorControlRow,
#                            RecentMovementAnnotatorControlRow,
#                            CharacterAnnotatorControlRow,
#                            LevelAnnotatorControlRow,
                        ],
                    },
                    hud = {
                        item_classes = [
#                            DebugPanelControlRow,
                        ],
                    },
                    miscellaneous = {
                        item_classes = [
#                            ButtonControlsControlRow,
                            WelcomePanelControlRow,
#                            CameraZoomControlRow,
#                            TimeScaleControlRow,
#                            MetronomeControlRow,
                        ],
                    },
                },
            }
        },
    },
    SurfaceTilerSchema: {
        # tilesets = [
        #     SurfacerSchema.DEFAULT_TILESET_CONFIG,
        # ],
    },
}


func _init().(
        _METADATA_SCRIPT,
        _properties,
        _additive_overrides,
        _subtractive_overrides) -> void:
    pass

MACRO move
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
	db \7 ; category
	assert \6 <= 40, "PP must be 40 or less"
ENDM

Moves:
; Characteristics of each move.
	table_width MOVE_LENGTH, Moves
	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35, MOVE_CATEGORY_PHYSICAL
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, NORMAL,       100, 25, MOVE_CATEGORY_PHYSICAL
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 10, MOVE_CATEGORY_PHYSICAL
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        85, 15, MOVE_CATEGORY_PHYSICAL
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        80, NORMAL,        85, 20, MOVE_CATEGORY_PHYSICAL
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,       100, 20, MOVE_CATEGORY_PHYSICAL
	move FIRE_PUNCH,   BURN_SIDE_EFFECT1,           75, FIRE,         100, 15, MOVE_CATEGORY_PHYSICAL
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          75, ICE,          100, 15, MOVE_CATEGORY_PHYSICAL
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC,     100, 15, MOVE_CATEGORY_PHYSICAL
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35, MOVE_CATEGORY_PHYSICAL
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, NORMAL,       100, 30, MOVE_CATEGORY_PHYSICAL
	move GUILLOTINE,   OHKO_EFFECT,                  1, NORMAL,        30,  5, MOVE_CATEGORY_PHYSICAL
	move RAZOR_WIND,   CHARGE_EFFECT,               80, NORMAL,        75, 10, MOVE_CATEGORY_PHYSICAL
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move CUT,          NO_ADDITIONAL_EFFECT,        50, NORMAL,        95, 30, MOVE_CATEGORY_PHYSICAL
	move GUST,         NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 35, MOVE_CATEGORY_SPECIAL
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35, MOVE_CATEGORY_PHYSICAL
	move WHIRLWIND,    SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,        85, 20, MOVE_CATEGORY_STATUS
	move FLY,          FLY_EFFECT,                  70, FLYING,        95, 15, MOVE_CATEGORY_PHYSICAL
	move BIND,         TRAPPING_EFFECT,             15, NORMAL,        75, 20, MOVE_CATEGORY_PHYSICAL
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, NORMAL,        75, 20, MOVE_CATEGORY_PHYSICAL
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        35, GRASS,        100, 10, MOVE_CATEGORY_PHYSICAL
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,       100, 20, MOVE_CATEGORY_PHYSICAL
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING,     100, 30, MOVE_CATEGORY_PHYSICAL
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       120, NORMAL,        75,  5, MOVE_CATEGORY_PHYSICAL
	move JUMP_KICK,    JUMP_KICK_EFFECT,            70, FIGHTING,      95, 25, MOVE_CATEGORY_PHYSICAL
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         60, FIGHTING,      85, 15, MOVE_CATEGORY_PHYSICAL
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 15, MOVE_CATEGORY_STATUS
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        65, NORMAL,       100, 25, MOVE_CATEGORY_PHYSICAL
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20, MOVE_CATEGORY_PHYSICAL
	move HORN_DRILL,   OHKO_EFFECT,                  1, NORMAL,        30,  5, MOVE_CATEGORY_PHYSICAL
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,        95, 35, MOVE_CATEGORY_PHYSICAL
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,        85, 20, MOVE_CATEGORY_PHYSICAL
	move TAKE_DOWN,    RECOIL_EFFECT,               90, NORMAL,        85, 20, MOVE_CATEGORY_PHYSICAL
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,   90, NORMAL,       100, 20, MOVE_CATEGORY_PHYSICAL
	move DOUBLE_EDGE,  RECOIL_EFFECT,              100, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move POISON_STING, POISON_SIDE_EFFECT1,         15, POISON,       100, 35, MOVE_CATEGORY_PHYSICAL
	move TWINEEDLE,    TWINEEDLE_EFFECT,            25, BUG,          100, 20, MOVE_CATEGORY_PHYSICAL
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  14, BUG,           85, 20, MOVE_CATEGORY_PHYSICAL
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move BITE,         FLINCH_SIDE_EFFECT1,         60, DARK,         100, 25, MOVE_CATEGORY_PHYSICAL
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, NORMAL,       100, 40, MOVE_CATEGORY_STATUS
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,       100, 20, MOVE_CATEGORY_STATUS
	move SING,         SLEEP_EFFECT,                 0, NORMAL,        55, 15, MOVE_CATEGORY_STATUS
	move SUPERSONIC,   CONFUSION_EFFECT,             0, NORMAL,        55, 20, MOVE_CATEGORY_STATUS
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, NORMAL,        90, 20, MOVE_CATEGORY_SPECIAL
	move DISABLE,      DISABLE_EFFECT,               0, NORMAL,        55, 20, MOVE_CATEGORY_STATUS
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    40, POISON,       100, 30, MOVE_CATEGORY_SPECIAL
	move EMBER,        BURN_SIDE_EFFECT1,           40, FIRE,         100, 25, MOVE_CATEGORY_SPECIAL
	move FLAMETHROWER, BURN_SIDE_EFFECT1,           95, FIRE,         100, 15, MOVE_CATEGORY_SPECIAL
	move MIST,         MIST_EFFECT,                  0, ICE,          100, 30, MOVE_CATEGORY_STATUS
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,        100, 25, MOVE_CATEGORY_SPECIAL
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       120, WATER,         80,  5, MOVE_CATEGORY_SPECIAL
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,        100, 15, MOVE_CATEGORY_SPECIAL
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          95, ICE,          100, 10, MOVE_CATEGORY_SPECIAL
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         120, ICE,           90,  5, MOVE_CATEGORY_SPECIAL
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC_TYPE, 100, 20, MOVE_CATEGORY_SPECIAL
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,        100, 20, MOVE_CATEGORY_SPECIAL
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,          100, 20, MOVE_CATEGORY_SPECIAL
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, NORMAL,        90,  5, MOVE_CATEGORY_SPECIAL
	move PECK,         NO_ADDITIONAL_EFFECT,        35, FLYING,       100, 35, MOVE_CATEGORY_PHYSICAL
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        80, FLYING,       100, 20, MOVE_CATEGORY_PHYSICAL
	move SUBMISSION,   RECOIL_EFFECT,               80, FIGHTING,      80, 25, MOVE_CATEGORY_PHYSICAL
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING,      90, 20, MOVE_CATEGORY_PHYSICAL
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING,     100, 20, MOVE_CATEGORY_PHYSICAL
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING,     100, 20, MOVE_CATEGORY_PHYSICAL
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move ABSORB,       DRAIN_HP_EFFECT,             20, GRASS,        100, 20, MOVE_CATEGORY_SPECIAL
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             40, GRASS,        100, 10, MOVE_CATEGORY_SPECIAL
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,         90, 10, MOVE_CATEGORY_STATUS
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, NORMAL,       100, 40, MOVE_CATEGORY_STATUS
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,         95, 25, MOVE_CATEGORY_PHYSICAL
	move SOLARBEAM,    CHARGE_EFFECT,              120, GRASS,        100, 10, MOVE_CATEGORY_SPECIAL
	move POISONPOWDER, POISON_EFFECT,                0, POISON,        75, 35, MOVE_CATEGORY_STATUS
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,         75, 30, MOVE_CATEGORY_STATUS
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,         75, 15, MOVE_CATEGORY_STATUS
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,   70, GRASS,        100, 20, MOVE_CATEGORY_SPECIAL
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,           95, 40, MOVE_CATEGORY_STATUS
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,       100, 10, MOVE_CATEGORY_SPECIAL
	move FIRE_SPIN,    TRAPPING_EFFECT,             15, FIRE,          70, 15, MOVE_CATEGORY_SPECIAL
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC,     100, 30, MOVE_CATEGORY_SPECIAL
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC,     100, 15, MOVE_CATEGORY_SPECIAL
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,     100, 20, MOVE_CATEGORY_STATUS
	move THUNDER,      PARALYZE_SIDE_EFFECT1,      120, ELECTRIC,      70, 10, MOVE_CATEGORY_SPECIAL
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        50, ROCK,          65, 15, MOVE_CATEGORY_PHYSICAL
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,       100, 10, MOVE_CATEGORY_PHYSICAL
	move FISSURE,      OHKO_EFFECT,                  1, GROUND,        30,  5, MOVE_CATEGORY_PHYSICAL
	move DIG,          CHARGE_EFFECT,              100, GROUND,       100, 10, MOVE_CATEGORY_PHYSICAL
	move TOXIC,        POISON_EFFECT,                0, POISON,        85, 10, MOVE_CATEGORY_STATUS
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC_TYPE, 100, 25, MOVE_CATEGORY_PHYSICAL
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC_TYPE, 100, 10, MOVE_CATEGORY_PHYSICAL
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC_TYPE,  60, 20, MOVE_CATEGORY_STATUS
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, PSYCHIC_TYPE, 100, 40, MOVE_CATEGORY_STATUS
	move AGILITY,      SPEED_UP2_EFFECT,             0, PSYCHIC_TYPE, 100, 30, MOVE_CATEGORY_STATUS
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,       100, 30, MOVE_CATEGORY_PHYSICAL
	move RAGE,         RAGE_EFFECT,                 20, NORMAL,       100, 20, MOVE_CATEGORY_PHYSICAL
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC_TYPE, 100, 20, MOVE_CATEGORY_STATUS
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,        100, 15, MOVE_CATEGORY_SPECIAL
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,       100, 10, MOVE_CATEGORY_STATUS
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,        85, 40, MOVE_CATEGORY_STATUS
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, NORMAL,       100, 15, MOVE_CATEGORY_STATUS
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,       100, 20, MOVE_CATEGORY_STATUS
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, NORMAL,       100, 20, MOVE_CATEGORY_STATUS
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,       100, 20, MOVE_CATEGORY_STATUS
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,        100, 10, MOVE_CATEGORY_STATUS
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, WATER,        100, 40, MOVE_CATEGORY_STATUS
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, NORMAL,       100, 40, MOVE_CATEGORY_STATUS
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 30, MOVE_CATEGORY_STATUS
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, PSYCHIC_TYPE, 100, 30, MOVE_CATEGORY_STATUS
	move HAZE,         HAZE_EFFECT,                  0, ICE,          100, 30, MOVE_CATEGORY_STATUS
	move REFLECT,      REFLECT_EFFECT,               0, PSYCHIC_TYPE, 100, 20, MOVE_CATEGORY_STATUS
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,       100, 10, MOVE_CATEGORY_PHYSICAL
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,       100, 10, MOVE_CATEGORY_STATUS
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, FLYING,       100, 20, MOVE_CATEGORY_STATUS
	move SELFDESTRUCT, EXPLODE_EFFECT,             130, NORMAL,       100,  5, MOVE_CATEGORY_PHYSICAL
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       100, NORMAL,        75, 10, MOVE_CATEGORY_PHYSICAL
	move LICK,         PARALYZE_SIDE_EFFECT2,       20, GHOST,        100, 30, MOVE_CATEGORY_PHYSICAL
	move SMOG,         POISON_SIDE_EFFECT2,         20, POISON,        70, 20, MOVE_CATEGORY_SPECIAL
	move SLUDGE,       POISON_SIDE_EFFECT2,         65, POISON,       100, 20, MOVE_CATEGORY_SPECIAL
	move BONE_CLUB,    FLINCH_SIDE_EFFECT1,         65, GROUND,        85, 20, MOVE_CATEGORY_PHYSICAL
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          120, FIRE,          85,  5, MOVE_CATEGORY_SPECIAL
	move WATERFALL,    NO_ADDITIONAL_EFFECT,        80, WATER,        100, 15, MOVE_CATEGORY_PHYSICAL
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,         75, 10, MOVE_CATEGORY_PHYSICAL
	move SWIFT,        SWIFT_EFFECT,                60, NORMAL,       100, 20, MOVE_CATEGORY_SPECIAL
	move SKULL_BASH,   CHARGE_EFFECT,              100, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,       100, 15, MOVE_CATEGORY_PHYSICAL
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      10, NORMAL,       100, 35, MOVE_CATEGORY_PHYSICAL
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, PSYCHIC_TYPE, 100, 20, MOVE_CATEGORY_STATUS
	move KINESIS,      ACCURACY_DOWN1_EFFECT,        0, PSYCHIC_TYPE,  80, 15, MOVE_CATEGORY_STATUS
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,       100, 10, MOVE_CATEGORY_STATUS
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,            85, FIGHTING,      90, 20, MOVE_CATEGORY_PHYSICAL
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,        75, 30, MOVE_CATEGORY_STATUS
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC_TYPE, 100, 15, MOVE_CATEGORY_SPECIAL
	move POISON_GAS,   POISON_EFFECT,                0, POISON,        55, 40, MOVE_CATEGORY_STATUS
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,        85, 20, MOVE_CATEGORY_PHYSICAL
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             20, BUG,          100, 15, MOVE_CATEGORY_PHYSICAL
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,        75, 10, MOVE_CATEGORY_STATUS
	move SKY_ATTACK,   CHARGE_EFFECT,              140, FLYING,        90,  5, MOVE_CATEGORY_PHYSICAL
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,       100, 10, MOVE_CATEGORY_STATUS
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,        100, 30, MOVE_CATEGORY_SPECIAL
	move DIZZY_PUNCH,  NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 10, MOVE_CATEGORY_PHYSICAL
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,        100, 15, MOVE_CATEGORY_STATUS
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,        70, 20, MOVE_CATEGORY_STATUS
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC_TYPE,  80, 15, MOVE_CATEGORY_SPECIAL
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,       100, 40, MOVE_CATEGORY_STATUS
	move ACID_ARMOR,   DEFENSE_UP2_EFFECT,           0, POISON,       100, 40, MOVE_CATEGORY_STATUS
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,        90, WATER,         85, 10, MOVE_CATEGORY_PHYSICAL
	move EXPLOSION,    EXPLODE_EFFECT,             170, NORMAL,       100,  5, MOVE_CATEGORY_PHYSICAL
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,        80, 15, MOVE_CATEGORY_PHYSICAL
	move BONEMERANG,   ATTACK_TWICE_EFFECT,         50, GROUND,        90, 10, MOVE_CATEGORY_PHYSICAL
	move REST,         HEAL_EFFECT,                  0, PSYCHIC_TYPE, 100, 10, MOVE_CATEGORY_STATUS
	move ROCK_SLIDE,   NO_ADDITIONAL_EFFECT,        75, ROCK,          90, 10, MOVE_CATEGORY_PHYSICAL
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,        90, 15, MOVE_CATEGORY_PHYSICAL
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,       100, 30, MOVE_CATEGORY_STATUS
	move TRI_ATTACK,   NO_ADDITIONAL_EFFECT,        80, NORMAL,       100, 10, MOVE_CATEGORY_SPECIAL
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,        90, 10, MOVE_CATEGORY_PHYSICAL
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,       100, 20, MOVE_CATEGORY_PHYSICAL
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,       100, 10, MOVE_CATEGORY_STATUS
	move STRUGGLE,     RECOIL_EFFECT,               50, NORMAL,       100, 10, MOVE_CATEGORY_PHYSICAL
	assert_table_length NUM_ATTACKS

MoveCategories:
    table_width 2, MoveCategories

    dw .Physical
    dw .Special
    dw .Status

    assert_table_length NUM_CATEGORIES

.Physical:  db "PHYSICAL@"
.Special:   db "SPECIAL@"
.Status:    db "STATUS@"

(define (problem sobokosnake-3-2)
(:domain sobokosnake)
(:objects
    ps0-2 - location
    ps0-3 - location
    ps0-4 - location
    ps0-5 - location
    ps0-6 - location
    ps0-8 - location
    ps0-9 - location
    ps0-10 - location
    ps1-2 - location
    ps1-3 - location
    ps1-4 - location
    ps1-5 - location
    ps1-6 - location
    ps1-8 - location
    ps1-9 - location
    ps1-10 - location
    ps2-2 - location
    ps2-3 - location
    ps2-4 - location
    ps2-5 - location
    ps2-6 - location
    ps2-8 - location
    ps2-9 - location
    ps2-10 - location
    ps3-5 - location
    ps3-6 - location
    ps3-8 - location
    ps4-2 - location
    ps4-3 - location
    ps4-5 - location
    ps4-6 - location
    ps4-8 - location
    ps4-9 - location
    ps4-10 - location
    ps5-1 - location
    ps5-2 - location
    ps5-3 - location
    ps5-5 - location
    ps5-6 - location
    ps5-7 - location
    ps5-8 - location
    ps5-9 - location
    ps5-10 - location
    ps6-0 - location
    ps6-1 - location
    ps6-2 - location
    ps6-3 - location
    ps6-4 - location
    ps6-5 - location
    ps6-6 - location
    ps6-8 - location
    ps6-10 - location
    ps7-0 - location
    ps7-1 - location
    ps7-2 - location
    ps7-3 - location
    ps7-5 - location
    ps7-6 - location
    ps7-8 - location
    ps7-9 - location
    ps7-10 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR ps0-2 ps0-3 dir-right)
    (MOVE-DIR ps0-2 ps1-2 dir-down)
    (MOVE-DIR ps0-3 ps0-2 dir-left)
    (MOVE-DIR ps0-3 ps0-4 dir-right)
    (MOVE-DIR ps0-3 ps1-3 dir-down)
    (MOVE-DIR ps0-4 ps0-3 dir-left)
    (MOVE-DIR ps0-4 ps0-5 dir-right)
    (MOVE-DIR ps0-4 ps1-4 dir-down)
    (MOVE-DIR ps0-5 ps0-4 dir-left)
    (MOVE-DIR ps0-5 ps0-6 dir-right)
    (MOVE-DIR ps0-5 ps1-5 dir-down)
    (MOVE-DIR ps0-6 ps0-5 dir-left)
    (MOVE-DIR ps0-6 ps1-6 dir-down)
    (MOVE-DIR ps0-8 ps1-8 dir-down)
    (MOVE-DIR ps0-8 ps0-9 dir-right)
    (MOVE-DIR ps0-9 ps0-8 dir-left)
    (MOVE-DIR ps0-9 ps1-9 dir-down)
    (MOVE-DIR ps0-9 ps0-10 dir-right)
    (MOVE-DIR ps0-10 ps0-9 dir-left)
    (MOVE-DIR ps0-10 ps1-10 dir-down)
    (MOVE-DIR ps1-2 ps1-3 dir-right)
    (MOVE-DIR ps1-2 ps2-2 dir-down)
    (MOVE-DIR ps1-2 ps0-2 dir-up)
    (MOVE-DIR ps1-3 ps1-2 dir-left)
    (MOVE-DIR ps1-3 ps1-4 dir-right)
    (MOVE-DIR ps1-3 ps2-3 dir-down)
    (MOVE-DIR ps1-3 ps0-3 dir-up)
    (MOVE-DIR ps1-4 ps1-3 dir-left)
    (MOVE-DIR ps1-4 ps1-5 dir-right)
    (MOVE-DIR ps1-4 ps2-4 dir-down)
    (MOVE-DIR ps1-4 ps0-4 dir-up)
    (MOVE-DIR ps1-5 ps1-4 dir-left)
    (MOVE-DIR ps1-5 ps1-6 dir-right)
    (MOVE-DIR ps1-5 ps2-5 dir-down)
    (MOVE-DIR ps1-5 ps0-5 dir-up)
    (MOVE-DIR ps1-6 ps1-5 dir-left)
    (MOVE-DIR ps1-6 ps2-6 dir-down)
    (MOVE-DIR ps1-6 ps0-6 dir-up)
    (MOVE-DIR ps1-8 ps1-9 dir-right)
    (MOVE-DIR ps1-8 ps2-8 dir-down)
    (MOVE-DIR ps1-8 ps0-8 dir-up)
    (MOVE-DIR ps1-9 ps1-8 dir-left)
    (MOVE-DIR ps1-9 ps1-10 dir-right)
    (MOVE-DIR ps1-9 ps2-9 dir-down)
    (MOVE-DIR ps1-9 ps0-9 dir-up)
    (MOVE-DIR ps1-10 ps1-9 dir-left)
    (MOVE-DIR ps1-10 ps2-10 dir-down)
    (MOVE-DIR ps1-10 ps0-10 dir-up)
    (MOVE-DIR ps2-2 ps2-3 dir-right)
    (MOVE-DIR ps2-2 ps1-2 dir-up)
    (MOVE-DIR ps2-3 ps2-2 dir-left)
    (MOVE-DIR ps2-3 ps2-4 dir-right)
    (MOVE-DIR ps2-3 ps1-3 dir-up)
    (MOVE-DIR ps2-4 ps2-3 dir-left)
    (MOVE-DIR ps2-4 ps2-5 dir-right)
    (MOVE-DIR ps2-4 ps1-4 dir-up)
    (MOVE-DIR ps2-5 ps2-4 dir-left)
    (MOVE-DIR ps2-5 ps2-6 dir-right)
    (MOVE-DIR ps2-5 ps3-5 dir-down)
    (MOVE-DIR ps2-5 ps1-5 dir-up)
    (MOVE-DIR ps2-6 ps2-5 dir-left)
    (MOVE-DIR ps2-6 ps3-6 dir-down)
    (MOVE-DIR ps2-6 ps1-6 dir-up)
    (MOVE-DIR ps2-8 ps2-9 dir-right)
    (MOVE-DIR ps2-8 ps3-8 dir-down)
    (MOVE-DIR ps2-8 ps1-8 dir-up)
    (MOVE-DIR ps2-9 ps2-8 dir-left)
    (MOVE-DIR ps2-9 ps2-10 dir-right)
    (MOVE-DIR ps2-9 ps1-9 dir-up)
    (MOVE-DIR ps2-10 ps2-9 dir-left)
    (MOVE-DIR ps2-10 ps1-10 dir-up)
    (MOVE-DIR ps3-5 ps3-6 dir-right)
    (MOVE-DIR ps3-5 ps4-5 dir-down)
    (MOVE-DIR ps3-5 ps2-5 dir-up)
    (MOVE-DIR ps3-6 ps3-5 dir-left)
    (MOVE-DIR ps3-6 ps4-6 dir-down)
    (MOVE-DIR ps3-6 ps2-6 dir-up)
    (MOVE-DIR ps3-8 ps4-8 dir-down)
    (MOVE-DIR ps3-8 ps2-8 dir-up)
    (MOVE-DIR ps4-2 ps4-3 dir-right)
    (MOVE-DIR ps4-2 ps5-2 dir-down)
    (MOVE-DIR ps4-3 ps4-2 dir-left)
    (MOVE-DIR ps4-3 ps5-3 dir-down)
    (MOVE-DIR ps4-5 ps4-6 dir-right)
    (MOVE-DIR ps4-5 ps5-5 dir-down)
    (MOVE-DIR ps4-5 ps3-5 dir-up)
    (MOVE-DIR ps4-6 ps4-5 dir-left)
    (MOVE-DIR ps4-6 ps5-6 dir-down)
    (MOVE-DIR ps4-6 ps3-6 dir-up)
    (MOVE-DIR ps4-8 ps4-9 dir-right)
    (MOVE-DIR ps4-8 ps5-8 dir-down)
    (MOVE-DIR ps4-8 ps3-8 dir-up)
    (MOVE-DIR ps4-9 ps4-8 dir-left)
    (MOVE-DIR ps4-9 ps4-10 dir-right)
    (MOVE-DIR ps4-9 ps5-9 dir-down)
    (MOVE-DIR ps4-10 ps4-9 dir-left)
    (MOVE-DIR ps4-10 ps5-10 dir-down)
    (MOVE-DIR ps5-1 ps5-2 dir-right)
    (MOVE-DIR ps5-1 ps6-1 dir-down)
    (MOVE-DIR ps5-2 ps5-1 dir-left)
    (MOVE-DIR ps5-2 ps5-3 dir-right)
    (MOVE-DIR ps5-2 ps6-2 dir-down)
    (MOVE-DIR ps5-2 ps4-2 dir-up)
    (MOVE-DIR ps5-3 ps5-2 dir-left)
    (MOVE-DIR ps5-3 ps6-3 dir-down)
    (MOVE-DIR ps5-3 ps4-3 dir-up)
    (MOVE-DIR ps5-5 ps5-6 dir-right)
    (MOVE-DIR ps5-5 ps6-5 dir-down)
    (MOVE-DIR ps5-5 ps4-5 dir-up)
    (MOVE-DIR ps5-6 ps5-5 dir-left)
    (MOVE-DIR ps5-6 ps5-7 dir-right)
    (MOVE-DIR ps5-6 ps6-6 dir-down)
    (MOVE-DIR ps5-6 ps4-6 dir-up)
    (MOVE-DIR ps5-7 ps5-6 dir-left)
    (MOVE-DIR ps5-7 ps5-8 dir-right)
    (MOVE-DIR ps5-8 ps5-7 dir-left)
    (MOVE-DIR ps5-8 ps5-9 dir-right)
    (MOVE-DIR ps5-8 ps6-8 dir-down)
    (MOVE-DIR ps5-8 ps4-8 dir-up)
    (MOVE-DIR ps5-9 ps5-8 dir-left)
    (MOVE-DIR ps5-9 ps5-10 dir-right)
    (MOVE-DIR ps5-9 ps4-9 dir-up)
    (MOVE-DIR ps5-10 ps5-9 dir-left)
    (MOVE-DIR ps5-10 ps6-10 dir-down)
    (MOVE-DIR ps5-10 ps4-10 dir-up)
    (MOVE-DIR ps6-0 ps6-1 dir-right)
    (MOVE-DIR ps6-0 ps7-0 dir-down)
    (MOVE-DIR ps6-1 ps6-0 dir-left)
    (MOVE-DIR ps6-1 ps6-2 dir-right)
    (MOVE-DIR ps6-1 ps7-1 dir-down)
    (MOVE-DIR ps6-1 ps5-1 dir-up)
    (MOVE-DIR ps6-2 ps6-1 dir-left)
    (MOVE-DIR ps6-2 ps6-3 dir-right)
    (MOVE-DIR ps6-2 ps7-2 dir-down)
    (MOVE-DIR ps6-2 ps5-2 dir-up)
    (MOVE-DIR ps6-3 ps6-2 dir-left)
    (MOVE-DIR ps6-3 ps6-4 dir-right)
    (MOVE-DIR ps6-3 ps7-3 dir-down)
    (MOVE-DIR ps6-3 ps5-3 dir-up)
    (MOVE-DIR ps6-4 ps6-3 dir-left)
    (MOVE-DIR ps6-4 ps6-5 dir-right)
    (MOVE-DIR ps6-5 ps6-4 dir-left)
    (MOVE-DIR ps6-5 ps6-6 dir-right)
    (MOVE-DIR ps6-5 ps7-5 dir-down)
    (MOVE-DIR ps6-5 ps5-5 dir-up)
    (MOVE-DIR ps6-6 ps6-5 dir-left)
    (MOVE-DIR ps6-6 ps7-6 dir-down)
    (MOVE-DIR ps6-6 ps5-6 dir-up)
    (MOVE-DIR ps6-8 ps7-8 dir-down)
    (MOVE-DIR ps6-8 ps5-8 dir-up)
    (MOVE-DIR ps6-10 ps7-10 dir-down)
    (MOVE-DIR ps6-10 ps5-10 dir-up)
    (MOVE-DIR ps7-0 ps6-0 dir-up)
    (MOVE-DIR ps7-0 ps7-1 dir-right)
    (MOVE-DIR ps7-1 ps7-0 dir-left)
    (MOVE-DIR ps7-1 ps7-2 dir-right)
    (MOVE-DIR ps7-1 ps6-1 dir-up)
    (MOVE-DIR ps7-2 ps7-1 dir-left)
    (MOVE-DIR ps7-2 ps7-3 dir-right)
    (MOVE-DIR ps7-2 ps6-2 dir-up)
    (MOVE-DIR ps7-3 ps7-2 dir-left)
    (MOVE-DIR ps7-3 ps6-3 dir-up)
    (MOVE-DIR ps7-5 ps7-6 dir-right)
    (MOVE-DIR ps7-5 ps6-5 dir-up)
    (MOVE-DIR ps7-6 ps7-5 dir-left)
    (MOVE-DIR ps7-6 ps6-6 dir-up)
    (MOVE-DIR ps7-8 ps7-9 dir-right)
    (MOVE-DIR ps7-8 ps6-8 dir-up)
    (MOVE-DIR ps7-9 ps7-8 dir-left)
    (MOVE-DIR ps7-9 ps7-10 dir-right)
    (MOVE-DIR ps7-10 ps7-9 dir-left)
    (MOVE-DIR ps7-10 ps6-10 dir-up)
    (thinsnake ps3-5)
    (blocked ps3-5)
    (ispoint ps0-5)
    ;(ispoint ps0-8)
    ;(ispoint ps0-10)
    ;(ispoint ps1-4)
    ;(ispoint ps1-6)
    ;(ispoint ps2-8)
    ;(ispoint ps2-10)
    ;(ispoint ps4-3)
    ;(ispoint ps5-1)
    ;(ispoint ps6-1)
    ;(ispoint ps7-0)
    ;(ispoint ps7-3)
    ;(isbox ps1-5)
    ;(isbox ps1-9)
    ;(isbox ps6-2)
    ;(ishole ps4-8)
    ;(ishole ps6-4)
    ;(blocked ps4-8)
    ;(blocked ps6-4)
)
(:goal
(and
    (not (ispoint ps0-5))
    (not (ispoint ps0-8))
    (not (ispoint ps0-10))
    (not (ispoint ps1-4))
    (not (ispoint ps1-6))
    (not (ispoint ps2-8))
    (not (ispoint ps2-10))
    (not (ispoint ps4-3))
    (not (ispoint ps5-1))
    (not (ispoint ps6-1))
    (not (ispoint ps7-0))
    (not (ispoint ps7-3))
)
)
)
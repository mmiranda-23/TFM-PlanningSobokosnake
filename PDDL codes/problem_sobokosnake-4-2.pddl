(define (problem sobokosnake-4-2)
(:domain sobokosnake)
(:objects
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos2-2 - location
    pos2-3 - location
    pos2-4 - location
    pos2-6 - location
    pos2-7 - location
    pos3-3 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos4-0 - location
    pos4-1 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-6 - location
    pos4-7 - location
    pos4-8 - location
    pos4-9 - location
    pos5-0 - location
    pos5-1 - location
    pos5-3 - location
    pos5-4 - location
    pos5-6 - location
    pos5-7 - location
    pos5-8 - location
    pos5-9 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos2-2 pos2-3 dir-right)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-3 pos2-2 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-6 pos2-7 dir-right)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-7 pos2-6 dir-left)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos4-7 dir-down)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos4-8 dir-down)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos4-7 dir-right)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos4-7 pos4-6 dir-left)
    (MOVE-DIR pos4-7 pos4-8 dir-right)
    (MOVE-DIR pos4-7 pos5-7 dir-down)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos4-8 pos4-7 dir-left)
    (MOVE-DIR pos4-8 pos4-9 dir-right)
    (MOVE-DIR pos4-8 pos5-8 dir-down)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos4-9 pos4-8 dir-left)
    (MOVE-DIR pos4-9 pos5-9 dir-down)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos6-4 dir-down)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-6 pos5-7 dir-right)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (MOVE-DIR pos5-7 pos5-6 dir-left)
    (MOVE-DIR pos5-7 pos5-8 dir-right)
    (MOVE-DIR pos5-7 pos4-7 dir-up)
    (MOVE-DIR pos5-8 pos5-7 dir-left)
    (MOVE-DIR pos5-8 pos5-9 dir-right)
    (MOVE-DIR pos5-8 pos4-8 dir-up)
    (MOVE-DIR pos5-9 pos5-8 dir-left)
    (MOVE-DIR pos5-9 pos4-9 dir-up)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos5-4 dir-up)
    (thinsnake pos6-2)
    (blocked pos6-2)
    (ispoint pos0-2)
    (ispoint pos2-6)
    (ispoint pos2-7)
    (ispoint pos3-6)
    (ispoint pos3-8)
    (ispoint pos4-0)
    (ispoint pos4-7)
    (ispoint pos4-9)
    (ispoint pos5-1)
    (ispoint pos5-6)
    (ispoint pos5-8)
    (ispoint pos5-9)
    (isbox pos1-3)
    (blocked pos4-5)
    (isclosed pos4-5)
    (isswitch pos4-3)
    (DOOR-SWITCH pos4-5 pos4-3)
)
(:goal
(and
    (not (ispoint pos0-2))
    (not (ispoint pos2-6))
    (not (ispoint pos2-7))
    (not (ispoint pos3-6))
    (not (ispoint pos3-8))
    (not (ispoint pos4-0))
    (not (ispoint pos4-7))
    (not (ispoint pos4-9))
    (not (ispoint pos5-1))
    (not (ispoint pos5-6))
    (not (ispoint pos5-8))
    (not (ispoint pos5-9))
)
)
)
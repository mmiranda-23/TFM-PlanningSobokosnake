(define (problem sobokosnake-5-1)
(:domain sobokosnake)
(:objects
    pos0-3 - location
    pos0-4 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos2-1 - location
    pos2-2 - location
    pos2-3 - location
    pos2-4 - location
    pos2-6 - location
    pos2-7 - location
    pos2-8 - location
    pos3-1 - location
    pos3-2 - location
    pos3-3 - location
    pos3-4 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos4-3 - location
    pos4-6 - location
    pos4-7 - location
    pos4-8 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    pos5-7 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    pos7-6 - location
    pos7-7 - location
    pos7-8 - location
    pos8-5 - location
    pos8-6 - location
    pos8-7 - location
    pos8-8 - location
    pos9-5 - location
    pos9-6 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos2-3 dir-right)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-3 pos2-2 dir-left)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-6 pos2-7 dir-right)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-7 pos2-6 dir-left)
    (MOVE-DIR pos2-7 pos2-8 dir-right)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-8 pos2-7 dir-left)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos3-3 dir-right)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-3 pos3-2 dir-left)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos4-7 dir-down)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos4-8 dir-down)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos4-6 pos4-7 dir-right)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos4-7 pos4-6 dir-left)
    (MOVE-DIR pos4-7 pos4-8 dir-right)
    (MOVE-DIR pos4-7 pos5-7 dir-down)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos4-8 pos4-7 dir-left)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-2 pos6-2 dir-down)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos5-7 pos4-7 dir-up)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-2 pos5-2 dir-up)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos6-6 dir-right)
    (MOVE-DIR pos6-6 pos6-5 dir-left)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-6 pos7-6 dir-down)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos7-7 dir-down)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos7-8 dir-down)
    (MOVE-DIR pos7-6 pos7-7 dir-right)
    (MOVE-DIR pos7-6 pos8-6 dir-down)
    (MOVE-DIR pos7-6 pos6-6 dir-up)
    (MOVE-DIR pos7-7 pos7-6 dir-left)
    (MOVE-DIR pos7-7 pos7-8 dir-right)
    (MOVE-DIR pos7-7 pos8-7 dir-down)
    (MOVE-DIR pos7-7 pos6-7 dir-up)
    (MOVE-DIR pos7-8 pos7-7 dir-left)
    (MOVE-DIR pos7-8 pos8-8 dir-down)
    (MOVE-DIR pos7-8 pos6-8 dir-up)
    (MOVE-DIR pos8-5 pos8-6 dir-right)
    (MOVE-DIR pos8-5 pos9-5 dir-down)
    (MOVE-DIR pos8-6 pos8-5 dir-left)
    (MOVE-DIR pos8-6 pos8-7 dir-right)
    (MOVE-DIR pos8-6 pos9-6 dir-down)
    (MOVE-DIR pos8-6 pos7-6 dir-up)
    (MOVE-DIR pos8-7 pos8-6 dir-left)
    (MOVE-DIR pos8-7 pos8-8 dir-right)
    (MOVE-DIR pos8-7 pos7-7 dir-up)
    (MOVE-DIR pos8-8 pos8-7 dir-left)
    (MOVE-DIR pos8-8 pos7-8 dir-up)
    (MOVE-DIR pos9-5 pos9-6 dir-right)
    (MOVE-DIR pos9-5 pos8-5 dir-up)
    (MOVE-DIR pos9-6 pos9-5 dir-left)
    (MOVE-DIR pos9-6 pos8-6 dir-up)
    (thinsnake pos6-0)
    (blocked pos6-0)
    (ispoint pos0-3)
    (ispoint pos0-4)
    (ispoint pos1-2)
    (ispoint pos1-4)
    (ispoint pos2-1)
    (ispoint pos2-3)
    (ispoint pos2-7)
    (ispoint pos3-1)
    (ispoint pos3-2)
    (ispoint pos3-4)
    (ispoint pos8-5)
    (ispoint pos8-8)
    (ispoint pos9-6)
    (isbox pos3-3)
    (isbox pos3-7)
    (isbox pos6-1)
    (ishole pos6-5)
    (blocked pos6-5)
    (blocked pos4-3)
    (isclosed pos4-3)
    (isswitch pos6-2)
    (DOOR-SWITCH pos4-3 pos6-2)
    (isswitch pos3-7)
    (not (isclosed pos5-7))
    (DOOR-SWITCH pos5-7 pos3-7)
)
(:goal
(and
    (not (ispoint pos0-3))
    (not (ispoint pos0-4))
    (not (ispoint pos1-2))
    (not (ispoint pos1-4))
    (not (ispoint pos2-1))
    (not (ispoint pos2-3))
    (not (ispoint pos2-7))
    (not (ispoint pos3-1))
    (not (ispoint pos3-2))
    (not (ispoint pos3-4))
    (not (ispoint pos8-5))
    (not (ispoint pos8-8))
    (not (ispoint pos9-6))
)
)
)
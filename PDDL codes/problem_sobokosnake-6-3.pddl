(define (problem sobokosnake-6-3)
(:domain sobokosnake)
(:objects
    pos0-5 - location
    pos0-6 - location
    pos0-7 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos1-7 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos2-7 - location
    pos3-3 - location
    pos3-4 - location
    pos3-5 - location
    pos3-6 - location
    pos3-7 - location
    pos4-6 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    pos5-5 - location
    pos5-6 - location
    pos5-7 - location
    pos6-0 - location
    pos6-1 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
    pos6-7 - location
    pos7-3 - location
    pos7-5 - location
    pos7-6 - location
    pos7-7 - location
    pos8-1 - location
    pos8-2 - location
    pos8-3 - location
    pos9-1 - location
    pos9-2 - location
    pos9-3 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos0-7 dir-right)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos0-7 pos0-6 dir-left)
    (MOVE-DIR pos0-7 pos1-7 dir-down)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos1-7 dir-right)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos1-7 pos1-6 dir-left)
    (MOVE-DIR pos1-7 pos2-7 dir-down)
    (MOVE-DIR pos1-7 pos0-7 dir-up)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-7 pos1-7 dir-up)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos3-5 dir-right)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-5 pos3-4 dir-left)
    (MOVE-DIR pos3-5 pos3-6 dir-right)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos3-6 pos3-5 dir-left)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-5 pos5-6 dir-right)
    (MOVE-DIR pos5-5 pos6-5 dir-down)
    (MOVE-DIR pos5-6 pos5-5 dir-left)
    (MOVE-DIR pos5-6 pos5-7 dir-right)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (MOVE-DIR pos5-7 pos5-6 dir-left)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-3 pos7-3 dir-down)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos7-5 dir-down)
    (MOVE-DIR pos6-5 pos5-5 dir-up)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-7 pos7-7 dir-down)
    (MOVE-DIR pos7-3 pos8-3 dir-down)
    (MOVE-DIR pos7-3 pos6-3 dir-up)
    (MOVE-DIR pos7-5 pos7-6 dir-right)
    (MOVE-DIR pos7-5 pos6-5 dir-up)
    (MOVE-DIR pos7-6 pos7-5 dir-left)
    (MOVE-DIR pos7-6 pos7-7 dir-right)
    (MOVE-DIR pos7-7 pos6-7 dir-up)
    (MOVE-DIR pos7-7 pos7-6 dir-left)
    (MOVE-DIR pos8-1 pos8-2 dir-right)
    (MOVE-DIR pos8-1 pos9-1 dir-down)
    (MOVE-DIR pos8-2 pos8-1 dir-left)
    (MOVE-DIR pos8-2 pos8-3 dir-right)
    (MOVE-DIR pos8-2 pos9-2 dir-down)
    (MOVE-DIR pos8-3 pos8-2 dir-left)
    (MOVE-DIR pos8-3 pos9-3 dir-down)
    (MOVE-DIR pos8-3 pos7-3 dir-up)
    (MOVE-DIR pos9-1 pos9-2 dir-right)
    (MOVE-DIR pos9-1 pos8-1 dir-up)
    (MOVE-DIR pos9-2 pos9-1 dir-left)
    (MOVE-DIR pos9-2 pos9-3 dir-right)
    (MOVE-DIR pos9-2 pos8-2 dir-up)
    (MOVE-DIR pos9-3 pos9-2 dir-left)
    (MOVE-DIR pos9-3 pos8-3 dir-up)
    (thinsnake pos6-3)
    (blocked pos6-3)
    (ispoint pos0-5)
    (ispoint pos0-6)
    (ispoint pos0-7)
    (ispoint pos1-4)
    (ispoint pos2-3)
    (ispoint pos2-5)
    (ispoint pos2-7)
    (ispoint pos3-3)
    (ispoint pos5-1)
    (ispoint pos5-5)
    (ispoint pos5-6)
    (ispoint pos5-7)
    (ispoint pos6-0)
    (ispoint pos6-5)
    (ispoint pos6-7)
    (ispoint pos7-5)
    (ispoint pos7-6)
    (ispoint pos7-7)
    (ispoint pos8-2)
)
(:goal
(and
    (not (ispoint pos0-5))
    (not (ispoint pos0-6))
    (not (ispoint pos0-7))
    (not (ispoint pos1-4))
    (not (ispoint pos2-3))
    (not (ispoint pos2-5))
    (not (ispoint pos2-7))
    (not (ispoint pos3-3))
    (not (ispoint pos5-1))
    (not (ispoint pos5-5))
    (not (ispoint pos5-6))
    (not (ispoint pos5-7))
    (not (ispoint pos6-0))
    (not (ispoint pos6-5))
    (not (ispoint pos6-7))
    (not (ispoint pos7-5))
    (not (ispoint pos7-6))
    (not (ispoint pos7-7))
    (not (ispoint pos8-2))
)
)
)
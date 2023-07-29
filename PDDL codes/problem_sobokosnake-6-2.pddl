(define (problem sobokosnake-6-2)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-7 - location
    pos0-8 - location
    pos1-0 - location
    pos1-1 - location
    pos1-7 - location
    pos1-8 - location
    pos2-0 - location
    pos2-1 - location
    pos2-7 - location
    pos2-8 - location
    pos3-0 - location
    pos3-1 - location
    pos3-7 - location
    pos3-8 - location
    pos4-0 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-8 - location
    pos5-0 - location
    pos5-1 - location
    pos5-3 - location
    pos5-5 - location
    pos5-7 - location
    pos5-8 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-0 pos0-1 dir-right)
    (MOVE-DIR pos0-0 pos1-0 dir-down)
    (MOVE-DIR pos0-1 pos0-0 dir-left)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-7 pos0-8 dir-right)
    (MOVE-DIR pos0-7 pos1-7 dir-down)
    (MOVE-DIR pos0-8 pos0-7 dir-left)
    (MOVE-DIR pos0-8 pos1-8 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-7 pos1-8 dir-right)
    (MOVE-DIR pos1-7 pos2-7 dir-down)
    (MOVE-DIR pos1-7 pos0-7 dir-up)
    (MOVE-DIR pos1-8 pos1-7 dir-left)
    (MOVE-DIR pos1-8 pos2-8 dir-down)
    (MOVE-DIR pos1-8 pos0-8 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-7 pos2-8 dir-right)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-7 pos1-7 dir-up)
    (MOVE-DIR pos2-8 pos2-7 dir-left)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos2-8 pos1-8 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos4-8 dir-down)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos5-5 dir-down)
    (MOVE-DIR pos4-8 pos5-8 dir-down)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-5 pos6-5 dir-down)
    (MOVE-DIR pos5-5 pos4-5 dir-up)
    (MOVE-DIR pos5-7 pos5-8 dir-right)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos5-8 pos5-7 dir-left)
    (MOVE-DIR pos5-8 pos6-8 dir-down)
    (MOVE-DIR pos5-8 pos4-8 dir-up)
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
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos6-6 dir-right)
    (MOVE-DIR pos6-5 pos5-5 dir-up)
    (MOVE-DIR pos6-6 pos6-5 dir-left)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos5-8 dir-up)
    (thinsnake pos6-6)
    (blocked pos6-6)
    (ispoint pos0-1)
    (ispoint pos0-7)
    (ispoint pos4-3)
    (ispoint pos4-4)
    (ispoint pos4-5)
    (ispoint pos5-1)
    (ispoint pos5-3)
    (ispoint pos5-5)
    (ispoint pos5-7)
    (ispoint pos6-0)
    (ispoint pos6-3)
    (ispoint pos6-4)
    (ispoint pos6-5)
    (ispoint pos6-8)
)
(:goal
(and
    (not (ispoint pos0-1))
    (not (ispoint pos0-7))
    (not (ispoint pos4-3))
    (not (ispoint pos4-4))
    (not (ispoint pos4-5))
    (not (ispoint pos5-1))
    (not (ispoint pos5-3))
    (not (ispoint pos5-5))
    (not (ispoint pos5-7))
    (not (ispoint pos6-0))
    (not (ispoint pos6-3))
    (not (ispoint pos6-4))
    (not (ispoint pos6-5))
    (not (ispoint pos6-8))
)
)
)
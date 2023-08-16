(define (problem sobokosnake-6-4)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos1-7 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-7 - location
    pos3-0 - location
    pos3-1 - location
    pos3-4 - location
    pos3-5 - location
    pos3-7 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-7 - location
    pos5-2 - location
    pos5-3 - location
    pos5-4 - location
    pos5-5 - location
    pos5-6 - location
    pos5-7 - location
    pos6-2 - location
    pos6-3 - location
    pos6-4 - location
    pos6-5 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-0 pos0-1 dir-right)
    (MOVE-DIR pos0-0 pos1-0 dir-down)
    (MOVE-DIR pos0-1 pos0-0 dir-left)
    (MOVE-DIR pos0-1 pos0-2 dir-right)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos1-7 dir-right)
    (MOVE-DIR pos1-7 pos1-6 dir-left)
    (MOVE-DIR pos1-7 pos2-7 dir-down)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-7 pos1-7 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-4 pos3-5 dir-right)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos3-5 pos3-4 dir-left)
    (MOVE-DIR pos3-5 pos4-5 dir-down)
    (MOVE-DIR pos3-7 pos4-7 dir-down)
    (MOVE-DIR pos3-7 pos2-7 dir-up)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos5-5 dir-down)
    (MOVE-DIR pos4-5 pos3-5 dir-up)
    (MOVE-DIR pos4-7 pos5-7 dir-down)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-2 pos6-2 dir-down)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos5-5 dir-right)
    (MOVE-DIR pos5-4 pos6-4 dir-down)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-5 pos5-4 dir-left)
    (MOVE-DIR pos5-5 pos5-6 dir-right)
    (MOVE-DIR pos5-5 pos6-5 dir-down)
    (MOVE-DIR pos5-5 pos4-5 dir-up)
    (MOVE-DIR pos5-6 pos5-5 dir-left)
    (MOVE-DIR pos5-6 pos5-7 dir-right)
    (MOVE-DIR pos5-7 pos5-6 dir-left)
    (MOVE-DIR pos5-7 pos4-7 dir-up)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-2 pos5-2 dir-up)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos6-4 dir-right)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (MOVE-DIR pos6-4 pos6-3 dir-left)
    (MOVE-DIR pos6-4 pos6-5 dir-right)
    (MOVE-DIR pos6-4 pos5-4 dir-up)
    (MOVE-DIR pos6-5 pos6-4 dir-left)
    (MOVE-DIR pos6-5 pos5-5 dir-up)
    (thinsnake pos1-7)
    (blocked pos1-7)
    (ispoint pos0-0)
    (ispoint pos0-2)
    (ispoint pos1-1)
    (ispoint pos2-2)
    (ispoint pos3-0)
    (ispoint pos3-4)
    (ispoint pos3-5)
    (ispoint pos4-3)
    (ispoint pos4-5)
    (ispoint pos5-2)
    (ispoint pos5-4)
    (ispoint pos6-2)
    (ispoint pos6-3)
    (ispoint pos6-5)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-2))
    (not (ispoint pos1-1))
    (not (ispoint pos2-2))
    (not (ispoint pos3-0))
    (not (ispoint pos3-4))
    (not (ispoint pos3-5))
    (not (ispoint pos4-3))
    (not (ispoint pos4-5))
    (not (ispoint pos5-2))
    (not (ispoint pos5-4))
    (not (ispoint pos6-2))
    (not (ispoint pos6-3))
    (not (ispoint pos6-5))
)
)
)
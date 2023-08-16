(define (problem sobokosnake-6-5)
(:domain sobokosnake)
(:objects
    pos0-4 - location
    pos0-5 - location
    pos0-6 - location
    pos0-7 - location
    pos0-8 - location
    pos1-4 - location
    pos1-8 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos2-8 - location
    pos3-0 - location
    pos3-2 - location
    pos3-4 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos4-0 - location
    pos4-1 - location
    pos4-2 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-6 - location
    pos5-6 - location
    pos5-7 - location
    pos5-8 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-4 pos0-5 dir-right)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos0-5 pos0-4 dir-left)
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos0-7 dir-right)
    (MOVE-DIR pos0-7 pos0-6 dir-left)
    (MOVE-DIR pos0-7 pos0-8 dir-right)
    (MOVE-DIR pos0-8 pos0-7 dir-left)
    (MOVE-DIR pos0-8 pos1-8 dir-down)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos1-8 pos2-8 dir-down)
    (MOVE-DIR pos1-8 pos0-8 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos2-8 pos1-8 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-6 pos3-7 dir-right)
    (MOVE-DIR pos3-6 pos4-6 dir-down)
    (MOVE-DIR pos3-6 pos2-6 dir-up)
    (MOVE-DIR pos3-7 pos3-6 dir-left)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos4-2 dir-right)
    (MOVE-DIR pos4-2 pos4-1 dir-left)
    (MOVE-DIR pos4-2 pos4-3 dir-right)
    (MOVE-DIR pos4-2 pos3-2 dir-up)
    (MOVE-DIR pos4-3 pos4-2 dir-left)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos5-6 pos5-7 dir-right)
    (MOVE-DIR pos5-6 pos6-6 dir-down)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (MOVE-DIR pos5-7 pos5-6 dir-left)
    (MOVE-DIR pos5-7 pos5-8 dir-right)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos5-8 pos5-7 dir-left)
    (MOVE-DIR pos5-8 pos6-8 dir-down)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-6 pos5-6 dir-up)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos5-8 dir-up)
    (thinsnake pos2-4)
    (blocked pos2-4)
    (ispoint pos0-5)
    (ispoint pos0-6)
    (ispoint pos0-7)
    (ispoint pos1-4)
    (ispoint pos1-8)
    (ispoint pos2-1)
    (ispoint pos2-5)
    (ispoint pos2-8)
    (ispoint pos3-0)
    (ispoint pos3-2)
    (ispoint pos3-6)
    (ispoint pos3-7)
    (ispoint pos4-1)
    (ispoint pos4-5)
    (ispoint pos5-8)
    (ispoint pos6-8)
)
(:goal
(and
    (not (ispoint pos0-5))
    (not (ispoint pos0-6))
    (not (ispoint pos0-7))
    (not (ispoint pos1-4))
    (not (ispoint pos1-8))
    (not (ispoint pos2-1))
    (not (ispoint pos2-5))
    (not (ispoint pos2-8))
    (not (ispoint pos3-0))
    (not (ispoint pos3-2))
    (not (ispoint pos3-6))
    (not (ispoint pos3-7))
    (not (ispoint pos4-1))
    (not (ispoint pos4-5))
    (not (ispoint pos5-8))
    (not (ispoint pos6-8))
)
)
)
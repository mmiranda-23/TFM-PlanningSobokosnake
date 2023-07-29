(define (problem sobokosnake-6-1)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-3 - location
    pos1-0 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos2-1 - location
    pos2-3 - location
    pos3-0 - location
    pos3-1 - location
    pos3-3 - location
    pos4-0 - location
    pos4-1 - location
    pos4-3 - location
    pos5-0 - location
    pos5-3 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
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
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos1-1 dir-right)
    (MOVE-DIR pos1-1 pos1-0 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-3 pos6-3 dir-down)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos5-3 dir-up)
    (thinsnake pos5-0)
    (blocked pos5-0)
    (ispoint pos0-0)
    (ispoint pos0-3)
    (ispoint pos1-1)
    (ispoint pos3-0)
    (ispoint pos4-1)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-3))
    (not (ispoint pos1-1))
    (not (ispoint pos3-0))
    (not (ispoint pos4-1))
)
)
)
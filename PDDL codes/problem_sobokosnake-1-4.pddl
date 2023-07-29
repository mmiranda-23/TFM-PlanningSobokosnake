(define (problem sobokosnake-1-4)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos1-0 - location
    pos1-4 - location
    pos2-0 - location
    pos2-2 - location
    pos2-4 - location
    pos3-0 - location
    pos3-1 - location
    pos3-2 - location
    pos3-3 - location
    pos3-4 - location
    pos4-0 - location
    pos4-4 - location
    pos5-0 - location
    pos5-1 - location
    pos5-2 - location
    pos5-3 - location
    pos5-4 - location
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
    (MOVE-DIR pos0-2 pos0-3 dir-right)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-4 pos1-4 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-4 pos0-4 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos3-2 dir-right)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-2 pos3-1 dir-left)
    (MOVE-DIR pos3-2 pos3-3 dir-right)
    (MOVE-DIR pos3-3 pos3-2 dir-left)
    (MOVE-DIR pos3-3 pos3-4 dir-right)
    (MOVE-DIR pos3-4 pos3-3 dir-left)
    (MOVE-DIR pos3-4 pos2-4 dir-up)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos5-1 dir-right)
    (MOVE-DIR pos5-1 pos5-2 dir-right)
    (MOVE-DIR pos5-1 pos5-0 dir-left)
    (MOVE-DIR pos5-2 pos5-3 dir-right)
    (MOVE-DIR pos5-2 pos5-1 dir-left)
    (MOVE-DIR pos5-3 pos5-2 dir-left)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (thinsnake pos0-2)
    (blocked pos0-2)
    (ispoint pos1-0)
    (ispoint pos1-4)
    (ispoint pos2-0)
    (ispoint pos2-2)
    (ispoint pos2-4)
    (ispoint pos3-0)
    (ispoint pos3-1)
    (ispoint pos3-2)
    (ispoint pos3-3)
    (ispoint pos3-4)
    (ispoint pos4-0)
    (ispoint pos4-4)
    (ispoint pos5-0)
    (ispoint pos5-1)
    (ispoint pos5-2)
    (ispoint pos5-3)
    (ispoint pos5-4)
)
(:goal
(and
    (not (ispoint pos1-0))
    (not (ispoint pos1-4))
    (not (ispoint pos2-0))
    (not (ispoint pos2-2))
    (not (ispoint pos2-4))
    (not (ispoint pos3-0))
    (not (ispoint pos3-1))
    (not (ispoint pos3-2))
    (not (ispoint pos3-3))
    (not (ispoint pos4-0))
    (not (ispoint pos4-4))
    (not (ispoint pos5-0))
    (not (ispoint pos5-1))
    (not (ispoint pos5-2))
    (not (ispoint pos5-3))
    (not (ispoint pos5-4))
)
)
)
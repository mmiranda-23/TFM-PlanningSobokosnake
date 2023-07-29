(define (problem sobokosnake-2-2)
(:domain sobokosnake)
(:objects
    pos0-1 - location
    pos0-2 - location
    pos1-1 - location
    pos1-2 - location
    pos1-3 - location
    pos2-0 - location
    pos2-1 - location
    pos2-3 - location
    pos3-0 - location
    pos3-1 - location
    pos3-3 - location
    pos4-0 - location
    pos4-1 - location
    pos4-2 - location
    pos4-3 - location
    pos5-1 - location
    pos6-0 - location
    pos6-1 - location
    pos6-2 - location
    pos6-3 - location
    pos7-0 - location
    pos7-1 - location
    pos7-2 - location
    pos7-3 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-1 pos0-2 dir-right)
    (MOVE-DIR pos0-1 pos1-1 dir-down)
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos1-1 pos1-2 dir-right)
    (MOVE-DIR pos1-1 pos2-1 dir-down)
    (MOVE-DIR pos1-1 pos0-1 dir-up)
    (MOVE-DIR pos1-2 pos1-1 dir-left)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos3-1 dir-down)
    (MOVE-DIR pos2-1 pos1-1 dir-up)
    (MOVE-DIR pos2-3 pos3-3 dir-down)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos3-1 dir-right)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-1 pos3-0 dir-left)
    (MOVE-DIR pos3-1 pos4-1 dir-down)
    (MOVE-DIR pos3-1 pos2-1 dir-up)
    (MOVE-DIR pos3-3 pos4-3 dir-down)
    (MOVE-DIR pos3-3 pos2-3 dir-up)
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos4-1 dir-right)
    (MOVE-DIR pos4-1 pos4-0 dir-left)
    (MOVE-DIR pos4-1 pos4-2 dir-right)
    (MOVE-DIR pos4-1 pos5-1 dir-down)
    (MOVE-DIR pos4-1 pos3-1 dir-up)
    (MOVE-DIR pos4-2 pos4-1 dir-left)
    (MOVE-DIR pos4-2 pos4-3 dir-right)
    (MOVE-DIR pos4-3 pos4-2 dir-left)
    (MOVE-DIR pos4-3 pos3-3 dir-up)
    (MOVE-DIR pos5-1 pos6-1 dir-down)
    (MOVE-DIR pos5-1 pos4-1 dir-up)
    (MOVE-DIR pos6-0 pos6-1 dir-right)
    (MOVE-DIR pos6-0 pos7-0 dir-down)
    (MOVE-DIR pos6-1 pos6-0 dir-left)
    (MOVE-DIR pos6-1 pos6-2 dir-right)
    (MOVE-DIR pos6-1 pos7-1 dir-down)
    (MOVE-DIR pos6-1 pos5-1 dir-up)
    (MOVE-DIR pos6-2 pos6-1 dir-left)
    (MOVE-DIR pos6-2 pos6-3 dir-right)
    (MOVE-DIR pos6-2 pos7-2 dir-down)
    (MOVE-DIR pos6-3 pos6-2 dir-left)
    (MOVE-DIR pos6-3 pos7-3 dir-down)
    (MOVE-DIR pos7-0 pos6-0 dir-up)
    (MOVE-DIR pos7-0 pos7-1 dir-right)
    (MOVE-DIR pos7-1 pos7-0 dir-left)
    (MOVE-DIR pos7-1 pos7-2 dir-right)
    (MOVE-DIR pos7-1 pos6-1 dir-up)
    (MOVE-DIR pos7-2 pos7-1 dir-left)
    (MOVE-DIR pos7-2 pos7-3 dir-right)
    (MOVE-DIR pos7-2 pos6-2 dir-up)
    (MOVE-DIR pos7-3 pos7-2 dir-left)
    (MOVE-DIR pos7-3 pos6-3 dir-up)
    (thinsnake pos6-1)
    (blocked pos6-1)
    (ispoint pos0-1)
    (ispoint pos2-0)
    (ispoint pos2-3)
    (ispoint pos3-0)
    (ispoint pos3-1)
    (ispoint pos3-3)
    (ispoint pos4-0)
    (ispoint pos4-1)
    (ispoint pos4-3)
    (ispoint pos6-0)
    (ispoint pos6-3)
    (ispoint pos7-1)
    (ispoint pos7-2)
    (isbox pos5-1)
)
(:goal
(and
    (not (ispoint pos0-1))
    (not (ispoint pos2-0))
    (not (ispoint pos2-3))
    (not (ispoint pos3-0))
    (not (ispoint pos3-1))
    (not (ispoint pos3-3))
    (not (ispoint pos4-0))
    (not (ispoint pos4-1))
    (not (ispoint pos4-3))
    (not (ispoint pos6-0))
    (not (ispoint pos6-3))
    (not (ispoint pos7-1))
    (not (ispoint pos7-2))
)
)
)
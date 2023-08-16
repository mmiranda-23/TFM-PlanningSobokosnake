(define (problem sobokosnake-8-1)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos1-0 - location
    pos1-3 - location
    pos1-4 - location
    pos1-5 - location
    pos1-6 - location
    pos2-0 - location
    pos2-3 - location
    pos2-4 - location
    pos2-5 - location
    pos2-6 - location
    pos2-7 - location
    pos2-8 - location
    pos3-0 - location
    pos3-4 - location
    pos3-6 - location
    pos3-7 - location
    pos3-8 - location
    pos4-0 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-6 - location
    pos4-7 - location
    pos4-8 - location
    pos5-0 - location
    pos5-3 - location
    pos5-4 - location
    pos5-5 - location
    pos5-6 - location
    pos5-7 - location
    pos5-8 - location
    pos6-0 - location
    pos6-6 - location
    pos6-7 - location
    pos6-8 - location
    pos6-9 - location
    pos6-10 - location
    pos7-0 - location
    pos7-1 - location
    pos7-2 - location
    pos7-3 - location
    pos7-4 - location
    pos7-5 - location
    pos7-6 - location
    pos7-7 - location
    pos7-8 - location
    pos7-9 - location
    pos7-10 - location
    pos8-0 - location
    pos8-1 - location
    pos8-7 - location
    pos8-8 - location
    pos8-9 - location
    dir-right - direction
    dir-left - direction
    dir-up - direction
    dir-down - direction
)
(:init
    (MOVE-DIR pos0-0 pos1-0 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-3 pos1-4 dir-right)
    (MOVE-DIR pos1-3 pos2-3 dir-down)
    (MOVE-DIR pos1-4 pos1-3 dir-left)
    (MOVE-DIR pos1-4 pos1-5 dir-right)
    (MOVE-DIR pos1-4 pos2-4 dir-down)
    (MOVE-DIR pos1-5 pos1-4 dir-left)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos2-6 dir-down)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-3 pos2-4 dir-right)
    (MOVE-DIR pos2-3 pos1-3 dir-up)
    (MOVE-DIR pos2-4 pos2-3 dir-left)
    (MOVE-DIR pos2-4 pos2-5 dir-right)
    (MOVE-DIR pos2-4 pos3-4 dir-down)
    (MOVE-DIR pos2-4 pos1-4 dir-up)
    (MOVE-DIR pos2-5 pos2-4 dir-left)
    (MOVE-DIR pos2-5 pos2-6 dir-right)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-6 pos2-5 dir-left)
    (MOVE-DIR pos2-6 pos2-7 dir-right)
    (MOVE-DIR pos2-6 pos3-6 dir-down)
    (MOVE-DIR pos2-6 pos1-6 dir-up)
    (MOVE-DIR pos2-7 pos2-6 dir-left)
    (MOVE-DIR pos2-7 pos2-8 dir-right)
    (MOVE-DIR pos2-7 pos3-7 dir-down)
    (MOVE-DIR pos2-8 pos2-7 dir-left)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
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
    (MOVE-DIR pos4-0 pos3-0 dir-up)
    (MOVE-DIR pos4-0 pos5-0 dir-down)
    (MOVE-DIR pos4-3 pos4-4 dir-right)
    (MOVE-DIR pos4-3 pos5-3 dir-down)
    (MOVE-DIR pos4-4 pos4-3 dir-left)
    (MOVE-DIR pos4-4 pos4-5 dir-right)
    (MOVE-DIR pos4-4 pos5-4 dir-down)
    (MOVE-DIR pos4-4 pos3-4 dir-up)
    (MOVE-DIR pos4-5 pos4-4 dir-left)
    (MOVE-DIR pos4-5 pos4-6 dir-right)
    (MOVE-DIR pos4-5 pos5-5 dir-down)
    (MOVE-DIR pos4-6 pos4-5 dir-left)
    (MOVE-DIR pos4-6 pos4-7 dir-right)
    (MOVE-DIR pos4-6 pos5-6 dir-down)
    (MOVE-DIR pos4-6 pos3-6 dir-up)
    (MOVE-DIR pos4-7 pos4-6 dir-left)
    (MOVE-DIR pos4-7 pos4-8 dir-right)
    (MOVE-DIR pos4-7 pos5-7 dir-down)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos4-8 pos4-7 dir-left)
    (MOVE-DIR pos4-8 pos5-8 dir-down)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos5-0 pos4-0 dir-up)
    (MOVE-DIR pos5-0 pos6-0 dir-down)
    (MOVE-DIR pos5-3 pos5-4 dir-right)
    (MOVE-DIR pos5-3 pos4-3 dir-up)
    (MOVE-DIR pos5-4 pos5-3 dir-left)
    (MOVE-DIR pos5-4 pos5-5 dir-right)
    (MOVE-DIR pos5-4 pos4-4 dir-up)
    (MOVE-DIR pos5-5 pos5-4 dir-left)
    (MOVE-DIR pos5-5 pos5-6 dir-right)
    (MOVE-DIR pos5-5 pos4-5 dir-up)
    (MOVE-DIR pos5-6 pos5-5 dir-left)
    (MOVE-DIR pos5-6 pos5-7 dir-right)
    (MOVE-DIR pos5-6 pos6-6 dir-down)
    (MOVE-DIR pos5-6 pos4-6 dir-up)
    (MOVE-DIR pos5-7 pos5-6 dir-left)
    (MOVE-DIR pos5-7 pos5-8 dir-right)
    (MOVE-DIR pos5-7 pos6-7 dir-down)
    (MOVE-DIR pos5-7 pos4-7 dir-up)
    (MOVE-DIR pos5-8 pos5-7 dir-left)
    (MOVE-DIR pos5-8 pos6-8 dir-down)
    (MOVE-DIR pos5-8 pos4-8 dir-up)
    (MOVE-DIR pos6-0 pos5-0 dir-up)
    (MOVE-DIR pos6-0 pos7-0 dir-down)
    (MOVE-DIR pos6-6 pos6-7 dir-right)
    (MOVE-DIR pos6-6 pos7-6 dir-down)
    (MOVE-DIR pos6-6 pos5-6 dir-up)
    (MOVE-DIR pos6-7 pos6-6 dir-left)
    (MOVE-DIR pos6-7 pos6-8 dir-right)
    (MOVE-DIR pos6-7 pos7-7 dir-down)
    (MOVE-DIR pos6-7 pos5-7 dir-up)
    (MOVE-DIR pos6-8 pos6-7 dir-left)
    (MOVE-DIR pos6-8 pos6-9 dir-right)
    (MOVE-DIR pos6-8 pos7-8 dir-down)
    (MOVE-DIR pos6-8 pos5-8 dir-up)
    (MOVE-DIR pos6-9 pos6-8 dir-left)
    (MOVE-DIR pos6-9 pos6-10 dir-right)
    (MOVE-DIR pos6-9 pos7-9 dir-down)
    (MOVE-DIR pos6-10 pos6-9 dir-left)
    (MOVE-DIR pos6-10 pos7-10 dir-down)
    (MOVE-DIR pos7-0 pos6-0 dir-up)
    (MOVE-DIR pos7-0 pos8-0 dir-down)
    (MOVE-DIR pos7-0 pos7-1 dir-right)
    (MOVE-DIR pos7-1 pos7-0 dir-left)
    (MOVE-DIR pos7-1 pos7-2 dir-right)
    (MOVE-DIR pos7-1 pos8-1 dir-down)
    (MOVE-DIR pos7-2 pos7-1 dir-left)
    (MOVE-DIR pos7-2 pos7-3 dir-right)
    (MOVE-DIR pos7-3 pos7-2 dir-left)
    (MOVE-DIR pos7-3 pos7-4 dir-right)
    (MOVE-DIR pos7-4 pos7-3 dir-left)
    (MOVE-DIR pos7-4 pos7-5 dir-right)
    (MOVE-DIR pos7-5 pos7-4 dir-left)
    (MOVE-DIR pos7-5 pos7-6 dir-right)
    (MOVE-DIR pos7-6 pos7-5 dir-left)
    (MOVE-DIR pos7-6 pos7-7 dir-right)
    (MOVE-DIR pos7-6 pos6-6 dir-up)
    (MOVE-DIR pos7-7 pos7-6 dir-left)
    (MOVE-DIR pos7-7 pos7-8 dir-right)
    (MOVE-DIR pos7-7 pos8-7 dir-down)
    (MOVE-DIR pos7-7 pos6-7 dir-up)
    (MOVE-DIR pos7-8 pos7-7 dir-left)
    (MOVE-DIR pos7-8 pos7-9 dir-right)
    (MOVE-DIR pos7-8 pos8-8 dir-down)
    (MOVE-DIR pos7-8 pos6-8 dir-up)
    (MOVE-DIR pos7-9 pos7-8 dir-left)
    (MOVE-DIR pos7-9 pos7-10 dir-right)
    (MOVE-DIR pos7-9 pos8-9 dir-down)
    (MOVE-DIR pos7-9 pos6-9 dir-up)
    (MOVE-DIR pos7-10 pos7-9 dir-left)
    (MOVE-DIR pos7-10 pos6-10 dir-up)
    (MOVE-DIR pos8-0 pos7-0 dir-up)
    (MOVE-DIR pos8-0 pos8-1 dir-right)
    (MOVE-DIR pos8-1 pos8-0 dir-left)
    (MOVE-DIR pos8-1 pos7-1 dir-up)
    (MOVE-DIR pos8-7 pos8-8 dir-right)
    (MOVE-DIR pos8-7 pos7-7 dir-up)
    (MOVE-DIR pos8-8 pos8-7 dir-left)
    (MOVE-DIR pos8-8 pos8-9 dir-right)
    (MOVE-DIR pos8-8 pos7-8 dir-up)
    (MOVE-DIR pos8-9 pos8-8 dir-left)
    (MOVE-DIR pos8-9 pos7-9 dir-up)
    (thinsnake pos3-6)
    (blocked pos3-6)
    (ispoint pos0-0)
    (isbox pos2-5)
    (isbox pos3-4)
    (isbox pos3-7)
    (isbox pos4-5)
    (isbox pos4-8)
    (isbox pos5-6)
    (isbox pos5-7)
    (isbox pos6-8)
    (isbox pos7-7)
    (isbox pos7-9)
    (ishole pos1-0)
    (ishole pos2-0)
    (ishole pos3-0)
    (ishole pos4-0)
    (ishole pos5-0)
    (ishole pos6-0)
    (ishole pos7-2)
    (ishole pos7-3)
    (ishole pos7-4)
    (ishole pos7-5)
    (blocked pos1-0)
    (blocked pos2-0)
    (blocked pos3-0)
    (blocked pos4-0)
    (blocked pos5-0)
    (blocked pos6-0)
    (blocked pos7-2)
    (blocked pos7-3)
    (blocked pos7-4)
    (blocked pos7-5)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ishole pos1-0))
    (not (ishole pos2-0))
    (not (ishole pos3-0))
    (not (ishole pos4-0))
    (not (ishole pos5-0))
    (not (ishole pos6-0))
    (not (ishole pos7-2))
    (not (ishole pos7-3))
    (not (ishole pos7-4))
    (not (ishole pos7-5))
)
)
)
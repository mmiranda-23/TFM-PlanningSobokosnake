(define (problem sobokosnake-7-3)
(:domain sobokosnake)
(:objects
    pos0-0 - location
    pos0-1 - location
    pos0-2 - location
    pos0-3 - location
    pos0-4 - location
    pos0-5 - location
    pos0-6 - location
    pos0-7 - location
    pos0-8 - location
    pos0-9 - location
    pos0-10 - location
    pos0-11 - location
    pos0-12 - location
    pos1-0 - location
    pos1-2 - location
    pos1-3 - location
    pos1-5 - location
    pos1-6 - location
    pos1-8 - location
    pos1-10 - location
    pos1-12 - location
    pos2-0 - location
    pos2-1 - location
    pos2-2 - location
    pos2-5 - location
    pos2-8 - location
    pos2-9 - location
    pos2-10 - location
    pos2-11 - location
    pos2-12 - location
    pos3-0 - location
    pos3-2 - location
    pos3-4 - location
    pos3-5 - location
    pos3-7 - location
    pos3-8 - location
    pos3-9 - location
    pos3-10 - location
    pos4-0 - location
    pos4-1 - location
    pos4-2 - location
    pos4-3 - location
    pos4-4 - location
    pos4-5 - location
    pos4-7 - location
    pos4-8 - location
    pos4-9 - location
    pos4-10 - location
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
    (MOVE-DIR pos0-2 pos1-2 dir-down)
    (MOVE-DIR pos0-2 pos0-1 dir-left)
    (MOVE-DIR pos0-3 pos0-2 dir-left)
    (MOVE-DIR pos0-3 pos0-4 dir-right)
    (MOVE-DIR pos0-3 pos1-3 dir-down)
    (MOVE-DIR pos0-4 pos0-3 dir-left)
    (MOVE-DIR pos0-4 pos0-5 dir-right)
    (MOVE-DIR pos0-5 pos0-4 dir-left)
    (MOVE-DIR pos0-5 pos0-6 dir-right)
    (MOVE-DIR pos0-5 pos1-5 dir-down)
    (MOVE-DIR pos0-6 pos0-5 dir-left)
    (MOVE-DIR pos0-6 pos0-7 dir-right)
    (MOVE-DIR pos0-6 pos1-6 dir-down)
    (MOVE-DIR pos0-7 pos0-6 dir-left)
    (MOVE-DIR pos0-7 pos0-8 dir-right)
    (MOVE-DIR pos0-8 pos0-7 dir-left)
    (MOVE-DIR pos0-8 pos0-9 dir-right)
    (MOVE-DIR pos0-8 pos1-8 dir-down)
    (MOVE-DIR pos0-9 pos0-8 dir-left)
    (MOVE-DIR pos0-9 pos0-10 dir-right)
    (MOVE-DIR pos0-10 pos0-9 dir-left)
    (MOVE-DIR pos0-10 pos0-11 dir-right)
    (MOVE-DIR pos0-10 pos1-10 dir-down)
    (MOVE-DIR pos0-11 pos0-10 dir-left)
    (MOVE-DIR pos0-11 pos0-12 dir-right)
    (MOVE-DIR pos0-12 pos0-11 dir-left)
    (MOVE-DIR pos0-12 pos1-12 dir-down)
    (MOVE-DIR pos1-0 pos0-0 dir-up)
    (MOVE-DIR pos1-0 pos2-0 dir-down)
    (MOVE-DIR pos1-2 pos1-3 dir-right)
    (MOVE-DIR pos1-2 pos2-2 dir-down)
    (MOVE-DIR pos1-2 pos0-2 dir-up)
    (MOVE-DIR pos1-3 pos1-2 dir-left)
    (MOVE-DIR pos1-3 pos0-3 dir-up)
    (MOVE-DIR pos1-5 pos1-6 dir-right)
    (MOVE-DIR pos1-5 pos2-5 dir-down)
    (MOVE-DIR pos1-5 pos0-5 dir-up)
    (MOVE-DIR pos1-6 pos1-5 dir-left)
    (MOVE-DIR pos1-6 pos0-6 dir-up)
    (MOVE-DIR pos1-8 pos2-8 dir-down)
    (MOVE-DIR pos1-8 pos0-8 dir-up)
    (MOVE-DIR pos1-10 pos2-10 dir-down)
    (MOVE-DIR pos1-10 pos0-10 dir-up)
    (MOVE-DIR pos1-12 pos2-12 dir-down)
    (MOVE-DIR pos1-12 pos0-12 dir-up)
    (MOVE-DIR pos2-0 pos1-0 dir-up)
    (MOVE-DIR pos2-0 pos2-1 dir-right)
    (MOVE-DIR pos2-0 pos3-0 dir-down)
    (MOVE-DIR pos2-1 pos2-0 dir-left)
    (MOVE-DIR pos2-1 pos2-2 dir-right)
    (MOVE-DIR pos2-2 pos2-1 dir-left)
    (MOVE-DIR pos2-2 pos3-2 dir-down)
    (MOVE-DIR pos2-2 pos1-2 dir-up)
    (MOVE-DIR pos2-5 pos3-5 dir-down)
    (MOVE-DIR pos2-5 pos1-5 dir-up)
    (MOVE-DIR pos2-8 pos2-9 dir-right)
    (MOVE-DIR pos2-8 pos3-8 dir-down)
    (MOVE-DIR pos2-8 pos1-8 dir-up)
    (MOVE-DIR pos2-9 pos2-8 dir-left)
    (MOVE-DIR pos2-9 pos2-10 dir-right)
    (MOVE-DIR pos2-9 pos3-9 dir-down)
    (MOVE-DIR pos2-10 pos2-9 dir-left)
    (MOVE-DIR pos2-10 pos2-11 dir-right)
    (MOVE-DIR pos2-10 pos3-10 dir-down)
    (MOVE-DIR pos2-10 pos1-10 dir-up)
    (MOVE-DIR pos2-11 pos2-10 dir-left)
    (MOVE-DIR pos2-11 pos2-12 dir-right)
    (MOVE-DIR pos2-12 pos2-11 dir-left)
    (MOVE-DIR pos2-12 pos1-12 dir-up)
    (MOVE-DIR pos3-0 pos2-0 dir-up)
    (MOVE-DIR pos3-0 pos4-0 dir-down)
    (MOVE-DIR pos3-2 pos4-2 dir-down)
    (MOVE-DIR pos3-2 pos2-2 dir-up)
    (MOVE-DIR pos3-4 pos3-5 dir-right)
    (MOVE-DIR pos3-4 pos4-4 dir-down)
    (MOVE-DIR pos3-5 pos3-4 dir-left)
    (MOVE-DIR pos3-5 pos4-5 dir-down)
    (MOVE-DIR pos3-5 pos2-5 dir-up)
    (MOVE-DIR pos3-7 pos3-8 dir-right)
    (MOVE-DIR pos3-7 pos4-7 dir-down)
    (MOVE-DIR pos3-8 pos3-7 dir-left)
    (MOVE-DIR pos3-8 pos3-9 dir-right)
    (MOVE-DIR pos3-8 pos4-8 dir-down)
    (MOVE-DIR pos3-8 pos2-8 dir-up)
    (MOVE-DIR pos3-9 pos3-8 dir-left)
    (MOVE-DIR pos3-9 pos3-10 dir-right)
    (MOVE-DIR pos3-9 pos4-9 dir-down)
    (MOVE-DIR pos3-9 pos2-9 dir-up)
    (MOVE-DIR pos3-10 pos3-9 dir-left)
    (MOVE-DIR pos3-10 pos4-10 dir-down)
    (MOVE-DIR pos3-10 pos2-10 dir-up)
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
    (MOVE-DIR pos4-5 pos3-5 dir-up)
    (MOVE-DIR pos4-7 pos4-8 dir-right)
    (MOVE-DIR pos4-7 pos3-7 dir-up)
    (MOVE-DIR pos4-8 pos4-7 dir-left)
    (MOVE-DIR pos4-8 pos4-9 dir-right)
    (MOVE-DIR pos4-8 pos3-8 dir-up)
    (MOVE-DIR pos4-9 pos4-8 dir-left)
    (MOVE-DIR pos4-9 pos4-10 dir-right)
    (MOVE-DIR pos4-9 pos3-9 dir-up)
    (MOVE-DIR pos4-10 pos4-9 dir-left)
    (MOVE-DIR pos4-10 pos3-10 dir-up)
    (thinsnake pos1-6)
    (blocked pos1-6)
    (ispoint pos0-0)
    (ispoint pos0-1)
    (ispoint pos0-2)
    (ispoint pos0-4)
    (ispoint pos0-7)
    (ispoint pos0-8)
    (ispoint pos0-9)
    (ispoint pos1-3)
    (ispoint pos1-5)
    (ispoint pos1-8)
    (ispoint pos2-0)
    (ispoint pos2-1)
    (ispoint pos2-5)
    (ispoint pos3-4)
    (ispoint pos4-0)
    (ispoint pos4-1)
    (ispoint pos4-2)
    (ispoint pos4-5)
    (isbox pos0-3)
    (isbox pos2-2)
    (isbox pos2-9)
    (isbox pos2-10)
    (isbox pos2-11)
    (isbox pos4-3)
)
(:goal
(and
    (not (ispoint pos0-0))
    (not (ispoint pos0-1))
    (not (ispoint pos0-2))
    (not (ispoint pos0-4))
    (not (ispoint pos0-7))
    (not (ispoint pos0-8))
    (not (ispoint pos0-9))
    (not (ispoint pos1-3))
    (not (ispoint pos1-5))
    (not (ispoint pos1-8))
    (not (ispoint pos2-0))
    (not (ispoint pos2-1))
    (not (ispoint pos2-5))
    (not (ispoint pos3-4))
    (not (ispoint pos4-0))
    (not (ispoint pos4-1))
    (not (ispoint pos4-2))
    (not (ispoint pos4-5))
)
)
)
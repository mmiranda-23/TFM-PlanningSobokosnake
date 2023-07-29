(define (domain sobokosnake)
(:requirements :typing :negative-preconditions)
(:types location direction - object)
(:predicates
    ;up down left right of a field
    (MOVE-DIR ?x ?y - location ?dir - direction)

    (thinsnake ?x - location)
    ;the last field of the snake
    (tailsnake ?x - location)
    ;the first field of the snake
    (headsnake ?x - location)
    ;pieces of the snake that are connected. from front to back
    (nextsnake ?x ?y - location)
    ;a field that is occupied by the snake or by an obstacle
    (blocked ?x - location)
    ;a field that has a point that can be collected by the snake
    (ispoint ?x - location)
    (isbox ?x - location)
)

(:action move-thin-snake
    :parameters (?oldposition ?newposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (not (blocked ?newposition))
        (not (ispoint ?newposition))
        (not (isbox ?newposition))
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
    )
)
(:action move-thin-snake-and-box
    :parameters (?oldposition ?newposition ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?oldposition)
        (MOVE-DIR ?oldposition ?newposition ?dir)
        (MOVE-DIR ?newposition ?newboxposition ?dir)
        (not (blocked ?newposition))
        (not (ispoint ?newposition))
        (isbox ?newposition)
    )
    :effect
    (and
        (thinsnake ?newposition)
        (blocked ?newposition)
        (not (thinsnake ?oldposition))
        (not (blocked ?oldposition))
        (not (isbox ?newposition))
        (isbox ?newboxposition)
    )
)
(:action move-and-first-eat
    :parameters (?position ?newhead - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (MOVE-DIR ?position ?newhead ?dir)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (tailsnake ?position)
        (nextsnake ?newhead ?position)
        (not (ispoint ?newhead))
        (not (thinsnake ?position))
    )
)
(:action move-box-and-first-eat
    :parameters (?position ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (thinsnake ?position)
        (MOVE-DIR ?position ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (isbox ?newhead)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (tailsnake ?position)
        (nextsnake ?newhead ?position)
        (not (ispoint ?newhead))
        (not (thinsnake ?position))
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
(:action move-fat-snake
    :parameters (?head ?newhead ?tail ?newtail - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
    )
)
(:action move-fat-snake-and-box
    :parameters (?head ?newhead ?tail ?newtail ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
        (isbox ?newhead)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
(:action move-and-eat
    :parameters (?head ?newhead - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (not (isbox ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
    )
)
(:action move-box-and-eat
    :parameters (?head ?newhead ?newboxposition - location ?dir - direction)
    :precondition
    (and
        (not (thinsnake ?head))
        (headsnake ?head)
        (MOVE-DIR ?head ?newhead ?dir)
        (MOVE-DIR ?newhead ?newboxposition ?dir)
        (not (blocked ?newboxposition))
        (ispoint ?newhead)
        (isbox ?newhead)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
        (not (isbox ?newhead))
        (isbox ?newboxposition)
    )
)
)
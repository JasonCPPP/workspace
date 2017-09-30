background_image_filename = 'sushiplate.jpg'
sprite_image_filename = 'fugu.png'

import pygame
from pygame.locals import *
from sys import exit
from vector2d import vector2d
from math import *
import time
pygame.init()
screen = pygame.display.set_mode((640, 480), 0, 32)

background = pygame.image.load(background_image_filename).convert()
sprite = pygame.image.load(sprite_image_filename).convert_alpha()
clock = pygame.time.Clock()
sprite_pos = vector2d(0, 0)
sprite_speed = 0
cou=1
last_time =time.clock()
while True:

    for event in pygame.event.get():
        if event.type == QUIT:
            exit()

    pressed_keys = pygame.key.get_pressed()
    t =cou
    a=0
    if pressed_keys[K_w]:
        now__time =time.clock()
        if (now__time-last_time>1):
            sprite_speed=(50*t)
            sprite_speed= min(200,sprite_speed)
            if (now__time-last_time<2):
                cou+=1
            else :
                cou =max(1,cou-1)
            last_time=now__time
            a=1
    screen.blit(background, (0,0))
    w, h = sprite.get_size()
    sprite_draw_pos = vector2d(sprite_pos.x, sprite_pos.y)
    screen.blit(sprite, sprite_draw_pos)

    time_passed = clock.tick()
    time_passed_seconds = time_passed / 1000.0

    heading = vector2d((2*sprite_speed-20*time_passed_seconds*t)*time_passed_seconds/2, 0)
    sprite_speed-=20*time_passed_seconds
    sprite_pos+= heading
    if sprite_pos.x<0:
        sprite_pos.x=0
        sprite_speed=0
    if sprite_pos.x>400:
        sprite_pos.x=400
        sprite_speed=-sprite_speed
    pygame.display.update()

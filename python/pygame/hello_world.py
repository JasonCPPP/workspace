#!/usr/bin/env python

background_image_filename = 'sushiplate.jpg'
mouse_image_filename = 'fugu.png'

import pygame
from pygame.locals import *
from sys import exit

pygame.init()

screen = pygame.display.set_mode((640,480),0,32)  # 第一个参数是分辨路，第二个参数是显示模式，第三个是色深

pygame.display.set_caption("hello world")

background = pygame.image.load(background_image_filename).convert() # 转化成surface对象，

mouse_cursor = pygame.image.load(mouse_image_filename).convert_alpha()  # 保留Alpha 通道

while True:
    for event in pygame.event.get():
        if event.type==QUIT:
            exit()
    screen.blit(background,(0,0))
    x,y=pygame.mouse.get_pos()
    x-=mouse_cursor.get_width()/2
    y-=mouse_cursor.get_height()/2
    screen.blit(mouse_cursor,(x,y))
    pygame.display.update()

background_image_filename = 'sushiplate.jpg'
sprite_image_filename = 'fugu.png'

import pygame
from pygame.locals import *
from sys import exit
from vector2d import vector2d

pygame.init()

def from_points(vector0,vector1):
    return vector2d(vector1.x-vector0.x,vector1.y-vector0.y)   # 自己写的，应该糅合到库中。

screen = pygame.display.set_mode((640, 480), 0, 32)

background = pygame.image.load(background_image_filename).convert()

sprite = pygame.image.load(sprite_image_filename).convert_alpha()

clock = pygame.time.Clock()

position = vector2d(100.0, 100.0)

heading = vector2d()

while True:

    for event in pygame.event.get():
        if event.type == QUIT:
            exit()

    screen.blit(background, (0,0))
    screen.blit(sprite, position)

    time_passed = clock.tick()
    time_passed_seconds = time_passed / 1000.0
    # 参数前面加*意味着把列表或元组展开

    destination = vector2d( *pygame.mouse.get_pos() ) - vector2d( *sprite.get_size() )/2

    # 计算鱼儿当前位置到鼠标位置的向量
    vector_to_mouse = from_points(position, destination)
    # 向量规格化
    length = vector_to_mouse.get_length()
    vector_to_mouse.normalized()





    # 这个heading可以看做是鱼的速度，但是由于这样的运算，鱼的速度就不断改变了
    # 在没有到达鼠标时，加速运动，超过以后则减速。因而鱼会在鼠标附近晃动。
    heading = (vector_to_mouse * length*0.1)
    position += heading * time_passed_seconds*0.3
    pygame.display.update()

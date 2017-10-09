import pygame 
from pygame.locals import *
from sys import exit
from vector2d import vector2d
from random import randint
class ball:

    def __init__(self, pos, size, speed, color):
        self.pos = pos
        self.size = size
        self.speed = speed
        self.color = color 
        self.init_pos = vector2d(pos)
    def render(self,screen):
        
        pygame.draw.line(screen,self.color,self.pos,self.pos+1,1)
    
    def update(self,time):
        self.speed*=0.8
        self.pos.x+=int(float(self.speed.x)*time)
        self.pos.y+=int(float(self.speed.y)*time)
        self.speed.y = min(self.speed.y+time*3,30);
        if self.speed.x>0:
            self.speed-=1
        elif self.speed.x<0:
            self.speed+=1

    


pygame.init()
screen = pygame.display.set_mode((640,480),0,32)
clock = pygame.time.Clock()
balls =[]
a =1

def dele(ball):
    #print (ball.pos.get_distance(ball.init_pos))
    if ball.pos.get_distance(ball.init_pos)>randint(50,120):
        return False
    else: return True 
while True:
    screen.fill((0,0,0))
    
    events = pygame.event.get()
    for event in events:
        if event.type == QUIT:
            exit()

        if event.type == MOUSEBUTTONDOWN  and a:
            pos = pygame.mouse.get_pos()
            for i in range(100):
                balls.append(ball(vector2d(pos),1,vector2d((randint(-20,20),randint(-30,1))),(randint(0,255),randint(0,255),randint(0,255))))
            #a = 0
    
    time = clock.tick(20)

    for each in balls:
        each.update(1)
        each.render(screen)
    balls = [ball for ball in balls if dele(ball)]
    pygame.display.update()



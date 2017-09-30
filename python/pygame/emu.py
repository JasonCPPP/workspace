from pygame.locals import *
import pygame
import random
import sys
pygame.init()
import time
screen = pygame.display.set_mode((800, 540), 0, 32)
a = 0
b = 100001
times=2
class people:
    def __init__(self,money=100,num=0):
        self.money = money
        self.color = (random.randint(1,255), random.randint(1,255), random.randint(1,255))
        self.number = num
    def draw_r(self,surface):
        global times
        pygame.draw.rect(surface,self.color,Rect((400,self.number*5),(self.money*times,2.5)))
    def draw(self,surface):
        global times
        if (times*a>400):times = times/2
        pygame.draw.rect(surface,self.color,Rect((0,self.number*5),(self.money*times,2.5)))
peoples=[]

for i in range(0,100):
    peoples.append(people(100,i));

font = pygame.font.SysFont("youyuan", 40)
clock = pygame.time.Clock()
last_time =time.clock()
loop =0;
while True:
    screen.fill((0, 0, 0))
    for event in pygame.event.get():
        if event.type== QUIT:
            sys.exit()
    peoples = [people for people in peoples if people.money>0]
    for i in range(0,len(peoples)):
            peoples[i].money-=1;
            to_man = random.randint(0,len(peoples)-1);
            peoples[to_man].money+=1;

    for i in range(0,len(peoples)):
        peoples[i].draw(screen)
    another = []
    for aa in peoples:

        another.append(people(aa.money,aa.number))

    another = sorted(another,key=lambda p:p.money,reverse=True)
    for i in range(0,len(another)):
        another[i].number = i
        another[i].draw_r(screen)

    white = (255,255,255)
    a = 0
    b = 100001 
    for each in peoples:
        if (each.money>a): a = each.money
        if (each.money<b): b = each.money
    loop +=1
    text = "max="+str(a) + "min=" + str(b) +"number:" + str(len(peoples))+ "loop:" + str(loop)


    surface = font.render(text, True, (100, 0, 100))
    screen.blit(surface, (0, 500))
    last_time = time.clock()
    clock.tick(50)
    pygame.display.update()

# 导入相应的模块
import pygame
from pygame.locals import *
import time, random


class HeroPlane:
    '''玩家飞机（英雄）'''

    def __init__(self, screen_temp):
        self.x = 200
        self.y = 400
        self.screen = screen_temp
        self.image = pygame.image.load("./images/me.png")
        self.bullet_list = []  # 用于存放玩家的子弹列表

    def display(self):
        '''绘制玩家飞机'''
        # 绘制子弹
        for b in self.bullet_list:
            b.display()
            if b.move():
                self.bullet_list.remove(b)
        self.screen.blit(self.image, (self.x, self.y))

    def move_left(self):
        '''左移动飞机'''
        self.x -= 5
        if self.x <= 0:
            self.x = 0

    def move_right(self):
        '''右移动飞机'''
        self.x += 5
        if self.x >= 406:
            self.x = 406

            # 遍历所有子弹,并执行碰撞检测
            for ebo in EnemyPlane.enebullet_list:
                if ebo.x > self.x + 12 and ebo.x < self.x + 92 and ebo.y > self.y + 20 and ebo.y < self.y + 60:
                    EnemyPlane.enebullet_list.remove(ebo)
                    return True

    def fire(self):
        self.bullet_list.append(Bullet(self.screen, self.x, self.y))
        print(len(self.bullet_list))


class Bullet:
    '''子弹类'''

    def __init__(self, screen_temp, x, y):
        self.x = x + 17
        self.y = y
        self.screen = screen_temp
        self.image = pygame.image.load("./images/pd.png")

    def display(self):
        '''绘制子弹'''
        self.screen.blit(self.image, (self.x, self.y))

    def move(self):
        self.y -= 10
        if self.y <= -20:
            return True


class EnemyPlane:
    '''敌机类'''

    def __init__(self, screen_temp):
        self.x = random.choice(range(408))
        self.y = -75
        self.screen = screen_temp
        self.image = pygame.image.load("./images/e" + str(random.choice(range(3))) + ".png")
        self.enebullet_list = []  # 用于存放敌机的子弹列表

    def display(self):
        '''绘制敌机'''
        # 绘制子弹
        for eb in self.enebullet_list:
            eb.display()
            if eb.move():
                self.enebullet_list.remove(eb)
        self.screen.blit(self.image, (self.x, self.y))

    def move(self, hero):
        self.y += 4
        # 敌机出屏幕
        if self.y > 568:
            return True

        # 遍历所有子弹,并执行碰撞检测
        for bo in hero.bullet_list:
            if bo.x > self.x + 12 and bo.x < self.x + 92 and bo.y > self.y + 20 and bo.y < self.y + 60:
                hero.bullet_list.remove(bo)
                return True

    def fire(self):
        self.enebullet_list.append(Ebullet(self.screen, self.x, self.y))
        print(len(self.enebullet_list))


class Ebullet:
    '''敌弹类'''

    def __init__(self, screen_temp, x, y):
        self.x = x + 53
        self.y = y
        self.screen = screen_temp
        self.image = pygame.image.load("./images/pd.png")

    def display(self):
        '''绘制敌弹'''
        self.screen.blit(self.image, (self.x, self.y))

    def move(self):
        self.y += 5
        if self.y >= 20:
            return True


def cpu_auto(self):
    self.fire()


def key_control(hero_temp):
    '''键盘控制函数'''
    # 执行退出操作
    for event in pygame.event.get():
        if event.type == QUIT:
            print("exit()")
            exit()

    # 获取按键信息
    pressed_keys = pygame.key.get_pressed()
    # print(pressed_keys)
    # 做判断，并执行对象的操作
    if pressed_keys[K_LEFT] or pressed_keys[K_a]:
        print("Left...")
        hero_temp.move_left()

    elif pressed_keys[K_RIGHT] or pressed_keys[K_d]:
        print("Right...")
        hero_temp.move_right()

    if pressed_keys[K_SPACE]:
        print("space...")
        hero_temp.fire()

class bomb():
    def __init__(self, screen):
        self.screen = screen
        self.mImage =[pygame.image.load("./images/boom."+str(v)+"png")for v in range (0, 5)]

def main():
    '''主程序函数 '''
    # 初始化pygame，为使用硬件做准备
    pygame.init()
    # 创建游戏窗口：set_mode(分辨率=(0,0),标志=0,深度=0)
    screen = pygame.display.set_mode((512, 568), 0, 0)
    pygame.display.set_caption('STONE FREE')
    # 创建游戏时钟对象
    clock = pygame.time.Clock()
    # 创建一个游戏背景
    background = pygame.image.load("./images/bg2.jpg")

    # 创建玩家飞机（英雄）
    hero = HeroPlane(screen)

    m = -968
    enemylist = []  # 存放敌机的列表
    while True:
        # 绘制画面
        screen.blit(background, (0, m))
        m += 2
        if m >= -200:
            m = -968

        # 绘制玩家飞机
        hero.display()

        # 执行键盘控制
        key_control(hero)

        # 随机绘制敌机
        if random.choice(range(50)) == 10:
            enemylist.append(EnemyPlane(screen))
        # 遍历敌机并绘制移动
        for em in enemylist:
            em.display()
            if em.move(hero):
                enemylist.remove(em)
                map(bomb, enemylist)
        # 执行键盘控制
        map(cpu_auto, enemylist)

        # 更新显示
        pygame.display.update()

        # 设置屏幕刷新帧率
        clock.tick(60)


# 判断当前是否是主运行程序，并调用
if __name__ == "__main__":
    main()

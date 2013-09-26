"""
Borg Pattern != Singleton Pattern

It’s NOT a singleton object… it doesn’t NEED to be! This is a completely and deeply different pattern from Singleton, and thus I find the latest comment totally off-base. Singleton focuses (wrongly) on object IDENTITY: that’s what the Gof4 focuses on, that’s what “EffC++” focuses on, etc, etc. But we don’t really care about identity most of the time, but about state and behavior.

link1: http://mitnk.com/94/singleton_design_pattern_in_python
link2: http://code.activestate.com/recipes/66531/
"""

class Borg:
    __shared_state = {}
    def __init__(self):
        self.__dict__ = self.__shared_state

    def __str__(self):
        return self.state

class YourBorg(Borg):
    pass

if __name__ == '__main__':
    rm1 = Borg()
    rm2 = Borg()

    rm1.state = 'Idle'
    rm2.state = 'Running'

    print('rm1:', rm1)
    print('rm2:', rm2)

    rm2.state = 'Zombie'

    print('rm1:', rm1)
    print('rm2:', rm2)

    print('rm1 id:', id(rm1))
    print('rm2 id:', id(rm2))

    rm3 = YourBorg()

    print('rm1:', rm1)
    print('rm2:', rm2)
    print('rm3:', rm3)


# Author: Alex Butler (@lxbtlr)

# Converting Conway's GOL rules into a modular class structure


class Block:

    # Should be the modular "block" of the grid.

    def ___init___(self, inital, upperLeft = 0, upperTop = 0, upperRight = 0, midLeft = 0, midRight = 0, lowLeft = 0, lowBot = 0, lowRight = 0):
        self.currentState = inital    
        self.total = upperLeft + upperTop + upperRight + midLeft + midRight + lowLeft + lowBot + lowRight
        self.RULE = None
    
    def rule_one(total):
        if total < 2:
            self.currentState = 0
            self.RULE = "R1"

    def rule_two(total):
        if (total == 2 or total == 3) and self.currentState == 1:
            self.currentState = 1
            self.RULE = "R2"

    def rule_three(total):
        if total > 3:
            self.currentState = 0 
            self.RULE = "R3"

    def rule_four(total):
        if total == 3 and self.currentState == 0:
            self.currentState = 1
            self.RULE = "R4"

    def state():
        return self.currentState

    def update():
        rule_one()
        return state() if self.RULE !=None: 
        rule_two()
        return state() if self.RULE !=None: 
        rule_three()
        return state() if self.RULE !=None: 
        rule_four()
        return state() if self.RULE !=None else return "ERROR INVALID STATE": 

    def ___str___(self):
        print(self.currentState + ", " + self.RULE)    
    
    

# Author: Alex Butler (@lxbtlr)

# Converting Conway's GOL rules into a modular class structure


class Block:

    # Should be the modular "block" of the grid.

    def __init__(self, startState = 0, upperLeft = 0, upperTop = 0, upperRight = 0, midLeft = 0, midRight = 0, lowLeft = 0, lowBot = 0, lowRight = 0):
        self.currentState = startState    
        self.RULE = "None"

    def rule_one(self,total):
        if total < 2:
            self.currentState = 0
            self.RULE = "R1"

    def rule_two(self,total):
        if (total == 2 or total == 3) and self.currentState == 1:
            self.currentState = 1
            self.RULE = "R2"

    def rule_three(self,total):
        if total > 3:
            self.currentState = 0 
            self.RULE = "R3"

    def rule_four(self,total):
        if total == 3 and self.currentState == 0:
            self.currentState = 1
            self.RULE = "R4"

    def state(self):
        return self.currentState

    def update(self):
        self.total = upperLeft + upperTop + upperRight + midLeft + midRight + lowLeft + lowBot + lowRight
        rule_one()
        return state() if self.RULE != "None" else rule_two()
        return state() if self.RULE != "None" else rule_three()
        return state() if self.RULE != "None" else rule_four()
        return state() if self.RULE != "None" else print("ERROR INVALID STATE") 

    def __str__(self):
        return (str(self.currentState) + ", " + self.RULE)    
    
    

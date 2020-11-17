# Author: Alex Butler (@lxbtlr)

# Converting Conway's GOL rules into a modular class structure


class Block:

    # Should be the modular "block" of the grid.

    def __init__(self, startState = 0):
        self.currentState = startState 
        self.lastState = self.currentState

        self.RULE = "N "
        self.total = 0

    def rule_one(self):
        if self.total <= 1 and self.lastState == 1:
            self.currentState = 0
            self.RULE = "R1"

    def rule_two(self):
        if self.lastState == 1 and (self.total == 2 or self.total == 3):
            self.currentState = 1
            self.RULE = "R2"

    def rule_three(self):
        if self.total > 3 and self.lastState == 1:
            self.currentState = 0 
            self.RULE = "R3"

    def rule_four(self):
        if self.total == 3: #and self.lastState == 0:
            self.currentState = 1
            self.RULE = "R4"

    def newState(self):
        return self.currentState

    def oldState(self):
        return self.lastState

    def update(self, upperLeft = 0, upperTop = 0, upperRight = 0, midLeft = 0, midRight = 0, lowLeft = 0, lowBot = 0, lowRight = 0):
        self.RULE = "N "
        self.lastState = self.currentState
        self.total = upperLeft + upperTop + upperRight + midLeft + midRight + lowLeft + lowBot + lowRight
        # print(self.total, end= ' ')
        
        self.rule_one()
        self.rule_two()
        self.rule_three()
        self.rule_four()
        if self.RULE != "N ":
            return self.newState()
        else:
            #print("ERROR INVALID STATE")
            return 0


        # return self.newState() if self.RULE != "None" else self.rule_two()
        # return self.newState() if self.RULE != "None" else self.rule_three()
        # return self.newState() if self.RULE != "None" else self.rule_four()
        # return self.newState() if self.RULE != "None" else print("ERROR INVALID STATE") 

    def __str__(self):
        return (str(self.currentState)+ ", " + str(self.total)+ str(self.RULE)) 

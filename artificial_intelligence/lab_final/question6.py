class A:
    def setData(self,a, b):
        self.a = a
        self.b = b
    
    def printData(self):
        print("a=", self.a, " b=",self.b)

myObj = A()
myObj.setData(1,2)
myObj.printData()
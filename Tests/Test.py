
import robot
from robot.api.deco import library, keyword


@library
class Test:

    @keyword
    def this_is_keyword(self):
        print("Iam from custom keyword")

    @keyword('This is keyword with custom name')
    def my_keyword(self):
        pass

    def this_is_not_keyword(self):
        pass

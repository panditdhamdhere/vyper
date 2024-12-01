# pragma version 0.4.0
# @license MIT

my_favorite_number: public(uint256) #0
list_of_numbers: uint256[5] #[0,0,12,15]


#constructor
@deploy
def __init__():
    self.my_favorite_number = 7

@external
def store(new_number: uint256):
 self.my_favorite_number = new_number

@external
@view
def retrieve() -> uint256:
    return self.my_favorite_number

@external
def add_number(favorite_number: uint256):
    self.list_of_numbers[0] = favorite_number
userA = "Tim"
userB = userA
userA[0] = "J"

puts userA, userB

userA = "Tim"
userB = userA.dup
userA[0] = "J"

puts userA, userB

userA = "Tim"
userB = userA
userA = "Amy"

puts userA, userB

userA = "Tim"
userB = userA
userA.freeze
# userB[0] = "J"

# Variable reference

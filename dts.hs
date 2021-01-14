-- Laia Igelmo Amorós - Grup 11 LP

-- ######## START Data structures ######## --

-- Mushroom structure--

data Mushroom = Blank | Mushroom { 
    edible::Bool,
    cap_shape::String,
    cap_surface::String,
    cap_color::String,
    bruises::String,
    odor::String,
    gill_attachment::String,
    gill_spacing::String,
    gill_size::String,
    gill_color::String,
    stalk_shape::String,
    stalk_root::String,
    stalk_surface_above_ring::String,
    stalk_surface_below_ring::String,
    stalk_color_above_ring::String,
    stalk_color_below_ring::String,
    veil_type::String,
    veil_color::String,
    ring_number::String,
    ring_type::String,
    spore_print_color::String,
    population::String,
    habitat::String
} deriving (Show, Eq)

--All the check functions below are used to translate agaricus-lepiota.data into readible and meaningful strings.--

checkEdible::Char -> Bool
checkEdible c 
    | c == 'e' = True
    | otherwise = False

checkCapShape::Char -> String
checkCapShape c
    | c == 'b' = "Bell"
    | c == 'c' = "Conical"
    | c == 'x' = "Convex"
    | c == 'f' = "Flat"
    | c == 'k' = "Knobbed"
    | otherwise = "Sunken"

checkSurface::Char -> String
checkSurface c
    | c == 'f' = "Fibrous"
    | c == 'g' = "Grooves"
    | c == 'y' = "Scaly"
    | c == 'k' = "Silky"
    | otherwise = "Smooth"

checkColor::Char -> String
checkColor c
    | c == 'k' = "Black"
    | c == 'n' = "Brown"
    | c == 'b' = "Buff"
    | c == 'c' = "Cinnamon"
    | c == 'h' = "Chocolate"
    | c == 'g' = "Gray"
    | c == 'o' = "Orange"
    | c == 'r' = "Green"
    | c == 'p' = "Pink"
    | c == 'u' = "Purple"
    | c == 'e' = "Red"
    | c == 'w' = "White"
    | otherwise = "Yellow"

checkBruises::Char -> String
checkBruises c 
    | c == 't' = "True"
    | otherwise = "False"

checkOdor::Char -> String
checkOdor c
    | c == 'a' = "Almond"
    | c == 'l' = "Anise"
    | c == 'c' = "Creosote"
    | c == 'y' = "Fishy"
    | c == 'f' = "Foul"
    | c == 'm' = "Musty"
    | c == 'n' = "None"
    | c == 'p' = "Pungent"
    | otherwise = "Spicy"

checkGillAttach::Char -> String
checkGillAttach c
    | c == 'a' = "Attached"
    | c == 'd' = "Descending"
    | c == 'f' = "Free"
    | otherwise = "Notched"

checkGillSpacing::Char -> String
checkGillSpacing c
    | c == 'c' = "Close"
    | c == 'w' = "Crowded"
    | otherwise = "Distant"

checkGillSize::Char -> String
checkGillSize c
    | c == 'b' = "Broad"
    | otherwise = "Narrow"


checkStalkShape::Char -> String
checkStalkShape c
    | c == 'e' = "Enlarging"
    | otherwise = "Tapering"

checkStalkRoot::Char -> String
checkStalkRoot c
    | c == 'b' = "Bulbous"
    | c == 'c' = "Club"
    | c == 'u' = "Cup"
    | c == 'e' = "Equal"
    | c == 'z' = "Rhizmorphs"
    | c == 'r' = "Rooted"
    | otherwise = "Missing"

checkVeilType::Char -> String
checkVeilType c
    | c == 'p' = "Partial"
    | otherwise = "Universal"

checkRingNumber::Char -> String
checkRingNumber c
    | c == 'n' = "None"
    | c == 'o' = "One"
    | otherwise = "Two"

checkRingType::Char -> String
checkRingType c
    | c == 'c' = "Cobwebby"
    | c == 'e' = "Evanescent"
    | c == 'f' = "Flaring"
    | c == 'l' = "Large"
    | c == 'n' = "None"
    | c == 'p' = "Pendant"
    | c == 's' = "Sheathing"
    | otherwise = "Zone"    

checkPopulation::Char -> String
checkPopulation c
    | c == 'a' = "Abundant"
    | c == 'c' = "Clustered"
    | c == 'n' = "Numerous"
    | c == 's' = "Scattered"
    | c == 'v' = "Several"
    | otherwise = "Solitary"    

checkHabitat::Char -> String
checkHabitat c
    | c == 'g' = "Grasses"
    | c == 'l' = "Leaves"
    | c == 'm' = "Meadows"
    | c == 'p' = "Paths"
    | c == 'u' = "Urban"
    | c == 'w' = "Waste"
    | otherwise = "Woods"    


-- The createMushroom function is used to convert the mushroom data from the .data into a Mushroom structure. --

createMushroom::String -> Mushroom
createMushroom s = Mushroom{
    edible = checkEdible (s!!0),
    cap_shape = checkCapShape (s!!2),
    cap_surface = checkSurface (s!!4),
    cap_color = checkColor (s!!6),
    bruises = checkBruises (s!!8),
    odor = checkOdor (s!!10),
    gill_attachment = checkGillAttach (s!!12),
    gill_spacing = checkGillSpacing (s!!14),
    gill_size = checkGillSize (s!!16),
    gill_color = checkColor (s!!18),
    stalk_shape = checkStalkShape (s!!20),
    stalk_root = checkStalkRoot (s!!22),
    stalk_surface_above_ring = checkSurface (s!!24),
    stalk_surface_below_ring = checkSurface (s!!26),
    stalk_color_above_ring = checkColor (s!!28),
    stalk_color_below_ring = checkColor (s!!30),
    veil_type = checkVeilType (s!!32),
    veil_color = checkColor (s!!34),
    ring_number = checkRingNumber (s!!36),
    ring_type = checkRingType (s!!38),
    spore_print_color = checkColor (s!!40),
    population = checkPopulation (s!!42),
    habitat = checkHabitat (s!!44)
}

-- The createMushrooms function convert each line of the .data into a Mushroom type. The result is a list of Mushrooms
-- generated with the corresponding attributes. 

createMushrooms::[String] -> [Mushroom]
createMushrooms [] = []
createMushrooms (m:ms) = (createMushroom m):createMushrooms ms

-- Data structure of the decision tree. Could be an empty tree. Could be a leaf with a string. Could be a node with a 
-- string as the node name and a list of pairs (String, Tree), where the string is the label of the branch and tree the subtree
-- that is attached to that branch.

data Tree = Empty | Leaf String | Node String [(String, Tree)]

-- Creates a list of all the attributes that a mushroom can have. Each element of the list is a (Mushroom -> String, String)
-- because we need in some parts of the program the function mushroom -> string but we need to print the function name on the
-- tree.

listOfAttributes::[(Mushroom -> String, String)]
listOfAttributes = [(cap_shape, "cap_shape"), (cap_surface, "cap_surface"),(cap_color, "cap_color"), (bruises, "bruises"), (odor, "odor"), (gill_attachment, "gill_attachment"), (gill_spacing, "gill_spacing"), (gill_size, "gill_size"), (gill_color, "gill_color"), (stalk_shape, "stalk_shape"), (stalk_root, "stalk_root"), (stalk_surface_above_ring, "stalk_surface_above_ring"), (stalk_surface_below_ring, "stalk_surface_below_ring"), (stalk_color_above_ring, "stalk_color_above_ring"), (stalk_color_below_ring, "stalk_color_below_ring"), (veil_type, "veil_type"), (veil_color, "veil_color"), (ring_number, "ring_number"), (ring_type, "ring_type"), (spore_print_color, "spore_print_color"), (population, "population"), (habitat, "habitat")]

-- ######## END of the data structures ######## --




-- ######## START printing functions ######## --

-- We had to instanciate by hand the show class for the tree structure, since we wanted to print it in a readable form.
-- The print structure is simple, the padding is bigger as the tree level increases.

instance Show Tree where 
    show Empty = ""
    show (Leaf leaf) = leaf
    show (Node attribute list) = showNode "" attribute list

showNode::String -> String -> [(String, Tree)] -> String
showNode padding attribute list = padding ++ attribute ++ showBranches (padding ++ "  ") list

showTree::String -> Tree -> String
showTree _ Empty = ""
showTree padding (Leaf leaf) = "\n" ++ padding ++ leaf
showTree padding (Node attribute list) = "\n" ++ showNode padding attribute list

showBranches::String -> [(String, Tree)] -> String
showBranches _ [] = ""
showBranches padding (l:list) = "\n" ++ padding ++ fst l ++
                                 showTree newPadding (snd l) ++ 
                                 showBranches padding list  
    where newPadding = padding ++ "  "


-- ######## END printing functions ######## --




-- ######## START calculate accuracy of mushroom attributes ######## -- 

-- We want to calculate the accuracy of each attribute in order to start checking the attribute with most accuracy and accelerate
-- the prediction process:
-- In order to do so we have to chech for every attribute their accuracy, calculateAccuracyAttributes does this job: 

calculateAccuracyAttributes::[(Mushroom -> String, String)] -> [Mushroom] -> [((Mushroom -> String, String), Int)]
calculateAccuracyAttributes [] _ = []
calculateAccuracyAttributes (attr:attributes) m = ((attr, accur):(calculateAccuracyAttributes attributes m))
    where accur = totalAccuracy (fst attr) m (attributeValuesInMushrooms attr m)

-- We can calculate the accuracy of an attribute with totalAccuracy, for each possible value of the attribute calculates
-- the accuracy and adds the result to the total. When we have the sum of all the values accuracy we have the result.
-- This function is used on calculateAccuracyAttributes to calculate the accuracy of each attribute.

totalAccuracy::(Mushroom -> String) -> [Mushroom] -> [String] -> Int
totalAccuracy _ _ [] = 0
totalAccuracy f m (c:cs) = (max edib poison) + totalAccuracy f m cs
    where (edib, poison) = accuracy f m c

-- The accuracy of a value can be calculated with the function accuracy. The accuracy of a value is the
-- maximum between the number of edible mushrooms and the number of poisonous mushrooms with that value.

accuracy::(Mushroom -> String) -> [Mushroom] -> String -> (Int,Int)
accuracy _ [] _ = (0,0)
accuracy f (m:ms) c 
    | ((f m) == c) && (edible m) = (e+1, p) 
    | ((f m) == c) && not (edible m) = (e, p+1)
    | otherwise = accuracy f ms c
        where (e,p) = accuracy f ms c

-- ######## END calculate accuracy of mushroom attributes ######## --




-- ######## START Order list of attributes by accuracy ######## --

-- Once we have the accuracy of each attribute of a mushroom, we want to order the list by it in decreasing order.
-- We do this because we want to check first the values of the attribute with more accuracy, since
-- this can lead to a faster and more accurate resolution of the prediction, as mentioned before.  

orderAttributesbyAccuracy::[((Mushroom -> String, String), Int)] -> [((Mushroom -> String, String), Int)]
orderAttributesbyAccuracy accuracywithattributes = qSort accuracywithattributes

-- qSort and partition are the quicksort implementation used to order by accuracy the attribute list on the
-- function orderAttributesbyAccuracy.

qSort::[((Mushroom -> String, String), Int)] -> [((Mushroom -> String, String), Int)]
qSort [] = []
qSort (l:ls)
    | length (l:ls) <= 1 = (l:ls)
    | otherwise = qSort low ++ [l] ++ qSort high
        where (low, high) = partition ls l 

partition::[((Mushroom -> String, String), Int)] -> ((Mushroom -> String, String), Int) -> ([((Mushroom -> String, String), Int)],[((Mushroom -> String, String), Int)])
partition [] _ = ([],[])
partition (l:ls) pivot
    | (snd l) >= (snd pivot) = ((l:low), high)
    | otherwise = (low, (l:high))
        where (low, high) = partition ls pivot


-- ######## END Order list of attributes by accuracy ######## --
 



-- ######## START Build tree ######## --

-- In this function we prepare the necessary parameters to create the tree with the function createTree. In order to 
-- create the decision tree we need a list of mushrooms (listMushrooms) created with the .data information and a list 
-- of the attributes that we have on a mushroom ordered by accuracy.

readAndCreateTree::String -> Tree
readAndCreateTree content = tree
    where tree = createTree (map fst lOrderedAttributesByAccuracy) listMushrooms
          lOrderedAttributesByAccuracy = orderAttributesbyAccuracy (calculateAccuracyAttributes listOfAttributes listMushrooms) 
          listMushrooms = createMushrooms mushroomInfo
          mushroomInfo = words content 

-- This function (createTree) creates the decisional tree recursively.
-- The next (lower) level of the tree is the node attribute attached to the branch labeled as "other" of the current attribute.
-- The rest of the work is done by the "createAttributeTree" function that creates the attribute tree with the corresponding branches.
-- Also, in this function, en each recursive step, for each value that has a branch (each value that has a 100% accuracy) 
-- we are going to remove all the mushrooms that have this value from the list. After that, we recalculate the accuracy of every remaining 
-- attribute and reorder the list, since if we remove mushrooms from the list the accuracy of the attributes may change.

createTree::[((Mushroom -> String), String)] -> [Mushroom] -> Tree
createTree [] _ = Empty
createTree (attr:attributes) m = 
    Node name (reverse (("Other",otherAttributesTree):list))
    where otherAttributesTree = createTree reorderedAttributes filteredMushrooms
          reorderedAttributes = map fst reorderedAttributesWithAcc
          reorderedAttributesWithAcc = orderAttributesbyAccuracy (calculateAccuracyAttributes attributes filteredMushrooms) 
          filteredMushrooms = filter (\mushroom -> elem ((fst attr) mushroom) valueList) m
          valueList = map fst list
          (Node name list) = createAttributeTree attr m attributeValues 
          attributeValues = attributeValuesInMushrooms attr m

-- The function createAttributeTree is the one in charge of creating the tree for that attribute. In other words,
-- is the one that creates the node (attribute) with all the possible branches (values) that leads to an answer
-- (Poisonous/Edible) and the branch labeled as "Other" (for the values with not enough info to do a prediction)
-- that leads to the next attribute node. Uses the addValueToTree for each value the attribute can take.

createAttributeTree::((Mushroom -> String), String) -> [Mushroom] -> [String] -> Tree
createAttributeTree (_, attributeName) _ [] = (Node attributeName [])
createAttributeTree (attribute, attributeName) mushrooms (value:values) =
    addValueToTree attribute mushrooms value treeWithOtherValues
        where treeWithOtherValues = createAttributeTree (attribute, attributeName) mushrooms values
        

-- This function addValueToTree adds a branch (value) to the node (attribute) if the accuracy of this value is 100% Edible/Poisonous.
-- In other words, it's the function in charge of adding all the branches leading to a leaf (a successfull solution).

addValueToTree::(Mushroom -> String) -> [Mushroom] -> String -> Tree -> Tree
addValueToTree attribute mushrooms value tree
    | edib == 0 = addEdibilityLeaf "Poisonous" value tree
    | poison == 0 = addEdibilityLeaf "Edible" value tree
    | otherwise = tree
        where (edib, poison) = accuracy attribute mushrooms value

-- The function attributeValuesInMushrooms is used to search all the values an attribute can take. For example,
-- the attribute odor can take values fishy, almond, ..., this function takes the list of mushrooms and returns
-- all the possible values the attribute can take.

attributeValuesInMushrooms::((Mushroom -> String), String) -> [Mushroom] -> [String]
attributeValuesInMushrooms _ [] = []
attributeValuesInMushrooms attribute (m:ms)
    | not (elem attributeValue otherValues) = attributeValue:otherValues
    | otherwise = otherValues
        where otherValues = attributeValuesInMushrooms attribute ms
              attributeValue = (fst(attribute) m)

-- Everytime addValueToTree finds a value of an attribute that has 100% accuracy it means that this answer
-- it's going to lead to a prediction (Edible/Poisonous). We can create a new branch on the node (attribute)
-- labeled as the value that leads to a leaf.

addEdibilityLeaf::String -> String -> Tree -> Tree
addEdibilityLeaf edibility value (Node a l) = Node a ((value, Leaf edibility):l)

-- ######## END Build tree ######## --




-- ######## START Ask questions ######## --

-- askQuestions is the function used to print the questions, take the input answer of the user and print 
-- the resulting prediction.

askQuestions::Tree -> IO()
askQuestions Empty = putStrLn "Prediction: Don't know"
askQuestions (Leaf s) = putStrLn ("Prediction: "++s)
askQuestions (Node attribute list) = do
    let listValues = map fst list
    question <- putStrLn ("Which " ++ attribute ++ "? " ++ "Possible answers: " ++ show listValues)
    answer <- getLine
    let prediction = predict answer (Node attribute list)
    case prediction of
        Just text -> putStrLn ("Prediction: "++text)
        Nothing -> askQuestions (snd (last list))

-- The predict function takes the answer of the user for an attribute and searches if there is a branch with 
-- that label on the corresponding attribute level. 
--     - If there is no such branch, it means that this answer doesn't lead to an answer.
--     - If we end with an empty tree, it means that we have evaluated all the attributes of a mushroom and we couldn't find an answer.
--     - Otherwise, it means we have a branch that leads to a leaf, leading to an answer for the user.

predict::String -> Tree -> Maybe String
predict _ Empty = Just "Don't know"
predict _ (Leaf s) = Just s
predict answer (Node attribute l) =
    (searchTree answer l) >>= (predict answer)

-- The searchTree function is used to search on that attribute level if there is a branch with the value introduced by the user.
--      - If there's no such branch, means we have Nothing and we have to go further on the tree.
--      - Otherwise, if we find a branch with this label, then we return the prediction.
 
searchTree::String -> [(String, Tree)] -> Maybe Tree
searchTree _ [] = Nothing
searchTree s (e:l) 
    | s == fst e = Just (snd e)
    | otherwise = searchTree s l


-- ######## END Ask questions ######## --

-- Main --
main :: IO ()
main = do
    contents <- readFile "agaricus-lepiota.data"
    putStrLn "Generating a decisional tree, please wait... \n \n"
    let tree = readAndCreateTree contents
    putStrLn "Resulting tree below: \n \n"
    print tree
    putStrLn "Please, Enter your answers with the first letter in capital letter. \n Example: \n   Question: Which odor?  \n   Your answer: Almond \n \n"
    askQuestions tree

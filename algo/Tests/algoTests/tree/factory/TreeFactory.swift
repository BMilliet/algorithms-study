@testable import algo

struct TreeFactory {
    func makeBeverageTree() -> TreeNode<String> {
        let tree = TreeNode("Beverages")
        
        let hot = TreeNode("hot")
        let cold = TreeNode("cold")
        
        let tea = TreeNode("tea")
        let coffee = TreeNode("coffee")
        let chocolate = TreeNode("cocoa")
        
        let blackTea = TreeNode("black")
        let greenTea = TreeNode("green")
        let chaiTea = TreeNode("chai")
        
        let soda = TreeNode("soda")
        let milk = TreeNode("milk")
        
        let gingerAle = TreeNode("ginger ale")
        let bitterLemon = TreeNode("bitter lemon")
        
        tree.add(hot)
        tree.add(cold)
        
        hot.add(tea)
        hot.add(coffee)
        hot.add(chocolate)
        
        cold.add(soda)
        cold.add(milk)
        
        tea.add(blackTea)
        tea.add(greenTea)
        tea.add(chaiTea)
        
        soda.add(gingerAle)
        soda.add(bitterLemon)
        
        return tree
    }

    func makeNumbersTree() -> TreeNode<Int> {
        let tree = TreeNode(15)
        
        let n1 = TreeNode(1)
        let n17 = TreeNode(17)
        let n20 = TreeNode(20)

        let n11 = TreeNode(1)
        let n5 = TreeNode(5)
        let n0 = TreeNode(0)

        let n22 = TreeNode(2)

        let n52 = TreeNode(5)
        let n7 = TreeNode(7)

        tree.add(n1)
        tree.add(n17)
        tree.add(n20)

        n1.add(n11)
        n1.add(n5)
        n1.add(n0)

        n17.add(n22)

        n20.add(n52)
        n20.add(n7)

        return tree
    }

    func makeNumbersTree2() -> TreeNode<Int> {
        let tree = TreeNode(15)
        
        let n1 = TreeNode(1)
        let n17 = TreeNode(17)
        let n20 = TreeNode(20)

        let n11 = TreeNode(1)
        let n5 = TreeNode(5)
        let n0 = TreeNode(0)

        let n22 = TreeNode(2)

        let n52 = TreeNode(5)
        let n7 = TreeNode(7)

        let n40 = TreeNode(40)
        let n42 = TreeNode(42)

        tree.add(n1)
        tree.add(n17)
        tree.add(n20)

        n1.add(n11)
        n1.add(n5)
        n1.add(n0)

        n17.add(n22)

        n20.add(n52)
        n20.add(n7)

        n7.add(n40)
        n11.add(n42)

        return tree
    }
}

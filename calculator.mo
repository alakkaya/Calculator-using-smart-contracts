//canister -> smart contract
actor calculator {
    var cell : Int = 0;

    public func add(n : Int) : async Int {
        cell += n;
        cell
        //Debug.print(debug_show(cell));
    };

    public func subtraction(n : Int) : async Int {
        cell -= n;
        cell;
    };

    public func multiplication(n : Int) : async Int {
        cell *= n;
        cell;
    };

    public func division(n : Int) : async ?Int {
        if (n == 0) {
            null;
        } else {
            cell /= n;
            ?cell;
        };
    };

    public func clear() : async () {
        cell := 0;
    };
};

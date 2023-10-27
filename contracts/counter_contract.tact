import "@stdlib/deploy";

contract CounterContract with Deployable {
    val: Int as uint32; // to initialize the counter variable
    id: Int as uint32;
    init(id: Int){
        self.id = id;
        self.val = 0; // to initialize the counter variable with 0
    }

    // read function
    get fun counter(): Int {
        return self.val;
    }

    get fun id(): Int {
        return self.id;
    }

    // write function to write into blockchain

    receive("increment"){
        self.val = self.val + 1;
    }
}
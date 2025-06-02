// The 'hash' program.
program hash.aleo {

    transition compute(private preimage: field) -> private field {
        return Keccak256::hash_to_field(preimage);
    }

    transition prove(private preimage: field, public hash: field) -> public bool {
        return hash == Keccak256::hash_to_field(preimage);
    }

}

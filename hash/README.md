This is a prototypical application,
which proves knowledge of the preimage of a hash.
The hash is Keccak-256, with `field` input and output.

The private data is the preimage (a field element).
The public data is the hash (a field element).
The zero-knowledge proof says that
the hash is the result of applying Keccak-256 to the preimage.

The zero-knowledge proof is carried out by the `prove` transition.

The `compute` transition serves to calculate the hash of a given preimage,
which can then be fed, with the preimage, into the `prove` transition.

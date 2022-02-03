{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';
  inputs.src-BitVector-master.flake = false;
  inputs.src-BitVector-master.type = "github";
  inputs.src-BitVector-master.owner = "MarcAzar";
  inputs.src-BitVector-master.repo = "BitVector";
  inputs.src-BitVector-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-BitVector-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-BitVector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-BitVector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
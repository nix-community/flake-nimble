{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-BitVector-master.flake = false;
  inputs.src-BitVector-master.type = "github";
  inputs.src-BitVector-master.owner = "MarcAzar";
  inputs.src-BitVector-master.repo = "BitVector";
  inputs.src-BitVector-master.ref = "refs/heads/master";
  inputs.src-BitVector-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-BitVector-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-BitVector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-BitVector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
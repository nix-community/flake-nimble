{
  description = ''Pari/GP C library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pari-master".type = "github";
  inputs."pari-master".owner = "riinr";
  inputs."pari-master".repo = "flake-nimble";
  inputs."pari-master".ref = "flake-pinning";
  inputs."pari-master".dir = "nimpkgs/p/pari/master";
  inputs."pari-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pari-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
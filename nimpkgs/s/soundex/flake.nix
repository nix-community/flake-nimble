{
  description = ''soundex algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."soundex-master".type = "github";
  inputs."soundex-master".owner = "riinr";
  inputs."soundex-master".repo = "flake-nimble";
  inputs."soundex-master".ref = "flake-pinning";
  inputs."soundex-master".dir = "nimpkgs/s/soundex/master";
  inputs."soundex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."soundex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
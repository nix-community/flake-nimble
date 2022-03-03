{
  description = ''Simple benchmarking to time your code.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."benchy-master".type = "github";
  inputs."benchy-master".owner = "riinr";
  inputs."benchy-master".repo = "flake-nimble";
  inputs."benchy-master".ref = "flake-pinning";
  inputs."benchy-master".dir = "nimpkgs/b/benchy/master";
  inputs."benchy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
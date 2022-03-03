{
  description = ''Luhn's Algorithm implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."luhny-master".type = "github";
  inputs."luhny-master".owner = "riinr";
  inputs."luhny-master".repo = "flake-nimble";
  inputs."luhny-master".ref = "flake-pinning";
  inputs."luhny-master".dir = "nimpkgs/l/luhny/master";
  inputs."luhny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."luhny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
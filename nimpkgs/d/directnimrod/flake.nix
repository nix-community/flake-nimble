{
  description = ''Wrapper for microsoft's DirectX libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."directnimrod-master".type = "github";
  inputs."directnimrod-master".owner = "riinr";
  inputs."directnimrod-master".repo = "flake-nimble";
  inputs."directnimrod-master".ref = "flake-pinning";
  inputs."directnimrod-master".dir = "nimpkgs/d/directnimrod/master";
  inputs."directnimrod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."directnimrod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
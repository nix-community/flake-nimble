{
  description = ''read & write subtitle files with sbttl'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sbttl-main".type = "github";
  inputs."sbttl-main".owner = "riinr";
  inputs."sbttl-main".repo = "flake-nimble";
  inputs."sbttl-main".ref = "flake-pinning";
  inputs."sbttl-main".dir = "nimpkgs/s/sbttl/main";
  inputs."sbttl-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sbttl-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
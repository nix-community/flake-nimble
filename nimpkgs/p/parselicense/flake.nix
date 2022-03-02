{
  description = ''Parse Standard SPDX Licenses from string to Enum'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."parselicense-master".type = "github";
  inputs."parselicense-master".owner = "riinr";
  inputs."parselicense-master".repo = "flake-nimble";
  inputs."parselicense-master".ref = "flake-pinning";
  inputs."parselicense-master".dir = "nimpkgs/p/parselicense/master";
  inputs."parselicense-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parselicense-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
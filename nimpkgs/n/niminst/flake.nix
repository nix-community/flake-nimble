{
  description = ''tool to generate installers for Nim programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."niminst-master".type = "github";
  inputs."niminst-master".owner = "riinr";
  inputs."niminst-master".repo = "flake-nimble";
  inputs."niminst-master".ref = "flake-pinning";
  inputs."niminst-master".dir = "nimpkgs/n/niminst/master";
  inputs."niminst-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."niminst-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
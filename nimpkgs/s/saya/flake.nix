{
  description = ''Nim framework for VK'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."saya-master".type = "github";
  inputs."saya-master".owner = "riinr";
  inputs."saya-master".repo = "flake-nimble";
  inputs."saya-master".ref = "flake-pinning";
  inputs."saya-master".dir = "nimpkgs/s/saya/master";
  inputs."saya-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."saya-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
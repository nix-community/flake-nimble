{
  description = ''Cross-platform process daemonization library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."daemon-master".type = "github";
  inputs."daemon-master".owner = "riinr";
  inputs."daemon-master".repo = "flake-nimble";
  inputs."daemon-master".ref = "flake-pinning";
  inputs."daemon-master".dir = "nimpkgs/d/daemon/master";
  inputs."daemon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."daemon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
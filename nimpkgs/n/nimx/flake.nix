{
  description = ''Cross-platform GUI framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimx-master".type = "github";
  inputs."nimx-master".owner = "riinr";
  inputs."nimx-master".repo = "flake-nimble";
  inputs."nimx-master".ref = "flake-pinning";
  inputs."nimx-master".dir = "nimpkgs/n/nimx/master";
  inputs."nimx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
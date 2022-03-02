{
  description = ''High-level wrapper for Linux's kmod library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kmod-master".type = "github";
  inputs."kmod-master".owner = "riinr";
  inputs."kmod-master".repo = "flake-nimble";
  inputs."kmod-master".ref = "flake-pinning";
  inputs."kmod-master".dir = "nimpkgs/k/kmod/master";
  inputs."kmod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kmod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
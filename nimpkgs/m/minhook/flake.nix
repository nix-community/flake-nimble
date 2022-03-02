{
  description = ''MinHook wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."minhook-main".type = "github";
  inputs."minhook-main".owner = "riinr";
  inputs."minhook-main".repo = "flake-nimble";
  inputs."minhook-main".ref = "flake-pinning";
  inputs."minhook-main".dir = "nimpkgs/m/minhook/main";
  inputs."minhook-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhook-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
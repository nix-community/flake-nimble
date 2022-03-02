{
  description = ''TwineMedia API client library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tm_client-main".type = "github";
  inputs."tm_client-main".owner = "riinr";
  inputs."tm_client-main".repo = "flake-nimble";
  inputs."tm_client-main".ref = "flake-pinning";
  inputs."tm_client-main".dir = "nimpkgs/t/tm_client/main";
  inputs."tm_client-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tm_client-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
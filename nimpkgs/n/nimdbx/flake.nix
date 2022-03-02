{
  description = ''Fast persistent key-value store, based on libmdbx'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimdbx-main".type = "github";
  inputs."nimdbx-main".owner = "riinr";
  inputs."nimdbx-main".repo = "flake-nimble";
  inputs."nimdbx-main".ref = "flake-pinning";
  inputs."nimdbx-main".dir = "nimpkgs/n/nimdbx/main";
  inputs."nimdbx-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdbx-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''TIC-80 bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tic80-master".type = "github";
  inputs."tic80-master".owner = "riinr";
  inputs."tic80-master".repo = "flake-nimble";
  inputs."tic80-master".ref = "flake-pinning";
  inputs."tic80-master".dir = "nimpkgs/t/tic80/master";
  inputs."tic80-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tic80-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
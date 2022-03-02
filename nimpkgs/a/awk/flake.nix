{
  description = ''Nim for awk programmers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."awk-master".type = "github";
  inputs."awk-master".owner = "riinr";
  inputs."awk-master".repo = "flake-nimble";
  inputs."awk-master".ref = "flake-pinning";
  inputs."awk-master".dir = "nimpkgs/a/awk/master";
  inputs."awk-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awk-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
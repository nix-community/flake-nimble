{
  description = ''this libraly able to use database/sql of Go'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."db_wrapper-master".type = "github";
  inputs."db_wrapper-master".owner = "riinr";
  inputs."db_wrapper-master".repo = "flake-nimble";
  inputs."db_wrapper-master".ref = "flake-pinning";
  inputs."db_wrapper-master".dir = "nimpkgs/d/db_wrapper/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
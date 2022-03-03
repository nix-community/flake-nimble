{
  description = ''AJAX wrapper for nim js backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ajax-master".type = "github";
  inputs."ajax-master".owner = "riinr";
  inputs."ajax-master".repo = "flake-nimble";
  inputs."ajax-master".ref = "flake-pinning";
  inputs."ajax-master".dir = "nimpkgs/a/ajax/master";
  inputs."ajax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ajax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
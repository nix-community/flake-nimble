{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gm_api-master".type = "github";
  inputs."gm_api-master".owner = "riinr";
  inputs."gm_api-master".repo = "flake-nimble";
  inputs."gm_api-master".ref = "flake-pinning";
  inputs."gm_api-master".dir = "nimpkgs/g/gm_api/master";
  inputs."gm_api-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gm_api-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
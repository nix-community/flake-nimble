{
  description = ''A component/entity system'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."entoody-master".type = "github";
  inputs."entoody-master".owner = "riinr";
  inputs."entoody-master".repo = "flake-nimble";
  inputs."entoody-master".ref = "flake-pinning";
  inputs."entoody-master".dir = "nimpkgs/e/entoody/master";
  inputs."entoody-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."entoody-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
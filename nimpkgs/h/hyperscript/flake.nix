{
  description = ''Create HyperText with Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."hyperscript-master".type = "github";
  inputs."hyperscript-master".owner = "riinr";
  inputs."hyperscript-master".repo = "flake-nimble";
  inputs."hyperscript-master".ref = "flake-pinning";
  inputs."hyperscript-master".dir = "nimpkgs/h/hyperscript/master";
  inputs."hyperscript-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."hyperscript-v0_1-alpha".type = "github";
  inputs."hyperscript-v0_1-alpha".owner = "riinr";
  inputs."hyperscript-v0_1-alpha".repo = "flake-nimble";
  inputs."hyperscript-v0_1-alpha".ref = "flake-pinning";
  inputs."hyperscript-v0_1-alpha".dir = "nimpkgs/h/hyperscript/v0_1-alpha";
  inputs."hyperscript-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hyperscript-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
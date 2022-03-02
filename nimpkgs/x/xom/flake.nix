{
  description = ''Transform XML trees into performant JavaScript DOM calls at compile-time.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xom-master".type = "github";
  inputs."xom-master".owner = "riinr";
  inputs."xom-master".repo = "flake-nimble";
  inputs."xom-master".ref = "flake-pinning";
  inputs."xom-master".dir = "nimpkgs/x/xom/master";
  inputs."xom-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xom-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."xom-v0_1-alpha".type = "github";
  inputs."xom-v0_1-alpha".owner = "riinr";
  inputs."xom-v0_1-alpha".repo = "flake-nimble";
  inputs."xom-v0_1-alpha".ref = "flake-pinning";
  inputs."xom-v0_1-alpha".dir = "nimpkgs/x/xom/v0_1-alpha";
  inputs."xom-v0_1-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xom-v0_1-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
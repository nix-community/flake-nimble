{
  description = ''Really lightweight template engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tim-main".type = "github";
  inputs."tim-main".owner = "riinr";
  inputs."tim-main".repo = "flake-nimble";
  inputs."tim-main".ref = "flake-pinning";
  inputs."tim-main".dir = "nimpkgs/t/tim/main";
  inputs."tim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''This is a xlsxio wrapper done Nim in mind.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."xlsxio-main".type = "github";
  inputs."xlsxio-main".owner = "riinr";
  inputs."xlsxio-main".repo = "flake-nimble";
  inputs."xlsxio-main".ref = "flake-pinning";
  inputs."xlsxio-main".dir = "nimpkgs/x/xlsxio/main";
  inputs."xlsxio-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsxio-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
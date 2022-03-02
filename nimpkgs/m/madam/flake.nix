{
  description = ''Local webserver for Design Prototyping and Front-end Development'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."madam-main".type = "github";
  inputs."madam-main".owner = "riinr";
  inputs."madam-main".repo = "flake-nimble";
  inputs."madam-main".ref = "flake-pinning";
  inputs."madam-main".dir = "nimpkgs/m/madam/main";
  inputs."madam-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."madam-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
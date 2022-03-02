{
  description = ''A static site generator written in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimatic-master".type = "github";
  inputs."nimatic-master".owner = "riinr";
  inputs."nimatic-master".repo = "flake-nimble";
  inputs."nimatic-master".ref = "flake-pinning";
  inputs."nimatic-master".dir = "nimpkgs/n/nimatic/master";
  inputs."nimatic-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimatic-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
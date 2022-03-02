{
  description = ''Functionality for compare two values'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."qeu-master".type = "github";
  inputs."qeu-master".owner = "riinr";
  inputs."qeu-master".repo = "flake-nimble";
  inputs."qeu-master".ref = "flake-pinning";
  inputs."qeu-master".dir = "nimpkgs/q/qeu/master";
  inputs."qeu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."qeu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''jieba's finalseg port to nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."finalseg-master".type = "github";
  inputs."finalseg-master".owner = "riinr";
  inputs."finalseg-master".repo = "flake-nimble";
  inputs."finalseg-master".ref = "flake-pinning";
  inputs."finalseg-master".dir = "nimpkgs/f/finalseg/master";
  inputs."finalseg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finalseg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
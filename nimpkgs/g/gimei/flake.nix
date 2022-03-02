{
  description = ''random Japanese name and address generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."gimei-master".type = "github";
  inputs."gimei-master".owner = "riinr";
  inputs."gimei-master".repo = "flake-nimble";
  inputs."gimei-master".ref = "flake-pinning";
  inputs."gimei-master".dir = "nimpkgs/g/gimei/master";
  inputs."gimei-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gimei-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
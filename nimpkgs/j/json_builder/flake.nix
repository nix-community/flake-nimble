{
  description = ''Easy and fast generator for valid json in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."json_builder-master".type = "github";
  inputs."json_builder-master".owner = "riinr";
  inputs."json_builder-master".repo = "flake-nimble";
  inputs."json_builder-master".ref = "flake-pinning";
  inputs."json_builder-master".dir = "nimpkgs/j/json_builder/master";
  inputs."json_builder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_builder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
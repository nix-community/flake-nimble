{
  description = ''Stupid simple YAML-like implementation from YAML to JsonNode'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nyml-main".type = "github";
  inputs."nyml-main".owner = "riinr";
  inputs."nyml-main".repo = "flake-nimble";
  inputs."nyml-main".ref = "flake-pinning";
  inputs."nyml-main".dir = "nimpkgs/n/nyml/main";
  inputs."nyml-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nyml-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
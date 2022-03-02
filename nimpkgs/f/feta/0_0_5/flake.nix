{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-feta-0_0_5.flake = false;
  inputs.src-feta-0_0_5.type = "github";
  inputs.src-feta-0_0_5.owner = "FlorianRauls";
  inputs.src-feta-0_0_5.repo = "office-DSL-thesis";
  inputs.src-feta-0_0_5.ref = "refs/tags/0.0.5";
  inputs.src-feta-0_0_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-feta-0_0_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-feta-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-feta-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
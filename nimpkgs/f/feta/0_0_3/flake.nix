{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-feta-0_0_3.flake = false;
  inputs.src-feta-0_0_3.type = "github";
  inputs.src-feta-0_0_3.owner = "FlorianRauls";
  inputs.src-feta-0_0_3.repo = "office-dsl-thesis";
  inputs.src-feta-0_0_3.ref = "refs/tags/0.0.3";
  
  
  inputs."mime".type = "github";
  inputs."mime".owner = "riinr";
  inputs."mime".repo = "flake-nimble";
  inputs."mime".ref = "flake-pinning";
  inputs."mime".dir = "nimpkgs/m/mime";

  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, flakeNimbleLib, src-feta-0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-feta-0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-feta-0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
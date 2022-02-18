{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-feta-0_0_12.flake = false;
  inputs.src-feta-0_0_12.type = "github";
  inputs.src-feta-0_0_12.owner = "FlorianRauls";
  inputs.src-feta-0_0_12.repo = "office-DSL-thesis";
  inputs.src-feta-0_0_12.ref = "refs/tags/0.0.12";
  
  
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

  
  inputs."googleapi".type = "github";
  inputs."googleapi".owner = "riinr";
  inputs."googleapi".repo = "flake-nimble";
  inputs."googleapi".ref = "flake-pinning";
  inputs."googleapi".dir = "nimpkgs/g/googleapi";

  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, flakeNimbleLib, src-feta-0_0_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-feta-0_0_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-feta-0_0_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
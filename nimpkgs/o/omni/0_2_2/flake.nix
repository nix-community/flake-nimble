{
  description = ''omni is a DSL for low-level audio programming.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-omni-0_2_2.flake = false;
  inputs.src-omni-0_2_2.type = "github";
  inputs.src-omni-0_2_2.owner = "vitreo12";
  inputs.src-omni-0_2_2.repo = "omni";
  inputs.src-omni-0_2_2.ref = "refs/tags/0.2.2";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-omni-0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omni-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-omni-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
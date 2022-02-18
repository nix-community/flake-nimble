{
  description = ''Shaders in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsl-v0_3.flake = false;
  inputs.src-nimsl-v0_3.type = "github";
  inputs.src-nimsl-v0_3.owner = "yglukhov";
  inputs.src-nimsl-v0_3.repo = "nimsl";
  inputs.src-nimsl-v0_3.ref = "refs/tags/v0.3";
  
  
  inputs."variant".type = "github";
  inputs."variant".owner = "riinr";
  inputs."variant".repo = "flake-nimble";
  inputs."variant".ref = "flake-pinning";
  inputs."variant".dir = "nimpkgs/v/variant";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsl-v0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsl-v0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-v0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
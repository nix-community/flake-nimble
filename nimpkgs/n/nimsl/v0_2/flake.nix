{
  description = ''Shaders in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsl-v0_2.flake = false;
  inputs.src-nimsl-v0_2.type = "github";
  inputs.src-nimsl-v0_2.owner = "yglukhov";
  inputs.src-nimsl-v0_2.repo = "nimsl";
  inputs.src-nimsl-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsl-v0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsl-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsl-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
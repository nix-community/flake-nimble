{
  description = ''libgit2 wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimgit2-v0_1_0.flake = false;
  inputs.src-nimgit2-v0_1_0.type = "github";
  inputs.src-nimgit2-v0_1_0.owner = "genotrance";
  inputs.src-nimgit2-v0_1_0.repo = "nimgit2";
  inputs.src-nimgit2-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgit2-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgit2-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgit2-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
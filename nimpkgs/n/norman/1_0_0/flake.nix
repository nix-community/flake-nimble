{
  description = ''Migration manager for Norm.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-norman-1_0_0.flake = false;
  inputs.src-norman-1_0_0.type = "github";
  inputs.src-norman-1_0_0.owner = "moigagoo";
  inputs.src-norman-1_0_0.repo = "norman";
  inputs.src-norman-1_0_0.ref = "refs/tags/1.0.0";
  
  
  inputs."norm".type = "github";
  inputs."norm".owner = "riinr";
  inputs."norm".repo = "flake-nimble";
  inputs."norm".ref = "flake-pinning";
  inputs."norm".dir = "nimpkgs/n/norm";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-norman-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norman-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-norman-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
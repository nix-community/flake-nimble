{
  description = ''rena is a tiny fire/directory renaming command.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-rena-v1_0_0.flake = false;
  inputs.src-rena-v1_0_0.type = "github";
  inputs.src-rena-v1_0_0.owner = "jiro4989";
  inputs.src-rena-v1_0_0.repo = "rena";
  inputs.src-rena-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rena-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rena-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rena-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
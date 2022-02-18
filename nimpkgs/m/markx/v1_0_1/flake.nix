{
  description = ''markx selects execution targets with editor and executes commands.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-markx-v1_0_1.flake = false;
  inputs.src-markx-v1_0_1.type = "github";
  inputs.src-markx-v1_0_1.owner = "jiro4989";
  inputs.src-markx-v1_0_1.repo = "markx";
  inputs.src-markx-v1_0_1.ref = "refs/tags/v1.0.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-markx-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-markx-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-markx-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sayhissatsuwaza-v0_5_0.flake = false;
  inputs.src-sayhissatsuwaza-v0_5_0.type = "github";
  inputs.src-sayhissatsuwaza-v0_5_0.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-v0_5_0.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-v0_5_0.ref = "refs/tags/v0.5.0";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sayhissatsuwaza-v0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-v0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sayhissatsuwaza-v0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
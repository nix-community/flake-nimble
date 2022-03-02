{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-sayhissatsuwaza-v0_7_0.flake = false;
  inputs.src-sayhissatsuwaza-v0_7_0.type = "github";
  inputs.src-sayhissatsuwaza-v0_7_0.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-v0_7_0.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-v0_7_0.ref = "refs/tags/v0.7.0";
  inputs.src-sayhissatsuwaza-v0_7_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."cligen".type = "github";
  # inputs."cligen".owner = "riinr";
  # inputs."cligen".repo = "flake-nimble";
  # inputs."cligen".ref = "flake-pinning";
  # inputs."cligen".dir = "nimpkgs/c/cligen";
  # inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sayhissatsuwaza-v0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sayhissatsuwaza-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A simple cross language struct and enum file generator.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-wings-v0_0_1-alpha.flake = false;
  inputs.src-wings-v0_0_1-alpha.type = "github";
  inputs.src-wings-v0_0_1-alpha.owner = "binhonglee";
  inputs.src-wings-v0_0_1-alpha.repo = "wings";
  inputs.src-wings-v0_0_1-alpha.ref = "refs/tags/v0.0.1-alpha";
  inputs.src-wings-v0_0_1-alpha.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-wings-v0_0_1-alpha, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wings-v0_0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wings-v0_0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
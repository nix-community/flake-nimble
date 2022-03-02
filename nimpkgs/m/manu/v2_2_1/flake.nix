{
  description = ''Matrix library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-manu-v2_2_1.flake = false;
  inputs.src-manu-v2_2_1.type = "github";
  inputs.src-manu-v2_2_1.owner = "planetis-m";
  inputs.src-manu-v2_2_1.repo = "manu";
  inputs.src-manu-v2_2_1.ref = "refs/tags/v2.2.1";
  inputs.src-manu-v2_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-manu-v2_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-manu-v2_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
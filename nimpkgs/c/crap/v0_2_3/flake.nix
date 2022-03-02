{
  description = ''`rm` files without fear'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-crap-v0_2_3.flake = false;
  inputs.src-crap-v0_2_3.type = "github";
  inputs.src-crap-v0_2_3.owner = "icyphox";
  inputs.src-crap-v0_2_3.repo = "crap";
  inputs.src-crap-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-crap-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-crap-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crap-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
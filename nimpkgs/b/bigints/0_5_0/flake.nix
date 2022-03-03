{
  description = ''Arbitrary-precision integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bigints-0_5_0.flake = false;
  inputs.src-bigints-0_5_0.type = "github";
  inputs.src-bigints-0_5_0.owner = "nim-lang";
  inputs.src-bigints-0_5_0.repo = "bigints";
  inputs.src-bigints-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-bigints-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bigints-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bigints-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
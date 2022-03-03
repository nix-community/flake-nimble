{
  description = ''Arbitrary-precision integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bigints-0_4_4.flake = false;
  inputs.src-bigints-0_4_4.type = "github";
  inputs.src-bigints-0_4_4.owner = "nim-lang";
  inputs.src-bigints-0_4_4.repo = "bigints";
  inputs.src-bigints-0_4_4.ref = "refs/tags/0.4.4";
  inputs.src-bigints-0_4_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bigints-0_4_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bigints-0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bigints-0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
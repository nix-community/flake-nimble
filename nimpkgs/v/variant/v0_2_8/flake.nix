{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-variant-v0_2_8.flake = false;
  inputs.src-variant-v0_2_8.type = "github";
  inputs.src-variant-v0_2_8.owner = "yglukhov";
  inputs.src-variant-v0_2_8.repo = "variant";
  inputs.src-variant-v0_2_8.ref = "refs/tags/v0.2.8";
  inputs.src-variant-v0_2_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
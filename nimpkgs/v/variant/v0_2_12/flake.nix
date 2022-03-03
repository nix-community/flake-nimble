{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-variant-v0_2_12.flake = false;
  inputs.src-variant-v0_2_12.type = "github";
  inputs.src-variant-v0_2_12.owner = "yglukhov";
  inputs.src-variant-v0_2_12.repo = "variant";
  inputs.src-variant-v0_2_12.ref = "refs/tags/v0.2.12";
  inputs.src-variant-v0_2_12.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_12, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
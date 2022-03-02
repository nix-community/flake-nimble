{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-variant-v0_2_6.flake = false;
  inputs.src-variant-v0_2_6.type = "github";
  inputs.src-variant-v0_2_6.owner = "yglukhov";
  inputs.src-variant-v0_2_6.repo = "variant";
  inputs.src-variant-v0_2_6.ref = "refs/tags/v0.2.6";
  inputs.src-variant-v0_2_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
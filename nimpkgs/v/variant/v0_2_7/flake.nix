{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-variant-v0_2_7.flake = false;
  inputs.src-variant-v0_2_7.type = "github";
  inputs.src-variant-v0_2_7.owner = "yglukhov";
  inputs.src-variant-v0_2_7.repo = "variant";
  inputs.src-variant-v0_2_7.ref = "refs/tags/v0.2.7";
  inputs.src-variant-v0_2_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
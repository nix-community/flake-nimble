{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-variant-v0_2_3.flake = false;
  inputs.src-variant-v0_2_3.type = "github";
  inputs.src-variant-v0_2_3.owner = "yglukhov";
  inputs.src-variant-v0_2_3.repo = "variant";
  inputs.src-variant-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
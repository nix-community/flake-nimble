{
  description = ''Variant type and type matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-variant-v0_2_4.flake = false;
  inputs.src-variant-v0_2_4.type = "github";
  inputs.src-variant-v0_2_4.owner = "yglukhov";
  inputs.src-variant-v0_2_4.repo = "variant";
  inputs.src-variant-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-variant-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variant-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-variant-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
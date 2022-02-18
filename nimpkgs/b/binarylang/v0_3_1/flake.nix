{
  description = ''Binary parser/encoder DSL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-binarylang-v0_3_1.flake = false;
  inputs.src-binarylang-v0_3_1.type = "github";
  inputs.src-binarylang-v0_3_1.owner = "sealmove";
  inputs.src-binarylang-v0_3_1.repo = "binarylang";
  inputs.src-binarylang-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, flakeNimbleLib, src-binarylang-v0_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-binarylang-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
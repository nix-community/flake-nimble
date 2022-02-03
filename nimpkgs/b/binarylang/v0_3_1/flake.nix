{
  description = ''Binary parser/encoder DSL'';
  inputs.src-binarylang-v0_3_1.flake = false;
  inputs.src-binarylang-v0_3_1.type = "github";
  inputs.src-binarylang-v0_3_1.owner = "sealmove";
  inputs.src-binarylang-v0_3_1.repo = "binarylang";
  inputs.src-binarylang-v0_3_1.ref = "refs/tags/v0.3.1";
  
  
  inputs."bitstreams".url = "path:../../../b/bitstreams";
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, src-binarylang-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binarylang-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
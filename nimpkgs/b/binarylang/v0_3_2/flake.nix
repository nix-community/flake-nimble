{
  description = ''Binary parser/encoder DSL'';
  inputs.src-binarylang-v0_3_2.flake = false;
  inputs.src-binarylang-v0_3_2.type = "github";
  inputs.src-binarylang-v0_3_2.owner = "sealmove";
  inputs.src-binarylang-v0_3_2.repo = "binarylang";
  inputs.src-binarylang-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
  inputs."bitstreams".url = "path:../../../b/bitstreams";
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, src-binarylang-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binarylang-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
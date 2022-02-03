{
  description = ''Binary parser/encoder DSL'';
  inputs.src-binarylang-v0_2_0.flake = false;
  inputs.src-binarylang-v0_2_0.type = "github";
  inputs.src-binarylang-v0_2_0.owner = "sealmove";
  inputs.src-binarylang-v0_2_0.repo = "binarylang";
  inputs.src-binarylang-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."bitstreams".url = "path:../../../b/bitstreams";
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, src-binarylang-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binarylang-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
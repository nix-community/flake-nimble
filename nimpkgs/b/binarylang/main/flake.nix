{
  description = ''Binary parser/encoder DSL'';
  inputs.src-binarylang-main.flake = false;
  inputs.src-binarylang-main.type = "github";
  inputs.src-binarylang-main.owner = "sealmove";
  inputs.src-binarylang-main.repo = "binarylang";
  inputs.src-binarylang-main.ref = "refs/heads/main";
  
  
  inputs."bitstreams".type = "github";
  inputs."bitstreams".owner = "riinr";
  inputs."bitstreams".repo = "flake-nimble";
  inputs."bitstreams".ref = "flake-pinning";
  inputs."bitstreams".dir = "nimpkgs/b/bitstreams";

  outputs = { self, nixpkgs, src-binarylang-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binarylang-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binarylang-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
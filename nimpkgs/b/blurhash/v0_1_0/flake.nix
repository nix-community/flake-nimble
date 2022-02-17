{
  description = ''Encoder/decoder for blurhash algorithm'';
  inputs.src-blurhash-v0_1_0.flake = false;
  inputs.src-blurhash-v0_1_0.type = "github";
  inputs.src-blurhash-v0_1_0.owner = "SolitudeSF";
  inputs.src-blurhash-v0_1_0.repo = "blurhash";
  inputs.src-blurhash-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."imageman".type = "github";
  inputs."imageman".owner = "riinr";
  inputs."imageman".repo = "flake-nimble";
  inputs."imageman".ref = "flake-pinning";
  inputs."imageman".dir = "nimpkgs/i/imageman";

  outputs = { self, nixpkgs, src-blurhash-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blurhash-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-blurhash-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
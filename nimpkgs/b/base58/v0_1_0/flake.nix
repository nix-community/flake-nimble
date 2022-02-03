{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';
  inputs.src-base58-v0_1_0.flake = false;
  inputs.src-base58-v0_1_0.type = "other";
  inputs.src-base58-v0_1_0.owner = "~ehmry";
  inputs.src-base58-v0_1_0.repo = "nim_base58";
  inputs.src-base58-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-base58-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base58-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base58-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
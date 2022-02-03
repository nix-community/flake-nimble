{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';
  inputs.src-base58-v0_1_1.flake = false;
  inputs.src-base58-v0_1_1.type = "other";
  inputs.src-base58-v0_1_1.owner = "~ehmry";
  inputs.src-base58-v0_1_1.repo = "nim_base58";
  inputs.src-base58-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-base58-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base58-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base58-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Base58 encoders and decoders for Bitcoin and CryptoNote addresses.'';
  inputs.src-base58-master.flake = false;
  inputs.src-base58-master.type = "other";
  inputs.src-base58-master.owner = "~ehmry";
  inputs.src-base58-master.repo = "nim_base58";
  inputs.src-base58-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-base58-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base58-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base58-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
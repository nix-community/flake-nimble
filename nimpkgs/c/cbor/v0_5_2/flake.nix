{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
  inputs.src-cbor-v0_5_2.flake = false;
  inputs.src-cbor-v0_5_2.type = "other";
  inputs.src-cbor-v0_5_2.owner = "~ehmry";
  inputs.src-cbor-v0_5_2.repo = "nim_cbor";
  inputs.src-cbor-v0_5_2.ref = "refs/tags/v0.5.2";
  
  outputs = { self, nixpkgs, src-cbor-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cbor-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
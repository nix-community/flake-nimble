{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
  inputs.src-cbor-v0_3_0.flake = false;
  inputs.src-cbor-v0_3_0.type = "other";
  inputs.src-cbor-v0_3_0.owner = "~ehmry";
  inputs.src-cbor-v0_3_0.repo = "nim_cbor";
  inputs.src-cbor-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-cbor-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cbor-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
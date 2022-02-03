{
  description = ''Concise Binary Object Representation decoder (RFC7049).'';
  inputs.src-cbor-staging.flake = false;
  inputs.src-cbor-staging.type = "other";
  inputs.src-cbor-staging.owner = "~ehmry";
  inputs.src-cbor-staging.repo = "nim_cbor";
  inputs.src-cbor-staging.ref = "refs/heads/staging";
  
  outputs = { self, nixpkgs, src-cbor-staging, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cbor-staging;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cbor-staging"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
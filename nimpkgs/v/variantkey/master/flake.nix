{
  description = ''encode/decode variants to/from uint64'';
  inputs.src-variantkey-master.flake = false;
  inputs.src-variantkey-master.type = "github";
  inputs.src-variantkey-master.owner = "brentp";
  inputs.src-variantkey-master.repo = "variantkey-nim";
  inputs.src-variantkey-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-variantkey-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-variantkey-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-variantkey-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
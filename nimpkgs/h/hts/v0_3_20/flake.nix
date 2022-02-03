{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_20.flake = false;
  inputs.src-hts-v0_3_20.type = "github";
  inputs.src-hts-v0_3_20.owner = "brentp";
  inputs.src-hts-v0_3_20.repo = "hts-nim";
  inputs.src-hts-v0_3_20.ref = "refs/tags/v0.3.20";
  
  outputs = { self, nixpkgs, src-hts-v0_3_20, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_20;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_20"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
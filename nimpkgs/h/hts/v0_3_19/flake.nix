{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_19.flake = false;
  inputs.src-hts-v0_3_19.type = "github";
  inputs.src-hts-v0_3_19.owner = "brentp";
  inputs.src-hts-v0_3_19.repo = "hts-nim";
  inputs.src-hts-v0_3_19.ref = "refs/tags/v0.3.19";
  
  outputs = { self, nixpkgs, src-hts-v0_3_19, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_19;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_19"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
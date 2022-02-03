{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_22.flake = false;
  inputs.src-hts-v0_2_22.type = "github";
  inputs.src-hts-v0_2_22.owner = "brentp";
  inputs.src-hts-v0_2_22.repo = "hts-nim";
  inputs.src-hts-v0_2_22.ref = "refs/tags/v0.2.22";
  
  outputs = { self, nixpkgs, src-hts-v0_2_22, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
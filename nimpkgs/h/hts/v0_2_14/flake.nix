{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_14.flake = false;
  inputs.src-hts-v0_2_14.type = "github";
  inputs.src-hts-v0_2_14.owner = "brentp";
  inputs.src-hts-v0_2_14.repo = "hts-nim";
  inputs.src-hts-v0_2_14.ref = "refs/tags/v0.2.14";
  
  outputs = { self, nixpkgs, src-hts-v0_2_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
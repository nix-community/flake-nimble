{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_13.flake = false;
  inputs.src-hts-v0_2_13.type = "github";
  inputs.src-hts-v0_2_13.owner = "brentp";
  inputs.src-hts-v0_2_13.repo = "hts-nim";
  inputs.src-hts-v0_2_13.ref = "refs/tags/v0.2.13";
  
  outputs = { self, nixpkgs, src-hts-v0_2_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
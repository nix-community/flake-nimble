{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_7.flake = false;
  inputs.src-hts-v0_2_7.type = "github";
  inputs.src-hts-v0_2_7.owner = "brentp";
  inputs.src-hts-v0_2_7.repo = "hts-nim";
  inputs.src-hts-v0_2_7.ref = "refs/tags/v0.2.7";
  
  outputs = { self, nixpkgs, src-hts-v0_2_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
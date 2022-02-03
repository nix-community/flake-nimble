{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_1_7.flake = false;
  inputs.src-hts-v0_1_7.type = "github";
  inputs.src-hts-v0_1_7.owner = "brentp";
  inputs.src-hts-v0_1_7.repo = "hts-nim";
  inputs.src-hts-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-hts-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
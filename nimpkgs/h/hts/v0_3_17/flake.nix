{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_17.flake = false;
  inputs.src-hts-v0_3_17.type = "github";
  inputs.src-hts-v0_3_17.owner = "brentp";
  inputs.src-hts-v0_3_17.repo = "hts-nim";
  inputs.src-hts-v0_3_17.ref = "refs/tags/v0.3.17";
  
  outputs = { self, nixpkgs, src-hts-v0_3_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
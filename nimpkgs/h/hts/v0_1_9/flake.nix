{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_1_9.flake = false;
  inputs.src-hts-v0_1_9.type = "github";
  inputs.src-hts-v0_1_9.owner = "brentp";
  inputs.src-hts-v0_1_9.repo = "hts-nim";
  inputs.src-hts-v0_1_9.ref = "refs/tags/v0.1.9";
  
  outputs = { self, nixpkgs, src-hts-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
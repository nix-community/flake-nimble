{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_3.flake = false;
  inputs.src-hts-v0_3_3.type = "github";
  inputs.src-hts-v0_3_3.owner = "brentp";
  inputs.src-hts-v0_3_3.repo = "hts-nim";
  inputs.src-hts-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, src-hts-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
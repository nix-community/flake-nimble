{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_12.flake = false;
  inputs.src-hts-v0_3_12.type = "github";
  inputs.src-hts-v0_3_12.owner = "brentp";
  inputs.src-hts-v0_3_12.repo = "hts-nim";
  inputs.src-hts-v0_3_12.ref = "refs/tags/v0.3.12";
  
  outputs = { self, nixpkgs, src-hts-v0_3_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_11.flake = false;
  inputs.src-hts-v0_3_11.type = "github";
  inputs.src-hts-v0_3_11.owner = "brentp";
  inputs.src-hts-v0_3_11.repo = "hts-nim";
  inputs.src-hts-v0_3_11.ref = "refs/tags/v0.3.11";
  
  outputs = { self, nixpkgs, src-hts-v0_3_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_2.flake = false;
  inputs.src-hts-v0_2_2.type = "github";
  inputs.src-hts-v0_2_2.owner = "brentp";
  inputs.src-hts-v0_2_2.repo = "hts-nim";
  inputs.src-hts-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-hts-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
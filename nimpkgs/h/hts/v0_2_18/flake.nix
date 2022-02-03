{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_18.flake = false;
  inputs.src-hts-v0_2_18.type = "github";
  inputs.src-hts-v0_2_18.owner = "brentp";
  inputs.src-hts-v0_2_18.repo = "hts-nim";
  inputs.src-hts-v0_2_18.ref = "refs/tags/v0.2.18";
  
  outputs = { self, nixpkgs, src-hts-v0_2_18, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_18;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_18"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
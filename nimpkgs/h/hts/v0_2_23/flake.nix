{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_2_23.flake = false;
  inputs.src-hts-v0_2_23.type = "github";
  inputs.src-hts-v0_2_23.owner = "brentp";
  inputs.src-hts-v0_2_23.repo = "hts-nim";
  inputs.src-hts-v0_2_23.ref = "refs/tags/v0.2.23";
  
  outputs = { self, nixpkgs, src-hts-v0_2_23, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_2_23;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_2_23"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
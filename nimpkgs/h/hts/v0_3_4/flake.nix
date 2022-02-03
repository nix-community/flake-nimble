{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_4.flake = false;
  inputs.src-hts-v0_3_4.type = "github";
  inputs.src-hts-v0_3_4.owner = "brentp";
  inputs.src-hts-v0_3_4.repo = "hts-nim";
  inputs.src-hts-v0_3_4.ref = "refs/tags/v0.3.4";
  
  outputs = { self, nixpkgs, src-hts-v0_3_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
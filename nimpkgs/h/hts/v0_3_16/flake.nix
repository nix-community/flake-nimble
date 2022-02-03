{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_16.flake = false;
  inputs.src-hts-v0_3_16.type = "github";
  inputs.src-hts-v0_3_16.owner = "brentp";
  inputs.src-hts-v0_3_16.repo = "hts-nim";
  inputs.src-hts-v0_3_16.ref = "refs/tags/v0.3.16";
  
  outputs = { self, nixpkgs, src-hts-v0_3_16, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_16;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_16"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
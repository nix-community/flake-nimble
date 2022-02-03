{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_8.flake = false;
  inputs.src-hts-v0_3_8.type = "github";
  inputs.src-hts-v0_3_8.owner = "brentp";
  inputs.src-hts-v0_3_8.repo = "hts-nim";
  inputs.src-hts-v0_3_8.ref = "refs/tags/v0.3.8";
  
  outputs = { self, nixpkgs, src-hts-v0_3_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-v0_3_15.flake = false;
  inputs.src-hts-v0_3_15.type = "github";
  inputs.src-hts-v0_3_15.owner = "brentp";
  inputs.src-hts-v0_3_15.repo = "hts-nim";
  inputs.src-hts-v0_3_15.ref = "refs/tags/v0.3.15";
  
  outputs = { self, nixpkgs, src-hts-v0_3_15, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-v0_3_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-v0_3_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
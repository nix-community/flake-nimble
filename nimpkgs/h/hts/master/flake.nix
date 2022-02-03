{
  description = ''htslib wrapper for nim'';
  inputs.src-hts-master.flake = false;
  inputs.src-hts-master.type = "github";
  inputs.src-hts-master.owner = "brentp";
  inputs.src-hts-master.repo = "hts-nim";
  inputs.src-hts-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-hts-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hts-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hts-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
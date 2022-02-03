{
  description = ''BLAS for Nim'';
  inputs.src-nimblas-master.flake = false;
  inputs.src-nimblas-master.type = "github";
  inputs.src-nimblas-master.owner = "andreaferretti";
  inputs.src-nimblas-master.repo = "nimblas";
  inputs.src-nimblas-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimblas-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimblas-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimblas-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Iterator library for Nim'';
  inputs.src-lazy-master.flake = false;
  inputs.src-lazy-master.type = "github";
  inputs.src-lazy-master.owner = "petermora";
  inputs.src-lazy-master.repo = "nimLazy";
  inputs.src-lazy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lazy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lazy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lazy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
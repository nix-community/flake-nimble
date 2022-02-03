{
  description = ''Exploration of various implementations of memory range types'';
  inputs.src-ranges-master.flake = false;
  inputs.src-ranges-master.type = "github";
  inputs.src-ranges-master.owner = "status-im";
  inputs.src-ranges-master.repo = "nim-ranges";
  inputs.src-ranges-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ranges-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ranges-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ranges-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
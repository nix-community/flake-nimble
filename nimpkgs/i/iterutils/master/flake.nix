{
  description = ''Functional operations for iterators and slices, similar to sequtils'';
  inputs.src-iterutils-master.flake = false;
  inputs.src-iterutils-master.type = "github";
  inputs.src-iterutils-master.owner = "def-";
  inputs.src-iterutils-master.repo = "iterutils";
  inputs.src-iterutils-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-iterutils-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iterutils-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-iterutils-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Itertools for Nim'';
  inputs.src-itertools-master.flake = false;
  inputs.src-itertools-master.type = "github";
  inputs.src-itertools-master.owner = "narimiran";
  inputs.src-itertools-master.repo = "itertools";
  inputs.src-itertools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-itertools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-itertools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-itertools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
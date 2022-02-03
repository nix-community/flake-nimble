{
  description = ''Various asynchronous tools for Nim'';
  inputs.src-asynctools-master.flake = false;
  inputs.src-asynctools-master.type = "github";
  inputs.src-asynctools-master.owner = "cheatfate";
  inputs.src-asynctools-master.repo = "asynctools";
  inputs.src-asynctools-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asynctools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asynctools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
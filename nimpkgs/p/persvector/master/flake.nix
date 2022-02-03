{
  description = ''This is an implementation of Clojures persistent vectors in Nim.'';
  inputs.src-persvector-master.flake = false;
  inputs.src-persvector-master.type = "github";
  inputs.src-persvector-master.owner = "PMunch";
  inputs.src-persvector-master.repo = "nim-persistent-vector";
  inputs.src-persvector-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-persvector-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-persvector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-persvector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
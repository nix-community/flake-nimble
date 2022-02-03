{
  description = ''Currying library for Nim'';
  inputs.src-currying-master.flake = false;
  inputs.src-currying-master.type = "github";
  inputs.src-currying-master.owner = "t8m8";
  inputs.src-currying-master.repo = "currying";
  inputs.src-currying-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-currying-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-currying-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-currying-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim wrapper around the git version control software'';
  inputs.src-gitapi-master.flake = false;
  inputs.src-gitapi-master.type = "github";
  inputs.src-gitapi-master.owner = "achesak";
  inputs.src-gitapi-master.repo = "nim-gitapi";
  inputs.src-gitapi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gitapi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gitapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gitapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
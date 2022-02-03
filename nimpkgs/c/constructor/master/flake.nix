{
  description = ''Nim macros to aid in object construction including event programming, and constructors.'';
  inputs.src-constructor-master.flake = false;
  inputs.src-constructor-master.type = "github";
  inputs.src-constructor-master.owner = "beef331";
  inputs.src-constructor-master.repo = "constructor";
  inputs.src-constructor-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-constructor-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-constructor-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-constructor-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
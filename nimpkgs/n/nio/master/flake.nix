{
  description = ''A Mini Server Framework for Nim language'';
  inputs.src-nio-master.flake = false;
  inputs.src-nio-master.type = "github";
  inputs.src-nio-master.owner = "KayraG";
  inputs.src-nio-master.repo = "nio";
  inputs.src-nio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
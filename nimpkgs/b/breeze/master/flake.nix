{
  description = ''A dsl for writing macros in Nim'';
  inputs.src-breeze-master.flake = false;
  inputs.src-breeze-master.type = "github";
  inputs.src-breeze-master.owner = "alehander42";
  inputs.src-breeze-master.repo = "breeze";
  inputs.src-breeze-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-breeze-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-breeze-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-breeze-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
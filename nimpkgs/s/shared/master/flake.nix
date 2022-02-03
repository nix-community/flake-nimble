{
  description = ''Nim library for shared types'';
  inputs.src-shared-master.flake = false;
  inputs.src-shared-master.type = "github";
  inputs.src-shared-master.owner = "genotrance";
  inputs.src-shared-master.repo = "shared";
  inputs.src-shared-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shared-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shared-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shared-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
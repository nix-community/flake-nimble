{
  description = ''Tiny library to check if a system package is already installed.'';
  inputs.src-checkpack-master.flake = false;
  inputs.src-checkpack-master.type = "gitlab";
  inputs.src-checkpack-master.owner = "EchoPouet";
  inputs.src-checkpack-master.repo = "checkpack";
  inputs.src-checkpack-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-checkpack-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-checkpack-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-checkpack-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
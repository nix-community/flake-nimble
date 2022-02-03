{
  description = ''Nim module/thread initialisation ordering library'';
  inputs.src-moduleinit-master.flake = false;
  inputs.src-moduleinit-master.type = "github";
  inputs.src-moduleinit-master.owner = "skunkiferous";
  inputs.src-moduleinit-master.repo = "moduleinit";
  inputs.src-moduleinit-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-moduleinit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-moduleinit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-moduleinit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
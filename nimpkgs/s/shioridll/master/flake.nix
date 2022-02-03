{
  description = ''The SHIORI DLL interface'';
  inputs.src-shioridll-master.flake = false;
  inputs.src-shioridll-master.type = "github";
  inputs.src-shioridll-master.owner = "Narazaka";
  inputs.src-shioridll-master.repo = "shioridll-nim";
  inputs.src-shioridll-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shioridll-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shioridll-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shioridll-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
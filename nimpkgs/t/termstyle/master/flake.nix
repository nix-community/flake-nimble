{
  description = ''Easy to use styles for terminal output'';
  inputs.src-termstyle-master.flake = false;
  inputs.src-termstyle-master.type = "github";
  inputs.src-termstyle-master.owner = "PMunch";
  inputs.src-termstyle-master.repo = "termstyle";
  inputs.src-termstyle-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-termstyle-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-termstyle-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-termstyle-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Arch Linux Pacman Optimizer'';
  inputs.src-chonker-master.flake = false;
  inputs.src-chonker-master.type = "github";
  inputs.src-chonker-master.owner = "juancarlospaco";
  inputs.src-chonker-master.repo = "nim-chonker";
  inputs.src-chonker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chonker-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chonker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chonker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
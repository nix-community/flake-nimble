{
  description = ''A command and library to generate mazes'';
  inputs.src-maze-master.flake = false;
  inputs.src-maze-master.type = "github";
  inputs.src-maze-master.owner = "jiro4989";
  inputs.src-maze-master.repo = "maze";
  inputs.src-maze-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-maze-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-maze-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-maze-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
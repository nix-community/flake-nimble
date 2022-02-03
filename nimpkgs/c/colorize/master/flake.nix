{
  description = ''A simple and lightweight terminal coloring library.'';
  inputs.src-colorize-master.flake = false;
  inputs.src-colorize-master.type = "github";
  inputs.src-colorize-master.owner = "molnarmark";
  inputs.src-colorize-master.repo = "colorize";
  inputs.src-colorize-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-colorize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
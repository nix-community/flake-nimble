{
  description = ''Arch Linux Pacman Optimizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-chonker-master.flake = false;
  inputs.src-chonker-master.type = "github";
  inputs.src-chonker-master.owner = "juancarlospaco";
  inputs.src-chonker-master.repo = "nim-chonker";
  inputs.src-chonker-master.ref = "refs/heads/master";
  inputs.src-chonker-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chonker-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chonker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chonker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
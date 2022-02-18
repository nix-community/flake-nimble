{
  description = ''Arch Linux Pacman Optimizer'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-chonker-master.flake = false;
  inputs.src-chonker-master.type = "github";
  inputs.src-chonker-master.owner = "juancarlospaco";
  inputs.src-chonker-master.repo = "nim-chonker";
  inputs.src-chonker-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chonker-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chonker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chonker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A wrapper for NCurses'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ncurses-master.flake = false;
  inputs.src-ncurses-master.type = "github";
  inputs.src-ncurses-master.owner = "walkre-niboshi";
  inputs.src-ncurses-master.repo = "nim-ncurses";
  inputs.src-ncurses-master.ref = "refs/heads/master";
  inputs.src-ncurses-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ncurses-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ncurses-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ncurses-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
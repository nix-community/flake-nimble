{
  description = ''A wrapper for NCurses'';
  inputs.src-ncurses-master.flake = false;
  inputs.src-ncurses-master.type = "github";
  inputs.src-ncurses-master.owner = "walkre-niboshi";
  inputs.src-ncurses-master.repo = "nim-ncurses";
  inputs.src-ncurses-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ncurses-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ncurses-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ncurses-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
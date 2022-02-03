{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-master.flake = false;
  inputs.src-libtcod_nim-master.type = "github";
  inputs.src-libtcod_nim-master.owner = "Vladar4";
  inputs.src-libtcod_nim-master.repo = "libtcod_nim";
  inputs.src-libtcod_nim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libtcod_nim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
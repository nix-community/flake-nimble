{
  description = ''SDL 1.2 wrapper for Nim.'';
  inputs.src-sdl1-master.flake = false;
  inputs.src-sdl1-master.type = "github";
  inputs.src-sdl1-master.owner = "nim-lang";
  inputs.src-sdl1-master.repo = "sdl1";
  inputs.src-sdl1-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sdl1-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl1-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl1-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Wrapper for SDL 2.x'';
  inputs.src-sdl2-master.flake = false;
  inputs.src-sdl2-master.type = "github";
  inputs.src-sdl2-master.owner = "nim-lang";
  inputs.src-sdl2-master.repo = "sdl2";
  inputs.src-sdl2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sdl2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
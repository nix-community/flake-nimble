{
  description = ''Wrapper for SDL 2.x'';
  inputs.src-sdl2-v2_0.flake = false;
  inputs.src-sdl2-v2_0.type = "github";
  inputs.src-sdl2-v2_0.owner = "nim-lang";
  inputs.src-sdl2-v2_0.repo = "sdl2";
  inputs.src-sdl2-v2_0.ref = "refs/tags/v2.0";
  
  outputs = { self, nixpkgs, src-sdl2-v2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-v2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2-v2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
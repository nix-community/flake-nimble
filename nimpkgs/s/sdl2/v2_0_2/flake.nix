{
  description = ''Wrapper for SDL 2.x'';
  inputs.src-sdl2-v2_0_2.flake = false;
  inputs.src-sdl2-v2_0_2.type = "github";
  inputs.src-sdl2-v2_0_2.owner = "nim-lang";
  inputs.src-sdl2-v2_0_2.repo = "sdl2";
  inputs.src-sdl2-v2_0_2.ref = "refs/tags/v2.0.2";
  
  outputs = { self, nixpkgs, src-sdl2-v2_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-v2_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2-v2_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
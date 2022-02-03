{
  description = ''Wrapper for SDL 2.x'';
  inputs.src-sdl2-v2_0_1.flake = false;
  inputs.src-sdl2-v2_0_1.type = "github";
  inputs.src-sdl2-v2_0_1.owner = "nim-lang";
  inputs.src-sdl2-v2_0_1.repo = "sdl2";
  inputs.src-sdl2-v2_0_1.ref = "refs/tags/v2.0.1";
  
  outputs = { self, nixpkgs, src-sdl2-v2_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdl2-v2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sdl2-v2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
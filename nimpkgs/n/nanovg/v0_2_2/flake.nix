{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-v0_2_2.flake = false;
  inputs.src-nanovg-v0_2_2.type = "github";
  inputs.src-nanovg-v0_2_2.owner = "johnnovak";
  inputs.src-nanovg-v0_2_2.repo = "nim-nanovg";
  inputs.src-nanovg-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-nanovg-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
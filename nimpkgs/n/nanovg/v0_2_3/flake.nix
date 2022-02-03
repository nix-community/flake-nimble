{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-v0_2_3.flake = false;
  inputs.src-nanovg-v0_2_3.type = "github";
  inputs.src-nanovg-v0_2_3.owner = "johnnovak";
  inputs.src-nanovg-v0_2_3.repo = "nim-nanovg";
  inputs.src-nanovg-v0_2_3.ref = "refs/tags/v0.2.3";
  
  outputs = { self, nixpkgs, src-nanovg-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
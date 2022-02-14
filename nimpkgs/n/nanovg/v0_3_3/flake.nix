{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-v0_3_3.flake = false;
  inputs.src-nanovg-v0_3_3.type = "github";
  inputs.src-nanovg-v0_3_3.owner = "johnnovak";
  inputs.src-nanovg-v0_3_3.repo = "nim-nanovg";
  inputs.src-nanovg-v0_3_3.ref = "refs/tags/v0.3.3";
  
  outputs = { self, nixpkgs, src-nanovg-v0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
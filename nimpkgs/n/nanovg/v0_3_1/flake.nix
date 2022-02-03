{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-v0_3_1.flake = false;
  inputs.src-nanovg-v0_3_1.type = "github";
  inputs.src-nanovg-v0_3_1.owner = "johnnovak";
  inputs.src-nanovg-v0_3_1.repo = "nim-nanovg";
  inputs.src-nanovg-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-nanovg-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
  inputs.src-nanovg-v0_2_1.flake = false;
  inputs.src-nanovg-v0_2_1.type = "github";
  inputs.src-nanovg-v0_2_1.owner = "johnnovak";
  inputs.src-nanovg-v0_2_1.repo = "nim-nanovg";
  inputs.src-nanovg-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-nanovg-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nanovg-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim wrapper for the C NanoVG antialiased vector graphics rendering library for OpenGL'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nanovg-v0_3_3.flake = false;
  inputs.src-nanovg-v0_3_3.type = "github";
  inputs.src-nanovg-v0_3_3.owner = "johnnovak";
  inputs.src-nanovg-v0_3_3.repo = "nim-nanovg";
  inputs.src-nanovg-v0_3_3.ref = "refs/tags/v0.3.3";
  inputs.src-nanovg-v0_3_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nanovg-v0_3_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nanovg-v0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nanovg-v0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Wrapper for cairo, a vector graphics library with display and print output'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cairo-1_1_0.flake = false;
  inputs.src-cairo-1_1_0.type = "github";
  inputs.src-cairo-1_1_0.owner = "nim-lang";
  inputs.src-cairo-1_1_0.repo = "cairo";
  inputs.src-cairo-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cairo-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cairo-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cairo-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
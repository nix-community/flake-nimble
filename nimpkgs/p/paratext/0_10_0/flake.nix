{
  description = ''A library for rendering text with paranim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-paratext-0_10_0.flake = false;
  inputs.src-paratext-0_10_0.type = "github";
  inputs.src-paratext-0_10_0.owner = "paranim";
  inputs.src-paratext-0_10_0.repo = "paratext";
  inputs.src-paratext-0_10_0.ref = "refs/tags/0.10.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-paratext-0_10_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paratext-0_10_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paratext-0_10_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
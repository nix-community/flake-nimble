{
  description = ''A curses inspired simple cross-platform console library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-illwill-0_1_0.flake = false;
  inputs.src-illwill-0_1_0.type = "github";
  inputs.src-illwill-0_1_0.owner = "johnnovak";
  inputs.src-illwill-0_1_0.repo = "illwill";
  inputs.src-illwill-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-illwill-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-illwill-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
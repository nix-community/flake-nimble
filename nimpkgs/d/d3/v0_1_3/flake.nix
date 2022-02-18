{
  description = ''A D3.js wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-d3-v0_1_3.flake = false;
  inputs.src-d3-v0_1_3.type = "github";
  inputs.src-d3-v0_1_3.owner = "hiteshjasani";
  inputs.src-d3-v0_1_3.repo = "nim-d3";
  inputs.src-d3-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-d3-v0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-d3-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
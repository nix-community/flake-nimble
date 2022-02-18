{
  description = ''A D3.js wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-d3-v0_1_2.flake = false;
  inputs.src-d3-v0_1_2.type = "github";
  inputs.src-d3-v0_1_2.owner = "hiteshjasani";
  inputs.src-d3-v0_1_2.repo = "nim-d3";
  inputs.src-d3-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-d3-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-d3-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
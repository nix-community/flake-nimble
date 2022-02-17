{
  description = ''A D3.js wrapper for Nim'';
  inputs.src-d3-v0_1_0.flake = false;
  inputs.src-d3-v0_1_0.type = "github";
  inputs.src-d3-v0_1_0.owner = "hiteshjasani";
  inputs.src-d3-v0_1_0.repo = "nim-d3";
  inputs.src-d3-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  outputs = { self, nixpkgs, src-d3-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-d3-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
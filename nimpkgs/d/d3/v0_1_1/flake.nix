{
  description = ''A D3.js wrapper for Nim'';
  inputs.src-d3-v0_1_1.flake = false;
  inputs.src-d3-v0_1_1.type = "github";
  inputs.src-d3-v0_1_1.owner = "hiteshjasani";
  inputs.src-d3-v0_1_1.repo = "nim-d3";
  inputs.src-d3-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-d3-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-d3-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
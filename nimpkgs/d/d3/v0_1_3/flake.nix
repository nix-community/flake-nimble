{
  description = ''A D3.js wrapper for Nim'';
  inputs.src-d3-v0_1_3.flake = false;
  inputs.src-d3-v0_1_3.type = "github";
  inputs.src-d3-v0_1_3.owner = "hiteshjasani";
  inputs.src-d3-v0_1_3.repo = "nim-d3";
  inputs.src-d3-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-d3-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-d3-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-d3-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
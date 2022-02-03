{
  description = ''A library for rendering text with paranim'';
  inputs.src-paratext-0_12_0.flake = false;
  inputs.src-paratext-0_12_0.type = "github";
  inputs.src-paratext-0_12_0.owner = "paranim";
  inputs.src-paratext-0_12_0.repo = "paratext";
  inputs.src-paratext-0_12_0.ref = "refs/tags/0.12.0";
  
  outputs = { self, nixpkgs, src-paratext-0_12_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paratext-0_12_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paratext-0_12_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
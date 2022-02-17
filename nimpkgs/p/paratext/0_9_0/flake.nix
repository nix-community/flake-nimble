{
  description = ''A library for rendering text with paranim'';
  inputs.src-paratext-0_9_0.flake = false;
  inputs.src-paratext-0_9_0.type = "github";
  inputs.src-paratext-0_9_0.owner = "paranim";
  inputs.src-paratext-0_9_0.repo = "paratext";
  inputs.src-paratext-0_9_0.ref = "refs/tags/0.9.0";
  
  
  inputs."paranim".type = "github";
  inputs."paranim".owner = "riinr";
  inputs."paranim".repo = "flake-nimble";
  inputs."paranim".ref = "flake-pinning";
  inputs."paranim".dir = "nimpkgs/p/paranim";

  outputs = { self, nixpkgs, src-paratext-0_9_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paratext-0_9_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-paratext-0_9_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
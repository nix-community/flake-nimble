{
  description = ''UI building with Gnome's Glade'';
  inputs.src-uibuilder-0_1_0.flake = false;
  inputs.src-uibuilder-0_1_0.type = "github";
  inputs.src-uibuilder-0_1_0.owner = "ba0f3";
  inputs.src-uibuilder-0_1_0.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."ui".url = "path:../../../u/ui";
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."q".url = "path:../../../q/q";
  inputs."q".type = "github";
  inputs."q".owner = "riinr";
  inputs."q".repo = "flake-nimble";
  inputs."q".ref = "flake-pinning";
  inputs."q".dir = "nimpkgs/q/q";

  outputs = { self, nixpkgs, src-uibuilder-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uibuilder-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
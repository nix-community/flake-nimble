{
  description = ''UI building with Gnome's Glade'';
  inputs.src-uibuilder-0_2_1.flake = false;
  inputs.src-uibuilder-0_2_1.type = "github";
  inputs.src-uibuilder-0_2_1.owner = "ba0f3";
  inputs.src-uibuilder-0_2_1.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."ui".url = "path:../../../u/ui";
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."xml".url = "path:../../../x/xml";
  inputs."xml".type = "github";
  inputs."xml".owner = "riinr";
  inputs."xml".repo = "flake-nimble";
  inputs."xml".ref = "flake-pinning";
  inputs."xml".dir = "nimpkgs/x/xml";

  outputs = { self, nixpkgs, src-uibuilder-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uibuilder-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''UI building with Gnome's Glade'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-uibuilder-0_2_1.flake = false;
  inputs.src-uibuilder-0_2_1.type = "github";
  inputs.src-uibuilder-0_2_1.owner = "ba0f3";
  inputs.src-uibuilder-0_2_1.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_2_1.ref = "refs/tags/0.2.1";
  
  
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."xml".type = "github";
  inputs."xml".owner = "riinr";
  inputs."xml".repo = "flake-nimble";
  inputs."xml".ref = "flake-pinning";
  inputs."xml".dir = "nimpkgs/x/xml";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uibuilder-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
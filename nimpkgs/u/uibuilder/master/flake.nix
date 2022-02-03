{
  description = ''UI building with Gnome's Glade'';
  inputs.src-uibuilder-master.flake = false;
  inputs.src-uibuilder-master.type = "github";
  inputs.src-uibuilder-master.owner = "ba0f3";
  inputs.src-uibuilder-master.repo = "uibuilder.nim";
  inputs.src-uibuilder-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-uibuilder-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uibuilder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
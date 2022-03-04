{
  description = ''UI building with Gnome's Glade'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uibuilder-master.flake = false;
  inputs.src-uibuilder-master.type = "github";
  inputs.src-uibuilder-master.owner = "ba0f3";
  inputs.src-uibuilder-master.repo = "uibuilder.nim";
  inputs.src-uibuilder-master.ref = "refs/heads/master";
  inputs.src-uibuilder-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";
  inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."xml".type = "github";
  inputs."xml".owner = "riinr";
  inputs."xml".repo = "flake-nimble";
  inputs."xml".ref = "flake-pinning";
  inputs."xml".dir = "nimpkgs/x/xml";
  inputs."xml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uibuilder-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''UI building with Gnome's Glade'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-uibuilder-0_2_0.flake = false;
  inputs.src-uibuilder-0_2_0.type = "github";
  inputs.src-uibuilder-0_2_0.owner = "ba0f3";
  inputs.src-uibuilder-0_2_0.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-uibuilder-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ui".type = "github";
  # inputs."ui".owner = "riinr";
  # inputs."ui".repo = "flake-nimble";
  # inputs."ui".ref = "flake-pinning";
  # inputs."ui".dir = "nimpkgs/u/ui";
  # inputs."ui".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/ba0f3/xml.nim@".type = "github";
  # inputs."https://github.com/ba0f3/xml.nim@".owner = "riinr";
  # inputs."https://github.com/ba0f3/xml.nim@".repo = "flake-nimble";
  # inputs."https://github.com/ba0f3/xml.nim@".ref = "flake-pinning";
  # inputs."https://github.com/ba0f3/xml.nim@".dir = "nimpkgs/h/https://github.com/ba0f3/xml.nim@";
  # inputs."https://github.com/ba0f3/xml.nim@".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/ba0f3/xml.nim@".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uibuilder-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
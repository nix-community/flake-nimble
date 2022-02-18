{
  description = ''UI building with Gnome's Glade'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-uibuilder-0_1_1.flake = false;
  inputs.src-uibuilder-0_1_1.type = "github";
  inputs.src-uibuilder-0_1_1.owner = "ba0f3";
  inputs.src-uibuilder-0_1_1.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_1_1.ref = "refs/tags/0.1.1";
  
  
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."q".type = "github";
  inputs."q".owner = "riinr";
  inputs."q".repo = "flake-nimble";
  inputs."q".ref = "flake-pinning";
  inputs."q".dir = "nimpkgs/q/q";

  
  inputs."https://github.com/ba0f3/xml.nim".type = "github";
  inputs."https://github.com/ba0f3/xml.nim".owner = "riinr";
  inputs."https://github.com/ba0f3/xml.nim".repo = "flake-nimble";
  inputs."https://github.com/ba0f3/xml.nim".ref = "flake-pinning";
  inputs."https://github.com/ba0f3/xml.nim".dir = "nimpkgs/h/https://github.com/ba0f3/xml.nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uibuilder-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uibuilder-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
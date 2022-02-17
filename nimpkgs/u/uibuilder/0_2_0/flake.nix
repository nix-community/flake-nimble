{
  description = ''UI building with Gnome's Glade'';
  inputs.src-uibuilder-0_2_0.flake = false;
  inputs.src-uibuilder-0_2_0.type = "github";
  inputs.src-uibuilder-0_2_0.owner = "ba0f3";
  inputs.src-uibuilder-0_2_0.repo = "uibuilder.nim";
  inputs.src-uibuilder-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."ui".type = "github";
  inputs."ui".owner = "riinr";
  inputs."ui".repo = "flake-nimble";
  inputs."ui".ref = "flake-pinning";
  inputs."ui".dir = "nimpkgs/u/ui";

  
  inputs."https://github.com/ba0f3/xml.nim@".type = "github";
  inputs."https://github.com/ba0f3/xml.nim@".owner = "riinr";
  inputs."https://github.com/ba0f3/xml.nim@".repo = "flake-nimble";
  inputs."https://github.com/ba0f3/xml.nim@".ref = "flake-pinning";
  inputs."https://github.com/ba0f3/xml.nim@".dir = "nimpkgs/h/https://github.com/ba0f3/xml.nim@";

  outputs = { self, nixpkgs, src-uibuilder-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uibuilder-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uibuilder-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-htmlToVdom-main.flake = false;
  inputs.src-htmlToVdom-main.type = "github";
  inputs.src-htmlToVdom-main.owner = "C-NERD";
  inputs.src-htmlToVdom-main.repo = "htmlToVdom";
  inputs.src-htmlToVdom-main.ref = "refs/heads/main";
  inputs.src-htmlToVdom-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."karax".type = "github";
  # inputs."karax".owner = "riinr";
  # inputs."karax".repo = "flake-nimble";
  # inputs."karax".ref = "flake-pinning";
  # inputs."karax".dir = "nimpkgs/k/karax";
  # inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-htmlToVdom-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlToVdom-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmlToVdom-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
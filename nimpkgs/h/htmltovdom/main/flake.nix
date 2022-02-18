{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-htmltovdom-main.flake = false;
  inputs.src-htmltovdom-main.type = "github";
  inputs.src-htmltovdom-main.owner = "c-NERD";
  inputs.src-htmltovdom-main.repo = "htmlToVdom";
  inputs.src-htmltovdom-main.ref = "refs/heads/main";
  
  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, flakeNimbleLib, src-htmltovdom-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmltovdom-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-htmltovdom-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';
  inputs.src-htmlToVdom-main.flake = false;
  inputs.src-htmlToVdom-main.type = "github";
  inputs.src-htmlToVdom-main.owner = "C-NERD";
  inputs.src-htmlToVdom-main.repo = "htmlToVdom";
  inputs.src-htmlToVdom-main.ref = "refs/heads/main";
  
  
  inputs."karax".type = "github";
  inputs."karax".owner = "riinr";
  inputs."karax".repo = "flake-nimble";
  inputs."karax".ref = "flake-pinning";
  inputs."karax".dir = "nimpkgs/k/karax";

  outputs = { self, nixpkgs, src-htmlToVdom-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlToVdom-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htmlToVdom-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
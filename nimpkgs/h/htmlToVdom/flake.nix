{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."htmlToVdom-main".type = "github";
  inputs."htmlToVdom-main".owner = "riinr";
  inputs."htmlToVdom-main".repo = "flake-nimble";
  inputs."htmlToVdom-main".ref = "flake-pinning";
  inputs."htmlToVdom-main".dir = "nimpkgs/h/htmlToVdom/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
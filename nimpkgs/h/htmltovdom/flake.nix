{
  description = ''Karax extension to convert html in string form to embeddable Karax vdom'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."htmltovdom-main".type = "github";
  inputs."htmltovdom-main".owner = "riinr";
  inputs."htmltovdom-main".repo = "flake-nimble";
  inputs."htmltovdom-main".ref = "flake-pinning";
  inputs."htmltovdom-main".dir = "nimpkgs/h/htmltovdom/main";
  inputs."htmltovdom-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmltovdom-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
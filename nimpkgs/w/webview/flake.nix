{
  description = ''Nim bindings for https://github.com/zserge/webview, a cross platform single header webview library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."webview-master".type = "github";
  inputs."webview-master".owner = "riinr";
  inputs."webview-master".repo = "flake-nimble";
  inputs."webview-master".ref = "flake-pinning";
  inputs."webview-master".dir = "nimpkgs/w/webview/master";
  inputs."webview-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webview-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
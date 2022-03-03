{
  description = ''A wechat payment sdk for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."wxpay-main".type = "github";
  inputs."wxpay-main".owner = "riinr";
  inputs."wxpay-main".repo = "flake-nimble";
  inputs."wxpay-main".ref = "flake-pinning";
  inputs."wxpay-main".dir = "nimpkgs/w/wxpay/main";
  inputs."wxpay-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wxpay-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
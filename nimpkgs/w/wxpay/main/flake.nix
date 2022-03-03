{
  description = ''A wechat payment sdk for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-wxpay-main.flake = false;
  inputs.src-wxpay-main.type = "github";
  inputs.src-wxpay-main.owner = "lihf8515";
  inputs.src-wxpay-main.repo = "wxpay";
  inputs.src-wxpay-main.ref = "refs/heads/main";
  inputs.src-wxpay-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."hmac".type = "github";
  # inputs."hmac".owner = "riinr";
  # inputs."hmac".repo = "flake-nimble";
  # inputs."hmac".ref = "flake-pinning";
  # inputs."hmac".dir = "nimpkgs/h/hmac";
  # inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wxpay-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wxpay-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wxpay-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
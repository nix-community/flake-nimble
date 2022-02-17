{
  description = ''A wechat payment sdk for nim.'';
  inputs.src-wxpay-main.flake = false;
  inputs.src-wxpay-main.type = "github";
  inputs.src-wxpay-main.owner = "lihf8515";
  inputs.src-wxpay-main.repo = "wxpay";
  inputs.src-wxpay-main.ref = "refs/heads/main";
  
  
  inputs."hmac".type = "github";
  inputs."hmac".owner = "riinr";
  inputs."hmac".repo = "flake-nimble";
  inputs."hmac".ref = "flake-pinning";
  inputs."hmac".dir = "nimpkgs/h/hmac";

  outputs = { self, nixpkgs, src-wxpay-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wxpay-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wxpay-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
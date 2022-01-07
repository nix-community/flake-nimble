{
  description = ''
    A wechat payment sdk for nim.
  '';
  inputs.src-wxpay.url = "https://github.com/lihf8515/wxpay";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

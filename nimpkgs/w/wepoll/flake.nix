{
  description = ''
    Windows epoll wrapper.
  '';
  inputs.src-wepoll.url = "https://github.com/xflywind/wepoll";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

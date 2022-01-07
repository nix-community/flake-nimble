{
  description = ''
    A super-fast epoll-backed and parallel HTTP server.
  '';
  inputs.src-httpx.url = "https://github.com/xflywind/httpx";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

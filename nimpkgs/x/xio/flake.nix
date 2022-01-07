{
  description = ''
    Cross platform system API for os and net.
  '';
  inputs.src-xio.url = "https://github.com/xflywind/async";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

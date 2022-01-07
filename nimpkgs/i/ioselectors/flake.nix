{
  description = ''
    Selectors extension.
  '';
  inputs.src-ioselectors.url = "https://github.com/xflywind/ioselectors";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

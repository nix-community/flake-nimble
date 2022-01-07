{
  description = ''
    Stack-based arbitrary-precision integers - Fast and portable with natural syntax for resource-restricted devices
  '';
  inputs.src-stint.url = "https://github.com/status-im/nim-stint";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

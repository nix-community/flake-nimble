{
  description = ''
    .NET-inspired lightweight terminal library
  '';
  inputs.src-conio.url = "https://github.com/guevara-chan/conio";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

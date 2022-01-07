{
  description = ''
    A website management tool. Run the file and access your webpage.
  '';
  inputs.src-nimwc.url = "https://github.com/ThomasTJdev/nim_websitecreator";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

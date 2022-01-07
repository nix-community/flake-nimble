{
  description = ''
    OpenGL math library
  '';
  inputs.src-linagl.url = "https://bitbucket.org/BitPuffin/linagl";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

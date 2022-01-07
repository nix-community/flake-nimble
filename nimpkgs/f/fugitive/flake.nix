{
  description = ''
    Simple command line tool to make git more intuitive, along with useful GitHub addons.
  '';
  inputs.src-fugitive.url = "https://github.com/citycide/fugitive";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

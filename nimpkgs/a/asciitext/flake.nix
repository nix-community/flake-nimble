{
  description = ''
    Ascii Text allows you to print large ASCII fonts for the console and for the web
  '';
  inputs.src-asciitext.url = "https://github.com/Himujjal/asciitextNim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

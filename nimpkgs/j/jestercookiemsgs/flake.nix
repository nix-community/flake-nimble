{
  description = ''
    A Jester web plugin that allows easy message passing between pages using a browser cookie.
  '';
  inputs.src-jestercookiemsgs.url = "https://github.com/JohnAD/jestercookiemsgs";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

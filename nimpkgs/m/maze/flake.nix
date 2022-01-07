{
  description = ''
    A command and library to generate mazes
  '';
  inputs.src-maze.url = "https://github.com/jiro4989/maze";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

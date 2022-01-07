{
  description = ''
    A simple task runner. Run tasks and watch file changes with custom paths.
  '';
  inputs.src-monit.url = "https://github.com/jiro4989/monit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

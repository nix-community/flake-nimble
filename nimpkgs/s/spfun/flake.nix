{
  description = ''
    Special Functions of Stats & Physics
  '';
  inputs.src-spfun.url = "https://github.com/c-blake/spfun";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

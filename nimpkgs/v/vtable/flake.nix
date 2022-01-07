{
  description = ''
    Implement dynamic dispatch through vtable, should works for dynlib.
  '';
  inputs.src-vtable.url = "https://github.com/codehz/nim-vtable";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

{
  description = ''
    Bindings for golib - a library that (ab)uses gccgo to bring Go's channels and goroutines to the rest of the world
  '';
  inputs.src-golib.url = "https://github.com/stefantalpalaru/golib-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

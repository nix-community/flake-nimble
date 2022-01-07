{
  description = ''
    System libraries for the Genode Operating System Framework
  '';
  inputs.src-genode.url = "https://git.sr.ht/~ehmry/nim_genode";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

{
  description = ''
    Wrappers over the Tkrzw Database Manager C++ library.
  '';
  inputs.src-tkrzw.url = "https://git.sr.ht/~ehmry/nim-tkrzw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

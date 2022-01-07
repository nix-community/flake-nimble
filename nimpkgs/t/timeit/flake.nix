{
  description = ''
    measuring execution times written in nim.
  '';
  inputs.src-timeit.url = "https://github.com/xflywind/timeit";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

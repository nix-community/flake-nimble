{
  description = ''
    mofuw is *MO*re *F*aster, *U*ltra *W*ebserver
  '';
  inputs.src-mofuw.url = "https://github.com/2vg/mofuw";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

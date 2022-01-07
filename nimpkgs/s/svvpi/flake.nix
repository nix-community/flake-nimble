{
  description = ''
    Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h
  '';
  inputs.src-svvpi.url = "https://github.com/kaushalmodi/nim-svvpi";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

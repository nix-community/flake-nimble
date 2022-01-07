{
  description = ''
    uncomment the codes at the compile time
  '';
  inputs.src-uncomment.url = "https://github.com/hamidb80/uncomment";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

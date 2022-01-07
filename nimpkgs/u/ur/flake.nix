{
  description = ''
    A Universal Result macro/object that normalizes the information returned from a procedure
  '';
  inputs.src-ur.url = "https://github.com/JohnAD/ur";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}

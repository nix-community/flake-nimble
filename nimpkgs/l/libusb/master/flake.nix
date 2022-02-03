{
  description = ''Bindings for libusb, the cross-platform user library to access USB devices.'';
  inputs.src-libusb-master.flake = false;
  inputs.src-libusb-master.type = "github";
  inputs.src-libusb-master.owner = "nimious";
  inputs.src-libusb-master.repo = "libusb";
  inputs.src-libusb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libusb-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libusb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libusb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
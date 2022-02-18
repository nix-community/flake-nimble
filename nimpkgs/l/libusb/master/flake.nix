{
  description = ''Bindings for libusb, the cross-platform user library to access USB devices.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libusb-master.flake = false;
  inputs.src-libusb-master.type = "github";
  inputs.src-libusb-master.owner = "nimious";
  inputs.src-libusb-master.repo = "libusb";
  inputs.src-libusb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libusb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libusb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libusb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
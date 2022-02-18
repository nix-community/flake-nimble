{
  description = ''Obsolete - please use libusb instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-io-usb-master.flake = false;
  inputs.src-io-usb-master.type = "github";
  inputs.src-io-usb-master.owner = "nimious";
  inputs.src-io-usb-master.repo = "io-usb";
  inputs.src-io-usb-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-usb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-usb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-usb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
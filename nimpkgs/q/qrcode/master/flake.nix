{
  description = ''module for creating and reading QR codes using http://goqr.me/'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-qrcode-master.flake = false;
  inputs.src-qrcode-master.type = "github";
  inputs.src-qrcode-master.owner = "achesak";
  inputs.src-qrcode-master.repo = "nim-qrcode";
  inputs.src-qrcode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qrcode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qrcode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qrcode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
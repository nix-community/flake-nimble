{
  description = ''Create SVG-files with QR-codes from strings.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-qr-master.flake = false;
  inputs.src-qr-master.type = "github";
  inputs.src-qr-master.owner = "ThomasTJdev";
  inputs.src-qr-master.repo = "nim_qr";
  inputs.src-qr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qr-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
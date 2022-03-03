{
  description = ''QR Code Generator'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-qrcodegen-master.flake = false;
  inputs.src-qrcodegen-master.type = "github";
  inputs.src-qrcodegen-master.owner = "bunkford";
  inputs.src-qrcodegen-master.repo = "qrcodegen";
  inputs.src-qrcodegen-master.ref = "refs/heads/master";
  inputs.src-qrcodegen-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-qrcodegen-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qrcodegen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-qrcodegen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
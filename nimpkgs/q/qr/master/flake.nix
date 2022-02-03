{
  description = ''Create SVG-files with QR-codes from strings.'';
  inputs.src-qr-master.flake = false;
  inputs.src-qr-master.type = "github";
  inputs.src-qr-master.owner = "ThomasTJdev";
  inputs.src-qr-master.repo = "nim_qr";
  inputs.src-qr-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-qr-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qr-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qr-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
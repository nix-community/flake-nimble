{
  description = ''Create SVG-files with QR-codes from strings.'';
  inputs.src-qr-v1_0_0.flake = false;
  inputs.src-qr-v1_0_0.type = "github";
  inputs.src-qr-v1_0_0.owner = "ThomasTJdev";
  inputs.src-qr-v1_0_0.repo = "nim_qr";
  inputs.src-qr-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-qr-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qr-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qr-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
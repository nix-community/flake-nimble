{
  description = ''QR Code Generator'';
  inputs.src-qrcodegen-master.flake = false;
  inputs.src-qrcodegen-master.type = "github";
  inputs.src-qrcodegen-master.owner = "bunkford";
  inputs.src-qrcodegen-master.repo = "qrcodegen";
  inputs.src-qrcodegen-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-qrcodegen-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qrcodegen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qrcodegen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''module for creating and reading QR codes using http://goqr.me/'';
  inputs.src-qrcode-master.flake = false;
  inputs.src-qrcode-master.type = "github";
  inputs.src-qrcode-master.owner = "achesak";
  inputs.src-qrcode-master.repo = "nim-qrcode";
  inputs.src-qrcode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-qrcode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-qrcode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-qrcode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
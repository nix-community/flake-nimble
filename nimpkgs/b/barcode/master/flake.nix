{
  description = ''Nim barcode library'';
  inputs.src-barcode-master.flake = false;
  inputs.src-barcode-master.type = "github";
  inputs.src-barcode-master.owner = "bunkford";
  inputs.src-barcode-master.repo = "barcode";
  inputs.src-barcode-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-barcode-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-barcode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-barcode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Marc21 parser for Nimlang'';
  inputs.src-NimMarc-master.flake = false;
  inputs.src-NimMarc-master.type = "github";
  inputs.src-NimMarc-master.owner = "rsirres";
  inputs.src-NimMarc-master.repo = "NimMarc";
  inputs.src-NimMarc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-NimMarc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NimMarc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NimMarc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}